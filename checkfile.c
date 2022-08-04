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
    int test=isValidFile(argv[1])
    if(test) {
        print("file exists")
    }
    else {
        print("file does not exist")
    }
}