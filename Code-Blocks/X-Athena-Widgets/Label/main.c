// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/Label.h>
#include  <stdio.h>

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Widget toplevel, box, command, label;
    Arg  wargs[10];

  Arg args[] = {
    {XtNheight, 100},
    {XtNwidth, 200},
    {XtNx, 200},
    {XtNlabel, "Label"},
    {XtNborderWidth, 0},
    {XtNbackground, 0x888888},
  };


    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    label = XtCreateManagedWidget("Meine Knöpfe", labelWidgetClass, box, NULL, 0);
//    XtSetArg(wargs[0], XtNlabel,"World");
    //XtSetArg(wargs[1], XtNbackground, 0x888888);
    //XtSetArg(wargs[2], XtNresize, 0x888888);
    XtSetValues(label,args, XtNumber(args));

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


