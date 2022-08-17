checkmake: checkfile.c
	swig -lua example.i -o example_wrap.c
	gcc -I/usr/include/lua5.3 -c example_wrap.c -o example_wrap.o
	gcc -c example.c -o example.o
	gcc -I/usr/include/lua5.3 -L/usr/lib/lua example_wrap.o example.o -o masum
