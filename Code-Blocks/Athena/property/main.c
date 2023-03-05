/* toolkit3.c */
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>
#include <X11/Xaw/Command.h>
#include <X11/Xaw/Box.h>
#include <X11/Xaw/Form.h>
#include <X11/Xaw/Dialog.h>
static Widget w_dialog, w_dialog2;
static void
Quit (Widget w, XtPointer client_data, XtPointer call_data) {
  exit (EXIT_SUCCESS);
}
static void
action (Widget w, XtPointer client_data, XtPointer call_data) {
  String string;
  String string2;
  char help[200];
  char command[255];
  /* Dialogeingaben einlesen */
  string = XawDialogGetValueString  (w_dialog);
  string2 = XawDialogGetValueString (w_dialog2);
  if( strcmp(string, "") ==0 || strcmp(string2, "") ==0)
    return; /* Keine Eingaben im Dialogfeld */
  sprintf (help, "'%s' %s", string2, string);
  sprintf (command, "grep -i -n %s\n", help);
  /* In der Praxis gefährlich => aber hier zweitrangig */
  system (command);
}
/* Text im Dialogfeld leeren */
static void DialogCancel (Widget w, XtPointer client_data,
                          XtPointer call_data) {
  char satz[1];      /* Leerstring */
  strcpy (satz, "");
  /* loesche Text */
  XtVaSetValues (w_dialog, XtNvalue, satz, NULL);
  /* loesche Text */
  XtVaSetValues (w_dialog2, XtNvalue, satz, NULL);
}
int main (int argc, char **argv) {
  XtAppContext app_context;
  Widget w_parent, w_totbox, /* Box um alles herum             */
  w_quit,                    /* Ende-Knopf                     */
  w_boxein,                  /* Box um Dialog und DialogCancel */
  w_dialogCancel,            /* Button bei Texteingabe         */
  w_action,                  /* Form um den grep-Button        */
  w_actiona;                 /* grep-Button                    */
  w_parent = XtVaAppInitialize (&app_context, NULL,
                                NULL, 0, &argc, argv,
                                NULL, NULL);
  /*  Box-Widget um alles herum */
  w_totbox = XtVaCreateManagedWidget (
               "box1",
               boxWidgetClass,   /* Widget-Klasse   */
               w_parent,         /* Eltern-Widget   */
               NULL);
  /* Box um Dialog-Widget und Cancel */
  w_boxein = XtVaCreateManagedWidget (
               "boxein",
               boxWidgetClass,   /* Widget-Klasse   */
               w_totbox,         /* Eltern-Widget   */
               NULL);
  /* Dialog-Widget */
  w_dialog = XtVaCreateManagedWidget (
               "textin_files",
               dialogWidgetClass,   /* Widget-Klasse  */
               w_boxein,            /* Eltern-Widget  */
               XtNvalue, (XtArgVal) "",
               XtNwidth, (XtArgVal) 150,
               XtNlabel, (XtArgVal) "Dateien eingeben: ",
               NULL);
  /*  Dialog-Widget */
  w_dialog2 = XtVaCreateManagedWidget (
                "textin_search",
                dialogWidgetClass,   /* Widget-Klasse   */
                w_boxein,            /* Eltern-Widget   */
                XtNvalue, (XtArgVal) "",
                XtNwidth, (XtArgVal) 150,
                XtNlabel,(XtArgVal) "Suchstring eingeben ",
                NULL);
  /* Cancel-Button */
  w_dialogCancel = XtVaCreateManagedWidget (
                     "Zurücksetzen",
                     commandWidgetClass,   /* Widget-Klasse  */
                     w_boxein,             /* Eltern-Widget  */
                     NULL);
  XtAddCallback (w_dialogCancel, XtNcallback,
                 DialogCancel, w_dialog);
  /* Untere Zeile: Form um den grep-Knopf */
  w_action = XtVaCreateManagedWidget (
               "action_form",
               formWidgetClass,   /* Widget-Klasse   */
               w_totbox,          /* Eltern-Widget   */
               NULL);
  /*  Action-Knopf */
  w_actiona = XtVaCreateManagedWidget (
                "action_grep",
                commandWidgetClass,   /* Widget-Klasse   */
                w_action,             /* Eltern-Widget   */
                XtNbackground, (XtArgVal) "gold",
                XtNlabel, (XtArgVal) " grep -i ",
                NULL);
  XtAddCallback (w_actiona, XtNcallback, action, 0);
  /* Quit */
  w_quit = XtVaCreateManagedWidget (
             "Ende",
             commandWidgetClass,   /* Widget-Klasse   */
             w_action,             /* Eltern-Widget   */
             XtNhorizDistance, (XtArgVal) 100,
             NULL);
  XtAddCallback (w_quit, XtNcallback, Quit, 0);
  /*  Stellt Fenster und Widgets dar    */
  XtRealizeWidget (w_parent);
  /*  Schleife fuer Events              */
  XtAppMainLoop (app_context);
  return EXIT_SUCCESS;
}
