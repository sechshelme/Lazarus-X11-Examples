// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

/**********************************************************
   *
   *                     rtest.c
   *
   *  Test program for the radio box
   *
   *********************************************************/

  #include  <X11/StringDefs.h>
  #include  <X11/Intrinsic.h>
  #include  <X11/Xaw/Box.h>
  #include  <X11/Xaw/Command.h>
//  #include "lib.h"
  #include "rbox.c"

  char *names[] = {
       "value 1",
       "value 2",
       "value 3",
       "value 2",
       "value 3",
       "value 4",
       "value 5",
       0
  };

  int var;

void var_print(Widget w, XtPointer client, XtPointer call) {
     printf("var: %d\n",var);
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

main(int argc, char **argv) {
    Widget toplevel, box, buttons, quit, print;

    toplevel = XtInitialize(argv[0], "rtest",NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("main", boxWidgetClass, toplevel, NULL, 0);

    buttons = radio_box(box, names, &var, 1);

    print = XtCreateManagedWidget("print", commandWidgetClass, box, NULL, 0);
    XtAddCallback(print, XtNcallback, var_print, NULL);

    print = XtCreateManagedWidget("quit", commandWidgetClass, box, NULL, 0);
    XtAddCallback(print, XtNcallback, quit, NULL);

    XtRealizeWidget(toplevel);

    XtMainLoop();
  }
