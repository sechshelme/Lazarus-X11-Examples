  #include  <X11/StringDefs.h>
  #include  <X11/Intrinsic.h>
  #include  <X11/Core.h>
  #include  <X11/Xaw/Box.h>
  //#include "../lib/lib.h"


  void redisplay_event(w, client, ev)
  Widget w;
  XtPointer client;
  XExposeEvent *ev; {

       if(ev->count != 0)
	    return;

       XClearWindow(XtDisplay(w),XtWindow(w));

       draw_graphics(w);

  }


  main(argc,argv)
  int argc;
  char **argv; {
       Widget toplevel;
       Widget box;
       Widget drawing;
       Widget quit;
       int n;
       Arg wargs[10];

       toplevel = XtInitialize(argv[0],"drawing", NULL, 0,
		      &argc, argv);

       box = XtCreateManagedWidget("box", boxWidgetClass,
		 toplevel, NULL, 0);

       quit = quit_button(box);

       drawing = XtCreateManagedWidget("drawing",coreWidgetClass,
		 box, NULL, 0);

       n = 0;
       XtSetArg(wargs[n], XtNheight, 300); n++;
       XtSetArg(wargs[n], XtNwidth, 300); n++;
       XtSetValues(drawing, wargs, n);

       XtAddEventHandler(drawing, ExposureMask, FALSE,
		 redisplay_event, NULL);

       XtRealizeWidget(toplevel);

       XtMainLoop();

  }


  draw_graphics(w)
  Widget w; {
       Display *display;
       Drawable window;
       GC gc;


       display = XtDisplay(w);
       window = XtWindow(w);

       gc = XCreateGC(display, window, NULL, NULL);
       XSetForeground(display, gc, 1);
       XSetBackground(display, gc, 0);

       XDrawLine(display, window, gc, 10, 10, 100, 100);

       XDrawRectangle(display, window, gc, 75, 110, 150, 100);

       XDrawArc(display, window, gc, 75, 110, 150, 100, 45*64, 120*64);

       XFreeGC(display, gc);

  }
