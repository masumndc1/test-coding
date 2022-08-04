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

static int isValidFile (lua_State *L) {
    double arg = luaL_checknumber (L, 1);
    lua_pushnumber(L, isValidFile(char* path);
    return 1;
}

//library to be registered
static const struct luaL_Reg mylib [] = {
      {"isValidFile", isValidFile} /* names can be different */
      {NULL, NULL}                 /* sentinel */
};

//name of this function is not flexible
int luaopen_mylib (lua_State *L){
    luaL_newlib(L, mylib);
    return 1;
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