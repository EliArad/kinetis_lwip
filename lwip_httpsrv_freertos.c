/*
 * Copyright (c) 2001-2003 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */

#include "lwip/opt.h"

#include "httpserver-netconn.h"

#if LWIP_NETCONN
#include <stdio.h>


#include "lwip/netif.h"
#include "lwip/sys.h"
#include "lwip/arch.h"
#include "lwip/api.h"
#include "lwip/tcpip.h"
#include "netif/etharp.h"
#include "./kds/FATFS_Sources/ff.h"
#include "./kds/FATFS_Sources/diskio.h"

#include "ethernetif.h"
#include "board.h"
#include "sd.h"
#include "lfn2sfn.h"
#include <stdlib.h>
#include "dictionary.h"
#include "http_parser.h"

#ifndef HTTPD_DEBUG
#define HTTPD_DEBUG LWIP_DBG_ON
#endif
#ifndef HTTPD_STACKSIZE
#define HTTPD_STACKSIZE 3000
#endif
#ifndef HTTPD_PRIORITY
#define HTTPD_PRIORITY 3
#endif

#include "fsl_device_registers.h"
#include "pin_mux.h"
#include "clock_config.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/

#define EXAMPLE_ENET ENET

/* IP address configuration. */
#define configIP_ADDR0 192
#define configIP_ADDR1 168
#define configIP_ADDR2 15
#define configIP_ADDR3 102

/* Netmask configuration. */
#define configNET_MASK0 255
#define configNET_MASK1 255
#define configNET_MASK2 255
#define configNET_MASK3 0

/* Default gateway address configuration */
#define configGW_ADDR0 192
#define configGW_ADDR1 168
#define configGW_ADDR2 15
#define configGW_ADDR3 100

#define configPHY_ADDRESS 1


/* Task priorities. */
#define hello_task_PRIORITY (configMAX_PRIORITIES - 1)
/*******************************************************************************
 * Prototypes
 ******************************************************************************/
static void hello_task(void *pvParameters);
static void hello_task1(void *pvParameters);



/*******************************************************************************
 * Variables
 ******************************************************************************/

struct netif fsl_netif0;

uint8_t buf[20* 1024];


/*!
 * @brief Serve one HTTP connection accepted in the http thread.
 */
static void http_server_netconn_serve(struct netconn *conn)
{
	struct netbuf *inbuf;
	char *buf;
	u16_t buflen;
	err_t err;
	TOP_ERRORS terr;
	char fileName[500];



	/* Read the data from the port, blocking if nothing yet there. */
	/* We assume the request (the part we care about) is in one netbuf */
	err = netconn_recv(conn, &inbuf);

	if (err == ERR_OK) {
		netbuf_data(inbuf, (void **) &buf, &buflen);


		 if (httpParser(buf, fileName) == 0)
		 {
			 //PRINTF("before sd send file: %s\n\r" , fileName);
			 terr = sd_sendfile(fileName , conn);
			 if (terr != S_OK)
			 {
				 PRINTF("Error sendfile: %d\n\r" , terr);
			 }
		 }

	}
	/* Close the connection (server closes in HTTP) */
	netconn_close(conn);

	/* Delete the buffer (netconn_recv gives us ownership, */
	/* so we have to make sure to deallocate the buffer) */
	netbuf_delete(inbuf);
}



/*!
 * @brief The main function containing server thread.
 */
static void http_server_netconn_thread(void *arg) {
	struct netconn *conn, *newconn;
	err_t err;
	LWIP_UNUSED_ARG(arg);
	netif_set_up(&fsl_netif0);
	/* Create a new TCP connection handle */
	conn = netconn_new(NETCONN_TCP);
	LWIP_ERROR("http_server: invalid conn", (conn != NULL), return;);

	/* Bind to port 80 (HTTP) with default IP address */
	netconn_bind(conn, NULL, 80);

	/* Put the connection into LISTEN state */
	netconn_listen(conn);

	do {
		err = netconn_accept(conn, &newconn);
		if (err == ERR_OK) {
			http_server_netconn_serve(newconn);
			netconn_delete(newconn);
		}
	} while (err == ERR_OK);
	LWIP_DEBUGF(HTTPD_DEBUG,
			("http_server_netconn_thread: netconn_accept received error %d, shutting down", err));
	netconn_close(conn);
	netconn_delete(conn);
}

static void hello_task(void *pvParameters)
{

	//sd_example();
    for (;;)
    {
    	TickType_t xLastWakeTime = xTaskGetTickCount();
        PRINTF("Hello world.\r\n");
        //vTaskSuspend(NULL);
        //vTaskDelayUntil( &xLastWakeTime, 20000);
        vTaskDelay(1000);
    }
}

static void hello_task1(void *pvParameters)
{
    for (;;)
    {
    	TickType_t xLastWakeTime = xTaskGetTickCount();
        PRINTF("Hello world1.\r\n");
        //vTaskSuspend(NULL);
        //vTaskDelayUntil( &xLastWakeTime, 30000);
        vTaskDelay(2000);
    }
}

/*!
 * @brief Initialize the HTTP server.
 */
void http_server_netconn_init() {


	sd_init();
	//PRINTF("Change to FAT Names..");
	//lfn2sfn_install();
	//PRINTF("Done\n\r");

	//sd_printdir("/static/js");



	sys_thread_new("http_server_netconn", http_server_netconn_thread, NULL,
	HTTPD_STACKSIZE, HTTPD_PRIORITY);

	LWIP_DEBUGF(HTTPD_DEBUG,
				("create mag_handler "));

    //xTaskCreate(hello_task, "Hello_task", configMINIMAL_STACK_SIZE, NULL, hello_task_PRIORITY, NULL);
    //xTaskCreate(hello_task1, "Hello_task1", configMINIMAL_STACK_SIZE, NULL, hello_task_PRIORITY, NULL);


	vTaskStartScheduler();
}

/*!
 * @brief Main function.
 */
int main(void) {
	ip_addr_t fsl_netif0_ipaddr, fsl_netif0_netmask, fsl_netif0_gw;
	MPU_Type *base = MPU;
	BOARD_InitPins();
	BOARD_InitPinsSDCard();
	BOARD_BootClockRUN();
	BOARD_InitDebugConsole();
	/* Disable MPU. */
	base->CESR &= ~MPU_CESR_VLD_MASK;

	LWIP_DEBUGF(HTTPD_DEBUG, ("TCP/IP initializing...\r\n"));
	tcpip_init(NULL, NULL);
	LWIP_DEBUGF(HTTPD_DEBUG, ("TCP/IP initialized.\r\n"));
	IP4_ADDR(&fsl_netif0_ipaddr, configIP_ADDR0, configIP_ADDR1, configIP_ADDR2,
			configIP_ADDR3);
	LWIP_DEBUGF(HTTPD_DEBUG,
			("TCP/IP initialized. %d.%d.%d.%d\r\n" , configIP_ADDR0, configIP_ADDR1, configIP_ADDR2, configIP_ADDR3));
	IP4_ADDR(&fsl_netif0_netmask, configNET_MASK0, configNET_MASK1,
			configNET_MASK2, configNET_MASK3);
	LWIP_DEBUGF(HTTPD_DEBUG, ("TCP/IP initialized.\r\n"));
	IP4_ADDR(&fsl_netif0_gw, configGW_ADDR0, configGW_ADDR1, configGW_ADDR2,
			configGW_ADDR3);

	netif_add(&fsl_netif0, &fsl_netif0_ipaddr, &fsl_netif0_netmask,
			&fsl_netif0_gw, NULL, ethernetif_init, tcpip_input);
	netif_set_default(&fsl_netif0);

	LWIP_PLATFORM_DIAG(
			("\r\n************************************************"));
	LWIP_PLATFORM_DIAG((" HTTP Server example"));
	LWIP_PLATFORM_DIAG(("************************************************"));
	LWIP_PLATFORM_DIAG(
			(" IPv4 Address     : %u.%u.%u.%u", ((u8_t *)&fsl_netif0_ipaddr)[0], ((u8_t *)&fsl_netif0_ipaddr)[1], ((u8_t *)&fsl_netif0_ipaddr)[2], ((u8_t *)&fsl_netif0_ipaddr)[3]));
	LWIP_PLATFORM_DIAG(
			(" IPv4 Subnet mask : %u.%u.%u.%u", ((u8_t *)&fsl_netif0_netmask)[0], ((u8_t *)&fsl_netif0_netmask)[1], ((u8_t *)&fsl_netif0_netmask)[2], ((u8_t *)&fsl_netif0_netmask)[3]));
	LWIP_PLATFORM_DIAG(
			(" IPv4 Gateway     : %u.%u.%u.%u", ((u8_t *)&fsl_netif0_gw)[0], ((u8_t *)&fsl_netif0_gw)[1], ((u8_t *)&fsl_netif0_gw)[2], ((u8_t *)&fsl_netif0_gw)[3]));
	LWIP_PLATFORM_DIAG(("************************************************"));

	http_server_netconn_init();
	/* should not reach this statement */
	for (;;)
		;
}

#endif /* LWIP_NETCONN */
