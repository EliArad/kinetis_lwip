#ifndef _ALL_ERRORS_
#define _ALL_ERRORS_

#define S_OK  1

typedef enum _TOP_ERRORS
{
	S_ERROR_OPEN_FILE  					=			-10,
	S_ERROR_GET_FILE_STAT				=			-11,
	S_ERROR_FILE_READ					=			-12,
	S_ERROR_OPEN_DIR					=			-13,
	S_ERROR_SHORT_FILE_83_NOT_FOUND	    =			-14

} TOP_ERRORS;

#endif
