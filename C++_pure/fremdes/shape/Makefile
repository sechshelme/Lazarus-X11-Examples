DFLAGS=
DFLAGS=
OFLAGS=


LDFLAGS=-L /usr/X11R6/lib -lX11 -lXext

CFLAGS=$(DFLAGS) $(OFLAGS)


shape:shape.o
	$(CC) -o shape shape.o $(LDFLAGS) $(DFLAGS) $(OFLAGS)
