#include "lwip/api.h"
#include "ethernetif.h"
#include "board.h"
#include "./kds/FATFS_Sources/ff.h"
#include "./kds/FATFS_Sources/diskio.h"
#include "sd.h"
#include "allerrors.h"
#include "fsl_debug_console.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "utils.h"
#include "dictionary.h"
#include "lfn2sfn.h"
#include "stristr.h"


/* buffer size (in byte) for read/write operations */
#define BUFFER_SIZE (4096U)



static FATFS g_fileSystem; /* File system object */
static FIL g_fileObject;   /* File object */


const static char http_html_hdr[] =
		"HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n";

const static char http_html_css_hdr[] =
		"HTTP/1.1 200 OK\r\nContent-Type: text/css\r\n\r\n";




TOP_ERRORS sd_init()
{
	FRESULT error;
	const TCHAR driverNumberBuffer[3U] = {SDDISK + '0', ':', '/'};

	PRINTF("\r\nFATFS example to demonstrate how to use FATFS with SD card.\r\n");

	PRINTF("\r\nPlease insert a card into board.\r\n");
	/* Wait the card to be inserted. */
	#if defined BOARD_SDHC_CD_LOGIC_RISING
	while (!(GPIO_ReadPinInput(BOARD_SDHC_CD_GPIO_BASE, BOARD_SDHC_CD_GPIO_PIN)))
	{
	}
	#else
	while (GPIO_ReadPinInput(BOARD_SDHC_CD_GPIO_BASE, BOARD_SDHC_CD_GPIO_PIN))
	{
	}
	#endif
	PRINTF("Detected SD card inserted.\r\n");
	/* Delat some time to make card stable. */
	delay(1000U);

	if (f_mount(&g_fileSystem, driverNumberBuffer, 0U))
	{
		PRINTF("Mount volume failed.\r\n");
		return -1;
	}

	#if (_FS_RPATH >= 2U)
	error = f_chdrive((char const *)&driverNumberBuffer[0U]);
	if (error)
	{
		PRINTF("Change drive failed.\r\n");
		return -1;
	}
	#endif


	return S_OK;
}

char *basename(char  *path)
{
	char *s = strrchr(path, '/');
	if (s == NULL) {
		return strdup(path);
	}
	else {
		return strdup(s + 1);
	}
}

TOP_ERRORS sd_sendfile(char *fileName, struct netconn *conn)
{
	err_t t_error;
	FILINFO fno;
	FRESULT error;
	UINT bytesRead;
	char fileToSend[200];
	DWORD fileSize = 0;
	uint8_t bufferRead[BUFFER_SIZE];
	int chunk;

	char urlFileName[400];
	char shortName[400];
	char nameOnly[400];

	strcpy(urlFileName , fileName);
	int fstrlen = strlen(fileName);
	char *p3 = fileName + strlen(fileName) - 1;
	int found = 0;
	while (fstrlen > 0)
	{
		if (*p3 == '/')
		{
			found = true;
			strcpy(nameOnly, p3 + 1);
			break;
		}
		p3--;
		fstrlen--;
	}
	if (found == 0)
		strcpy(nameOnly , fileName);


	//PRINTF("File nameOnly: %s\r\n" , nameOnly);

	getShortName(nameOnly, shortName);


	//PRINTF("pShortFileName: %s\r\n" ,shortName);

	// return the directory only
	char *p2 = fileName + strlen(fileName) - 1;
	fstrlen = strlen(fileName);
	found = 0;
	while (fstrlen > 0)
	{
		if (*p2 == '/')
		{
			*p2 = 0;
			found = 1;
			break;
		}
		p2--;
		fstrlen--;

	}
	//PRINTF("fileName here: %s\n\r"  , fileName);
	if (found == 1)
		sprintf(fileToSend, "/%s/%s", fileName, shortName);
	else
		sprintf(fileToSend, "/%s", shortName);

	error = f_open(&g_fileObject, _T(fileToSend), FA_READ);

	//PRINTF("File to send: %s\r\n" , fileToSend);
	if (error != FR_OK)
	{
		PRINTF("File to send: %s\r\n" , urlFileName);
		return S_ERROR_OPEN_FILE;
	}

	error = f_stat (fileToSend,	&fno);
	if (error != FR_OK)
	{
		PRINTF("File to send: %s\r\n" , urlFileName);
		return S_ERROR_GET_FILE_STAT;
	}
	//PRINTF("File size: %d\n\r" , fno.fsize);


	/* Send the HTML header */
	/* subtract 1 from the size, since we dont send the \0 in the string */
	/* NETCONN_NOCOPY: our data is const static, so no need to copy it */
	if (stristr(urlFileName, ".css") == NULL)
	{
		netconn_write(conn, http_html_hdr, sizeof(http_html_hdr) - 1, NETCONN_NOCOPY);
	} else {
		netconn_write(conn, http_html_css_hdr, sizeof(http_html_css_hdr) - 1, NETCONN_NOCOPY);
	}

	fileSize = fno.fsize;
	while (fileSize)
	{
		chunk = MIN(fileSize, BUFFER_SIZE);
		error = f_read(&g_fileObject, bufferRead, chunk, &bytesRead);

		if ((error) || (bytesRead != chunk))
		{
			return S_ERROR_FILE_READ;
		}

		t_error = netconn_write(conn, bufferRead, bytesRead,NETCONN_COPY);

		if (t_error != ERR_OK)
		{
			PRINTF("netconn_write error!!!\n\r");
		}
		fileSize -= bytesRead;
	}
    //PRINTF("SEND COMPLETE: %s\n\r" , fileToSend);

	return S_OK;
}

TOP_ERRORS sd_printdir(char *dirname)
{
	FRESULT error;
	DIR directory;
	FILINFO fileInformation;

	if (f_opendir(&directory, dirname))
	{
		PRINTF("Open directory failed.\r\n");
		return S_ERROR_OPEN_DIR;
	}

	for (;;)
	{
		error = f_readdir(&directory, &fileInformation);

		/* To the end. */
		if ((error != FR_OK) || (fileInformation.fname[0U] == 0U))
		{
			break;
		}
		if (fileInformation.fname[0] == '.')
		{
			continue;
		}
		if (fileInformation.fattrib & AM_DIR)
		{
			PRINTF("Directory file : %s.\r\n", fileInformation.fname);
		}
		else
		{
			PRINTF("General file : %s.\r\n", fileInformation.fname);
		}
	}
	return S_OK;
}

