checkmake: checkfile.c
        #gcc -o checkfile checkfile.c -I .
        gcc checkfile.c -shared -o mylib.so -fPIC  -llua
