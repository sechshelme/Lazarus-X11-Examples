// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Command.h>

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Widget toplevel, command;
    Arg  wargs[10];

    toplevel = XtInitialize(argv[0], "simple", NULL, 0, &argc, argv);

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, toplevel, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    int i = 0;
    XtSetArg(wargs[i], XtNwidth, 320);
    i++;

    XtSetArg(wargs[i], XtNheight, 200);
    i++;

    XtSetArg(wargs[i], XtNlabel, "Click = Quit");
    i++;

    XtSetArg(wargs[i], XtNbackground, 0xFF);
    i++;

    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF);
    i++;

    XtSetValues(command, wargs, i);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}
