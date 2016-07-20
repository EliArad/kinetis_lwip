#ifndef _DICTIONARY_HEADER_FILE
#define _DICTIONARY_HEADER_FILE


typedef struct nlist { /* table entry: */
	struct nlist *next; /* next entry in chain */
	char *name; /* defined name */
	char *defn; /* replacement text */
} nlist;

#define HASHSIZE 512

nlist *lookup(char *s);
nlist *install(char *name, char *defn);

#endif
