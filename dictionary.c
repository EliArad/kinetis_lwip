
#include <string.h>
#include <stdlib.h>
#include "dictionary.h"
#include "fsl_debug_console.h"


static struct nlist *hashtab[HASHSIZE]; /* pointer table */

/* hash: form hash value for string s */
unsigned hash(char *s)
{
	unsigned hashval;
	for (hashval = 0; *s != '\0'; s++)
		hashval = *s + 31 * hashval;
	return hashval % HASHSIZE;
}

/* lookup: look for s in hashtab */
nlist *lookup(char *s)
{
	nlist *np;
	for (np = hashtab[hash(s)]; np != NULL; np = np->next)
		if (strcmp(s, np->name) == 0)
			return np; /* found */
	return NULL; /* not found */
}


/* install: put (name, defn) in hashtab */
nlist *install(char *name, char *defn)
{
	nlist *np;
	unsigned hashval;
	if ((np = lookup(name)) == NULL) { /* not found */
		np = (nlist *) pvPortMalloc(sizeof(*np));
		if (np == NULL || (np->name = strdup(name)) == NULL)
		{
			PRINTF("install failed #1 %s\n\r", name);
			return NULL;
		}
		hashval = hash(name);
		np->next = hashtab[hashval];
		hashtab[hashval] = np;
	}
	else { /* already there */
		PRINTF("np->defn = %s\n\r" , np->defn);
		vPortFree((void *)np->defn); /*free previous defn */
	}
	if ((np->defn = strdup(defn)) == NULL)
	{
		PRINTF("install failed #2 %s\n\r", name);
		return NULL;
	}
	return np;
}


