%module example
%{ 
#include "checkfile.h"
%}
int isValidFile(char* path);
