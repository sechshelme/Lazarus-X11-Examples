// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/List.h>
#include  <stdio.h>

void hello(Widget w, XtPointer *client, XtPointer call) {
    printf("Hello World\n");
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Arg  wargs[10];

    Widget toplevel, box, command, l;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    command = XtCreateManagedWidget("Hello World !", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, hello, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);



    char *ch[]={"abc","def","ghi","jkl",0};

    l=XtCreateManagedWidget("Liste", listWidgetClass, box, NULL, 0);
    XawListChange(l, ch, 0, 0, True);
    int i = 0;
    XtSetArg(wargs[i], XtNheight, 100); i++;
    XtSetArg(wargs[i], XtNbackground, 0x88FF88); i++;
    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF); i++;
    XtSetValues(l, wargs, i);


    XtRealizeWidget(toplevel);

    XtMainLoop();
}


