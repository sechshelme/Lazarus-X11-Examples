// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/Label.h>
#include  <stdio.h>

 main(argc,argv)
  int argc;
  char **argv; {
       Widget toplevel;
       Widget box;
       Widget command;
       Widget label;
       void quit();
       Arg  wargs[10];
       int  n;

       toplevel = XtInitialize(argv[0],"simple",NULL, 0,
		 &argc, argv);

       box = XtCreateManagedWidget("box",boxWidgetClass,
		 toplevel, NULL, 0);

       n = 0;
       XtSetArg(wargs[n],XtNorientation,XtorientVertical); n++;
       XtSetArg(wargs[n],XtNvSpace,10); n++;
       XtSetValues(box,wargs,n);

       label = XtCreateManagedWidget("label",
		 labelWidgetClass, box, NULL, 0);

       n = 0;
       XtSetArg(wargs[n],XtNlabel,"Hello World"); n++;
       XtSetValues(label,wargs,n);

       command = XtCreateManagedWidget("command",
		 commandWidgetClass, box, NULL, 0);

       n = 0;
       XtSetArg(wargs[n],XtNlabel,"press and die"); n++;
       XtSetValues(command,wargs,n);

       XtAddCallback(command,XtNcallback,quit, NULL);

       XtRealizeWidget(toplevel);

       XtMainLoop();

  }


  void quit(w,client,call)
  Widget w;
  XtPointer client;
  XtPointer call; {

       exit(0);

  }
