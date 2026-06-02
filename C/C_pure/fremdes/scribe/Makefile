DFLAGS=
DFLAGS=-g -ggdb -Wall
OFLAGS=-O3 -mmmx -msse
OFLAGS=


LDFLAGS=-L/usr/X11R6/lib -L$(HOME)/usr/arch/Linux/lib -lX11 -lXext -lXtst -lm -lstroke $(OFLAGS) $(DFLAGS)
IFLAGS=-I$(HOME)/usr/include 

CFLAGS=$(DFLAGS) $(OFLAGS) $(IFLAGS)
CXXFLAGS=$(DFLAGS) $(OFLAGS) $(IFLAGS)

G=scribe

CC=gcc
CXX=g++


$G:$G.o
	$(CXX) -o $G $G.o $(LDFLAGS) $(DFLAGS) $(OFLAGS)

run: $G
	./$G

clean:
	rm *.o
