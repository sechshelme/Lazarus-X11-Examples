DFLAGS=-g -ggdb -Wall
DFLAGS=

OFLAGS=
OFLAGS=-O


LDFLAGS=-L/usr/X11R6/lib -lX11 -lm $(DFLAGS)

CFLAGS=$(DFLAGS) $(OFLAGS) -Wall

G=mousealert

CC=gcc
CXX=g++

$G:$G.o
	$(CC) -o $G $G.o $(LDFLAGS) $(DFLAGS) $(OFLAGS)
