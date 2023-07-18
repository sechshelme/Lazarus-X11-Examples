
prog=greasymouse

CC =gcc 

CFLAGS = -ansi -pedantic -Wall

LIB_PATH=-L/usr/X11/lib 
LIBS=-lX11

$(prog): $(prog).c
	$(CC) $(prog).c -o $(prog) $(CFLAGS) $(LIB_PATH) $(LIBS)


