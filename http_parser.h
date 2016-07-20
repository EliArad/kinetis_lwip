#ifndef _HTTP_PARSER_HEADER_
#define _HTTP_PARSER_HEADER_


typedef enum
{
	EV_WEB_URI_PREFIX_USER,
	EV_WEB_URI_PREFIX_DIAG,
	EV_WEB_URI_PREFIX_UTIL,
	EV_WEB_URI_PREFIX_TOPAZ,
	EV_WEB_URI_PREFIX_ELI_USER,
	EV_WEB_URI_PREFIX_LAST,
} WEB_URI_PREFIX;



typedef enum {
	EV_GET,
	EV_POST,
	EV_PUT,
	EV_DELETE,
	EV_PATCH,
	EV_UNKNOWN
} HTTPRequestMethods;


int httpParser(char *buf, char *resUrl);


#endif