/*****************************************************
   *
   *                simple.c
   *
   *  A very simple X program that uses the Athena
   *  widgets
   *
   ****************************************************/

  #include  <X11/StringDefs.h>
  #include  <X11/Intrinsic.h>
  #include  <X11/Xaw/Box.h>
  #include  <X11/Xaw/Command.h>
  #include  <stdio.h>

  // https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

  char *names[] = {
       "button1",
       "button2",
       "buttonbn3",
       "button4",
       "button5",
       "test",
       0
  };


  int values[] = {
       1,
       2,
       3,
       4,
       5,
       16
  };


  main(argc,argv)
  int argc;
  char **argv; {
       Widget toplevel;
       Widget box;
       Widget command;
       void quit();
       void hello();
       void bprint();
       Arg  wargs[10];
       int  n;
       Widget    buttons[20];
       int  nbuttons;

       char * s='123456';

       toplevel = XtInitialize(argv[0],"simple",NULL, 0, &argc, argv);

       box = XtCreateManagedWidget("box",boxWidgetClass, toplevel, NULL, 0);

       n = 0;
       XtSetArg(wargs[n],XtNorientation,XtorientVertical); n++;
       XtSetArg(wargs[n],XtNvSpace,10); n++;
       XtSetValues(box,wargs,n);

       command = XtCreateManagedWidget("hello", commandWidgetClass, box, NULL, 0);
       XtAddCallback(command,XtNcallback,hello, NULL);

       command = XtCreateManagedWidget("quit", commandWidgetClass, box, NULL, 0);
       XtAddCallback(command,XtNcallback,quit, NULL);

       nbuttons = 0;
       while(names[nbuttons] != 0) {
	    buttons[nbuttons] = XtCreateWidget(names[nbuttons], commandWidgetClass, box, NULL, 0);

	    XtAddCallback(buttons[nbuttons],XtNcallback,bprint,  &values[nbuttons]);

	    nbuttons++;
       }

   XtManageChildren(buttons,nbuttons);

       XtRealizeWidget(toplevel);

       XtMainLoop();

  }


  void hello(w,client,call)
  Widget w;
  XtPointer client;
  XtPointer call; {
  printf("hello\n");

  }

  void quit(w,client,call)
  Widget w;
  XtPointer client;
  XtPointer call; {
       exit(0);
  }


  bprint(w,client,call)
  Widget w;
  int  *client;
  XtPointer call; {

       printf("button %d\n",*client);
  }
