
#include "lwip/opt.h"
#include "httpserver-netconn.h"
#include <stdio.h>
#include "lwip/netif.h"
#include "lwip/sys.h"
#include "lwip/arch.h"
#include "lwip/api.h"
#include "lwip/tcpip.h"
#include "netif/etharp.h"
#include "ethernetif.h"
#include "board.h"
#include <stdlib.h>
#include "http_parser.h"
#include <ctype.h>

void handleTopazApi(char *pUrl)
{

}
void handleTopazDiagApi(char *pUrl)
{

}
char *trimwhitespace(char *str)
{
	char *end;

	// Trim leading space
	while (isspace(*str)) str++;

	if (*str == 0)  // All spaces?
		return str;

	// Trim trailing space
	end = str + strlen(str) - 1;
	while (end > str && isspace(*end)) end--;

	// Write new null terminator
	*(end + 1) = 0;

	return str;
}

static HTTPRequestMethods  GetHttpMethod(uint8_t *uri)
{
	uint8_t httpGET[] = { 'G', 'E', 'T', ' ', '//' };
	uint8_t httpPOST[] = { 'P', 'O', 'S', 'T', '//' };
	uint8_t httpPUT[] = { 'P', 'U', 'T', ' ', '//' };
	uint8_t httpDELETE[] = { 'D', 'E', 'L', ' ', '//' };

	switch (uri[1])
	{
		case 'E':
		{
			if (memcmp(uri , httpGET, sizeof(httpGET)) == 0)
				return EV_GET;
			else
			if (memcmp(uri, httpDELETE,sizeof(httpDELETE)) == 0)
				return EV_GET;
		}
		break;
		case 'P':
		{
			if (memcmp(uri, httpPOST, sizeof(httpPOST)) == 0)
				return EV_POST;
		}
		break;
		case 'U':
		{
			if (memcmp(uri, httpPUT, sizeof(httpPUT)) == 0)
				return EV_PUT;
		}
		break;
	}
	return EV_UNKNOWN;
}
static void GetHost(uint8_t *buf, char *hostName)
{
	char *p = strstr((char *)buf, "Host:");
	if (p != NULL)
	{
		memcpy(hostName, p + 5, 15);
		hostName[15] = 0;
	}
}

static int GetApiCommand(const char *pStr)
{
	if (strstr(pStr, "/user") != NULL)
	{
		return EV_WEB_URI_PREFIX_ELI_USER;
	}
	if (strstr(pStr, "/api/topaz") != NULL)
	{
		return EV_WEB_URI_PREFIX_TOPAZ;
	}
	if (strstr(pStr, "/api/diag/topaz") != NULL)
	{
		return EV_WEB_URI_PREFIX_DIAG;
	}
	else {
		return -1;
	}
}
static int get_var(char *pUrl, int urlStringSize, char *variableName, char *data, int dataBufSize)
{

	char * pch;
	char  _pch[100];
	char *p;
	char lvar[100];
	sprintf(lvar, "%s=", variableName);

	if (urlStringSize > 1000)
		return -1;

	char temp[1000];
	strcpy(temp, pUrl);

	pch = strtok(temp, "&");
	while (pch != NULL)
	{
		printf("%s\n", pch);
		if (strchr(pch, '=') != NULL)
		{
			strcpy(_pch, pch);
			char *p1 = strchr(_pch, '=');
			*(p1+1) = 0;
		}
		else {
			return -1;
		}
		if (strcmp(_pch, lvar) == 0)
		{
			p = strtok(pch, "=");
			// this is the value we need:
			p = strtok(NULL, "=");
			strcpy(data, p);
			return 1;
		}
		pch = strtok(NULL, "&");
	}
	return 0;
}
static int handleUser(char *pUrl)
{
	char aux[100];
	int slen = strlen(pUrl);
	char *p = strstr(pUrl, "?");
	p = trimwhitespace(p);
	if (p != NULL)
	{
		p++;
		int res = get_var(p, slen, "a", aux, sizeof(aux));
		if (res != 1)
			return res;
		res = get_var(p, slen, "d", aux, sizeof(aux));
		if (res != 1)
			return res;

		return 1;
	}
	else {
		return -1;
	}
}
int httpParser(char *buf, char *fileName)
{
	char hostName[100];
	HTTPRequestMethods method = GetHttpMethod(buf);
	GetHost(buf, hostName);
	//PRINTF("hostname: %s\n\r" , hostName);
	//PRINTF("method: %d\n",method);
	char url[1000];
	strcpy(url, (char *)(buf + 4));
	char *p = strstr(url, "HTTP/1.1");
	if (p != NULL)
	{
		*p = 0;
	}
	char *pUrl = trimwhitespace(url);
	//PRINTF("pUrl = %s\n\r" , pUrl);

	switch (GetApiCommand(pUrl))
	{
		case EV_WEB_URI_PREFIX_ELI_USER:
			handleUser(pUrl);
		return 1;
		case EV_WEB_URI_PREFIX_TOPAZ:
			handleTopazApi(pUrl);
		return 1;
		case EV_WEB_URI_PREFIX_DIAG:
			handleTopazDiagApi(pUrl);
		return 1;
		default:
		{
			//PRINTF("got uri %s", pUrl);
			if (strcmp(pUrl , "/") == 0)
			{
				strcpy(fileName, "index.html");
			} else {
			   strcpy(fileName, pUrl + 1);
			}
			//PRINTF("FILE NAME : %s\n\r" , fileName);
			return 0;
		}
	}
	return -1;
}


