 /*******************************************************************
   *
   *                         menu1
   *
   *  This simple program shows how menus widgets are used,m
   *  this example program uses a menu bar for the menus.  This
   *  is the easiest way to set up an Athena menu.
   *
   *****************************************************************/
  #include  <X11/StringDefs.h>
  #include  <X11/Intrinsic.h>
  #include  <X11/Xaw/Form.h>
  #include  <X11/Xaw/SimpleMenu.h>
  #include  <X11/Xaw/SmeBSB.h>
  #include  <X11/Xaw/MenuButton.h>
  #include  <X11/Xaw/SmeLine.h>


  void quit_callback(w, client, call)
  Widget w;
  XtPointer client;
  XtPointer call; {

       exit(0);

  }


  void print_string(w, client, call)
  Widget w;
  char *client;
  XtPointer call; {

       printf("%s\n",client);

  }

  main(argc,argv)
  int argc;
  char **argv; {
       Widget toplevel;
       Widget form;
       Widget quit;
       Widget button1;
       Widget button2;
       Widget button3;
       Widget menu1;
       Widget menu2;
       Widget menu3;
       Widget line1;
       Widget line2;
       Widget entry;
       int n;
       Arg wargs[10];



       toplevel = XtInitialize(argv[0],"menu",NULL,0,
		 &argc,argv);

       form = XtCreateManagedWidget("form", formWidgetClass,
		 toplevel, NULL, 0);

       button1 = XtCreateManagedWidget("button1", menuButtonWidgetClass,
		 form, NULL, 0);

       n = 0;
       XtSetArg(wargs[n], XtNmenuName, "menu1"); n++;
       XtSetValues(button1, wargs, n);

       button2 = XtCreateManagedWidget("button2", menuButtonWidgetClass,
		 form, NULL, 0);

       n = 0;
       XtSetArg(wargs[n], XtNfromHoriz, button1); n++;
       XtSetArg(wargs[n], XtNmenuName, "menu2"); n++;
       XtSetValues(button2, wargs, n);

       button3 = XtCreateManagedWidget("button3", menuButtonWidgetClass,
		 form, NULL, 0);

       n = 0;
       XtSetArg(wargs[n], XtNfromHoriz, button2); n++;
       XtSetArg(wargs[n], XtNmenuName, "menu3"); n++;
       XtSetValues(button3, wargs, n);

       /*
	*  create the first pull down menu
	*/

       menu1 = XtCreatePopupShell("menu1", simpleMenuWidgetClass,
		 button1, NULL, 0);

       entry = XtCreateManagedWidget("one", smeBSBObjectClass,
		 menu1, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "one");

       entry = XtCreateManagedWidget("two", smeBSBObjectClass,
		 menu1, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "two");

       entry = XtCreateManagedWidget("three", smeBSBObjectClass,
		 menu1, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "three");

       line1 = XtCreateManagedWidget("line1", smeLineObjectClass,
		 menu1, NULL, 0);

       quit = XtCreateManagedWidget("quit", smeBSBObjectClass,
		 menu1, NULL, 0);

       XtAddCallback(quit, XtNcallback, quit_callback, NULL);

       /*
	*  create the second pull down menu
	*/

       n = 0;
       XtSetArg(wargs[n], XtNlabel, "menu label"); n++;

       menu2 = XtCreatePopupShell("menu2", simpleMenuWidgetClass,
		 button2, wargs, n);

       line2 = XtCreateManagedWidget("line2", smeLineObjectClass,
		 menu2, NULL, 0);

       quit = XtCreateManagedWidget("quit", smeBSBObjectClass,
		 menu2, NULL, 0);

       XtAddCallback(quit, XtNcallback, quit_callback, NULL);

       /*
	*  create the third pull down menu
	*/

       menu3 = XtCreatePopupShell("menu3", simpleMenuWidgetClass,
		 button3, NULL, 0);

       entry = XtCreateManagedWidget("four", smeBSBObjectClass,
		 menu3, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "four");

       entry = XtCreateManagedWidget("five", smeBSBObjectClass,
		 menu3, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "five");

       entry = XtCreateManagedWidget("six", smeBSBObjectClass,
		 menu3, NULL, 0);

       XtAddCallback(entry, XtNcallback, print_string, "six");

       quit = XtCreateManagedWidget("quit", smeBSBObjectClass,
		 menu3, NULL, 0);

       XtAddCallback(quit, XtNcallback, quit_callback, NULL);

       XtRealizeWidget(toplevel);

       XtMainLoop();

  }
