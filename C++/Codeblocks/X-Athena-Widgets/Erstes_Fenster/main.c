// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Command.h>

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Widget toplevel, command;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, toplevel, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


