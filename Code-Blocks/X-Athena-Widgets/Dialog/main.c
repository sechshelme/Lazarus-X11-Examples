// https://ergodic.ugr.es/cphys_pedro/unix/athena2.html

#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Dialog.h>
#include  <X11/Xaw/Command.h>
#include  <stdio.h>

void clickDialog(Widget w, XtPointer client, XtPointer call) {
    printf("Hello World %i\n", client);
//    char *pc  = XawDialogGetValueString(XtParent(w));
    XawDialogGetValueString(XtParent(w));
}

int main(int argc, char **argv) {

    Widget toplevel, box, dialog;

    toplevel = XtInitialize("Mein Fenster", "simple", NULL, 0, &argc, argv);

    box = XtCreateManagedWidget("Button Gruppe", boxWidgetClass, toplevel, NULL, 0);

    dialog = XtVaCreateManagedWidget("doalog", dialogWidgetClass, box, XtNlabel,"speichern ?", NULL);
    XawDialogAddButton(dialog,"Yes", clickDialog,0);
    XawDialogAddButton(dialog,"No", clickDialog,1);
    //XawDialogAddButton(dialog,"Help", clickDialog,2);
    //XawDialogAddButton(dialog,"Chancel", clickDialog,3);

    XtRealizeWidget(toplevel);

    XtMainLoop();
}


