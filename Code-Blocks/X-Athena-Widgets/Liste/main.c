// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Command.h>
#include  <X11/Xaw/List.h>
#include  <stdio.h>

Widget listl;

void set3(Widget w, XtPointer *client, XtPointer call) {
  XawListHighlight(listl, 3);
}

void clear(Widget w, XtPointer *client, XtPointer call) {
  XawListUnhighlight(listl);
}

void viewList(Widget w, XtPointer *client, XtPointer call) {
    XawListReturnStruct *info = XawListShowCurrent(listl);
    printf("Index: %i   Text: %s\n",info->list_index, info->string);
}

void quit(Widget w, XtPointer *client, XtPointer call) {
    exit(0);
}

int main(int argc, char **argv) {
    Arg  wargs[10];

    Widget toplevel, box, command;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    command = XtCreateManagedWidget("Set 3", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, set3, NULL);

    command = XtCreateManagedWidget("Liste", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, viewList, NULL);

    command = XtCreateManagedWidget("Clear", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, clear, NULL);

    command = XtCreateManagedWidget("Programm beenden", commandWidgetClass, box, NULL, 0);
    XtAddCallback(command, XtNcallback, quit, NULL);



    char *ch[]={"abc","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","Ich bin ein sehr langer Text",0};

    listl = XtCreateManagedWidget("Liste", listWidgetClass, box, NULL, 0);
    XawListChange(listl, ch, 0, 50, True);
    int i = 0;
    XtSetArg(wargs[i], XtNheight,50); i++;
    XtSetArg(wargs[i], XtNbackground, 0x88FF88); i++;
    XtSetArg(wargs[i], XtNforeground, 0xFFFFFF); i++;
    XtSetValues(listl, wargs, i);


    XtRealizeWidget(toplevel);

    XtMainLoop();
}


