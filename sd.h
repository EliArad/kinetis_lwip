#ifndef __SD_HEADER_FILE
#define __SD_HEADER_FILE
#include "allerrors.h"

TOP_ERRORS sd_init();
TOP_ERRORS sd_sendfile(char *fileName, struct netconn *conn);
TOP_ERRORS sd_printdir();


#endif
