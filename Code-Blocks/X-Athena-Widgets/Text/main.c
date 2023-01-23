#include  <X11/StringDefs.h>
  #include  <X11/Intrinsic.h>
  #include  <X11/Xaw/Form.h>
  #include  <X11/Xaw/AsciiText.h>
 // #include "../lib/lib.h"

  main(argc,argv)
  int argc;
  char **argv; {
       Widget toplevel;
       Widget form;
       Widget quit;
       Widget text;
       int n;
       Arg wargs[10];

       toplevel = XtInitialize(argv[0],"text",NULL,0,
		 &argc,argv);

       if(argc != 2) {
	    printf("usage: text1 [ x options ] filename\n");
	//    exit(1);
       }

       form = XtCreateManagedWidget("form", formWidgetClass,
		 toplevel, NULL, 0);

      // quit = quit_button(form);

       n = 0;
       XtSetArg(wargs[n], XtNfromVert, quit); n++;
       XtSetArg(wargs[n], XtNtype, XawAsciiString); n++;
  //     XtSetArg(wargs[n], XtNstring, argv[1]); n++;
       XtSetArg(wargs[n], XtNstring, "nn/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/Code-Blocks/X-Athena-Widgets/Text/xt_Xaw_test.cbp"); n++;
       XtSetArg(wargs[n], XtNwidth, 400); n++;
       XtSetArg(wargs[n], XtNheight, 500); n++;
       XtSetArg(wargs[n], XtNscrollHorizontal, XawtextScrollWhenNeeded); n++;
       XtSetArg(wargs[n], XtNscrollVertical, XawtextScrollAlways); n++;

       text = XtCreateManagedWidget("text", asciiTextWidgetClass,
		 form, wargs, n);

       XtRealizeWidget(toplevel);

       XtMainLoop();

  }
