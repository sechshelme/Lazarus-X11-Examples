/* Written by Dan Heller and Paula Ferguson.
 * Copyright 1994, O'Reilly & Associates, Inc.
 * Permission to use, copy, and modify this program without
 * restriction is hereby granted, as long as this copyright
 * notice appears in each copy of the program source code.
 * This program is freely distributable without licensing fees and
 * is provided without guarantee or warrantee expressed or implied.
 * This program is -not- in the public domain.
 */

/* cmd_area.c -- use a ScrolledText object to view the
 * output of commands input by the user in a Command window.
 */
#include  <X11/Intrinsic.h>
#include  <Xm/Text.h>
#include  <Xm/MainW.h>
#include  <Xm/Command.h>
#include  <Xm/CutPaste.h>
#include  <Xm/ContainerT.h>
#include  <X11/Xaw/Reports.h>
#include  <stdio.h>         /* For popen() */

void
Exit(drawing_a, client_data, call_data)
Widget    drawing_a;
XtPointer client_data;
XtPointer call_data;
{
  exit(0);
}

/* main() -- initialize toolkit, create a main window, menubar,
 * a Command Area and a ScrolledText to view the output of commands.
 */
main(argc, argv)
int argc;
char *argv[];
{
    Widget        top, main_w, menubar, menu, command_w, text_w;
    XtAppContext  app;
    XmString      file, quit;
    extern void   exec_cmd(), exit();
    Arg           args[5];
    int           n = 0;

    XtSetLanguageProc (NULL, NULL, NULL);

    /* initialize toolkit and create toplevel shell */
    top = XtVaAppInitialize (&app, "Demos",
        NULL, 0, &argc, argv, NULL, NULL);

    (void) close (0); /* don't let commands read from stdin */

    /* MainWindow for the application -- contains menubar, ScrolledText
     * and CommandArea (which prompts for filename).
     */
    main_w = XtVaCreateManagedWidget ("main_w",
        xmMainWindowWidgetClass, top,
        XmNcommandWindowLocation, XmCOMMAND_BELOW_WORKSPACE,
        NULL);

    /* Create a simple MenuBar that contains one menu */
    file = XmStringCreateLocalized ("File");
    menubar = XmVaCreateSimpleMenuBar (main_w, "menubar",
        XmVaCASCADEBUTTON, file, 'F',
        NULL);
    XmStringFree (file);

    /* "File" menu has only one item (Quit), so make callback exit() */
    quit = XmStringCreateLocalized ("Quit");
    /* menu = XmVaCreateSimplePulldownMenu (menubar, "file_menu", 0, exit, */
    menu = XmVaCreateSimplePulldownMenu (menubar, "file_menu", 0, Exit,
        XmVaPUSHBUTTON, quit, 'Q', NULL, NULL,
        NULL);
    XmStringFree (quit);

    /* Menubar is done -- manage it */
    XtManageChild (menubar);

    /* Create ScrolledText -- this is work area for the MainWindow */
    XtSetArg (args[n], XmNrows,      24); n++;
    XtSetArg (args[n], XmNcolumns,   80); n++;
    XtSetArg (args[n], XmNeditable,  False); n++;
    XtSetArg (args[n], XmNeditMode,  XmMULTI_LINE_EDIT); n++;
    text_w = XmCreateScrolledText (main_w, "text_w", args, n);
    XtManageChild (text_w);

    /* store text_w as user data in "File" menu for file_cb() callback */
    XtVaSetValues (menu, XmNuserData, text_w, NULL);

    /* Create the command area -- this must be a Command class widget */
    file = XmStringCreateLocalized ("Command:");
    command_w = XtVaCreateWidget ("command_w", xmCommandWidgetClass, main_w,
        XmNpromptString, file,
        NULL);
    XmStringFree (file);
    XtAddCallback (command_w, XmNcommandEnteredCallback, exec_cmd, text_w);
    XtManageChild (command_w);

    XmMainWindowSetAreas (main_w, menubar, command_w,
        NULL, NULL, XtParent (text_w));
    XtRealizeWidget (top);
    XtAppMainLoop (app);
}

/* execute the command and redirect output to the ScrolledText window */
void
exec_cmd (cmd_widget, client_data, call_data)
Widget cmd_widget;  /* the command widget itself, not its Text widget */
XtPointer client_data; /* passed the text_w as client_data */
XtPointer call_data;
{
    char *cmd, buf[BUFSIZ];
    XmTextPosition pos;
    FILE *pp, *popen();
    Widget text_w = (Widget) client_data;
    XmCommandCallbackStruct *cbs =
        (XmCommandCallbackStruct *) call_data;

    XmStringGetLtoR (cbs->value, XmFONTLIST_DEFAULT_TAG, &cmd);

    if (!cmd || !*cmd) { /* nothing typed? */
        if (cmd)
            XtFree (cmd);
        return;
    }

    /* make sure the file is a regular text file and open it */
    if (!(pp = popen (cmd, "r")))
        perror (cmd);
    XtFree (cmd);
    if (!pp)
        return;

    /* put the output of the command in the Text widget by reading
     * until EOF (meaning that the command has terminated).
     */
    for (pos = 0; fgets (buf, sizeof(buf), pp); pos += strlen (buf))
        XmTextReplace (text_w, pos, pos, buf);

    pclose (pp);
}

