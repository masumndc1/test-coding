#include <stdio.h>

int isValidFile(char* path)
{
	FILE* checker = fopen(path, "r");
    if (checker)
    {
    	fclose(checker);
        return 1;
    }
    else
    {
    	return 0;
    }
}