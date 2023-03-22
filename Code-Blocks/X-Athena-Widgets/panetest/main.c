/* Test X code */
/* J. Gagliardi, 6/10/93 */

#include <stdio.h>
#include <X11/Intrinsic.h>
#include <X11/StringDefs.h>

/* specific Widget includes */
#include <X11/Xaw/Paned.h>
#include <X11/Xaw/Command.h>
#include <X11/Xaw/Box.h>

/* macros */
#define message(X) printf("You pressed %s.\n",(X))

// http://web.mit.edu/course/21/21.japan_dev/joshg/ohio2/panetest.c

/* globals */
XtAppContext app;
Boolean PanelOpen = FALSE;
Widget toplevel;


void byeButtonCB(w, clientData, callData)
      Widget w;
     XtPointer clientData, callData;
{
  message("the exit button");
  XtDestroyApplicationContext(app);
  exit(0);
}

void buttonOneCB(w, clientData, callData)
     Widget w;
     XtPointer clientData, callData;
{
  message("Button 1");
}

void hiddenButtonCB(w, clientData, callData)
     Widget w;
     XtPointer clientData, callData;
{
  message("Hidden button");
}

void twoLinerButtonCB(w, clientData, callData)
     Widget w;
     XtPointer clientData, callData;
{
  message("Two-liner");
}

void expandCB(w, clientData, callData)
     Widget w;
     XtPointer clientData, callData;

{
  Arg args[10];
  Cardinal n;
  Dimension height;
  XtWidgetGeometry hiddenGeo, desiredGeo;

  message("the expand button");
  if (PanelOpen)
    {
      XtQueryGeometry(clientData, NULL, &hiddenGeo);
      printf("hidden Box had height of %d\n", hiddenGeo.height);
      XtUnmanageChild(clientData);
      n=0;
      XtSetArg(args[n], XtNlabel, "More Tools"); n++;
      XtSetValues(w, args, n);

      n=0;
      XtSetArg(args[n], XtNheight, &height); n++;
      XtGetValues(toplevel, args, n);

      height -= hiddenGeo.height;
      n=0;
      XtSetArg(args[n], XtNheight, height); n++;
      XtSetValues(toplevel, args, n);
    }
  else
    {
      XtManageChild(clientData);
      desiredGeo.height = 30;
      desiredGeo.request_mode = CWHeight;
      //XtQueryGeometry(clientData, desiredGeo, &hiddenGeo);
      n=0;
      XtSetArg(args[n], XtNlabel, "Hide Tools"); n++;
      XtSetValues(w, args, n);
      n=0;
      XtSetArg(args[n], XtNheight, &height); n++;
      XtGetValues(toplevel, args, n);
      printf("hidden wants height of %d\n", hiddenGeo.height);
      height += hiddenGeo.height;
      n=0;
      XtSetArg(args[n], XtNheight, height); n++;
      XtSetValues(toplevel, args, n);
      XtMapWidget(clientData);      /* looks cleaner because initial mapping */
    }                               /* overwrites other buttons */
  PanelOpen = !PanelOpen;
}

void makeTopButtons(parent)
     Widget parent;
{
  Arg args[10];
  Cardinal n;

  Widget buttonOne, byeButton;

  n=0;
  XtSetArg(args[n], XtNlabel, "Button #1"); n++;
  buttonOne = XtCreateManagedWidget("buttonOne", commandWidgetClass,  parent,
				    args, n);
  XtAddCallback(buttonOne, XtNcallback, buttonOneCB, (XtPointer) TRUE);

  n=0;
  XtSetArg(args[n], XtNlabel, "Exit"); n++;
  byeButton = XtCreateManagedWidget("byeButton", commandWidgetClass, parent,
				    args, n);
  XtAddCallback(byeButton, XtNcallback, byeButtonCB, (XtPointer) TRUE);

}

void makeHiddenButtons(parent)
     Widget parent;
{
  Arg args[10];
  int n;

  Widget hiddenButton, twoLinerButton;

  n=0;
  XtSetArg(args[n], XtNlabel, "Hidden Button"); n++;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNmin, 30); n++;
  XtSetArg(args[n], XtNmax, 30); n++;
  hiddenButton = XtCreateManagedWidget("hiddenButton", commandWidgetClass,
				       parent, args, n);
  XtAddCallback(hiddenButton, XtNcallback, hiddenButtonCB, (XtPointer) TRUE);

  n=0;
  XtSetArg(args[n], XtNlabel, "Two-Liner... NOT!"); n++;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNmin, 50); n++;
  XtSetArg(args[n], XtNmax, 50); n++;
  twoLinerButton = XtCreateManagedWidget("twoLinerButton", commandWidgetClass,
					 parent, args, n);
  XtAddCallback(twoLinerButton, XtNcallback, twoLinerButtonCB,
		(XtPointer) TRUE);
}

void makeTestPanel(parent)
     Widget parent;
{
  Widget panelLabel;
  Widget goBox;
  Widget expandButton;
  Widget hiddenBox;

  Arg args[10];
  int n;

  /* Create Label */
  n=0;
  XtSetArg(args[n], XtNlabel, "Don't look at me, look at the buttons."); n++;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNshowGrip, FALSE); n++;
  XtSetArg(args[n], XtNmin, 30); n++;
  XtSetArg(args[n], XtNmax, 30); n++;
  panelLabel = XtCreateManagedWidget("panelLabel", labelWidgetClass, parent,
				     args, n);
  /* Create expandButton */
  n=0;
  XtSetArg(args[n], XtNlabel, "More tools"); n++;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNmin, 30); n++;
  XtSetArg(args[n], XtNmax, 30); n++;
  XtSetArg(args[n], XtNshowGrip, FALSE); n++;
  expandButton = XtCreateManagedWidget("expandButton", commandWidgetClass,
				       parent, args, n);


  /* Create goBox */
  n=0;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNshowGrip, FALSE); n++;
  goBox = XtCreateManagedWidget("goBox", boxWidgetClass, parent, args, n);
  /* goBox needs Children */
  makeTopButtons(goBox);

  /* Create hiddenBox */
  n=0;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  XtSetArg(args[n], XtNshowGrip, FALSE); n++;
  XtSetArg(args[n], XtNmappedWhenManaged, FALSE); n++;
  hiddenBox = XtCreateWidget("hiddenBox", boxWidgetClass, parent, args, n);

  /* Now hiddenbox is well-defined, so we add expandButton's callback */
  XtAddCallback(expandButton, XtNcallback, expandCB, (XtPointer) hiddenBox);

  /*Children buttons*/
  makeHiddenButtons(hiddenBox);

}

int main(argc, argv)
     unsigned int argc;
     char **argv;
{
/* global  Widget toplevel */
  Widget expandPanel;
  Arg args[10];
  Cardinal n;

  n=0;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  toplevel = XtAppInitialize(&app, "Expanding Panel",
			     (XrmOptionDescList) NULL, 0, &argc, argv,
			     (String *) NULL, args, n);

  n=0;
  XtSetArg(args[n], XtNallowResize, TRUE); n++;
  XtSetArg(args[n], XtNresizeToPreferred, TRUE); n++;
  expandPanel = XtCreateManagedWidget("expandPanel", panedWidgetClass,
				      toplevel, args, n);

  makeTestPanel(expandPanel);
  XtRealizeWidget(toplevel);
  XtAppMainLoop(app);
}






