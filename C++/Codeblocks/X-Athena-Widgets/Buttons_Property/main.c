// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <stdio.h>

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Widget toplevel, box, command;
    Arg  wargs[10];


    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command,XtNcallback,hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    int i = 0;
    XtSetArg(wargs[i], XtNwidth, 320);
    i++;

    XtSetArg(wargs[i], XtNheight, 200);
    i++;

//    XtSetArg(wargs[i], XtNlabel, "Click = Quit");
//    i++;

    XtSetArg(wargs[i], XtNbackground, 0xFF);
    i++;

    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF);
    i++;

    XtSetValues(command, wargs, i);


    XtRealizeWidget(toplevel);

    XtMainLoop();
}


