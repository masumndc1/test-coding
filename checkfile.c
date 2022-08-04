#include <stdio.h>

int isValidFile(char* path)
{
	FILE* checker = fopen(path, "r");
    if (checker) {
        fclose(checker);
        return 1;
    }
    else {
        return 0;
    }
}

int 
main(int argc, char **argv) {
    int test=isValidFile(argv[1]);
    if (test) {
        printf("file exists\n");
    }
    else {
        printf("file does not exist\n");
    }
    return 0;
}