#include  <X11/StringDefs.h>
#include  <stdlib.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Toggle.h>

  struct radio_struct {
       int  *variable;
       int  value;
  };

  static void rgback(Widget w, struct radio_struct *rs, XtPointer call) {
       *(rs->variable) = rs->value;
  }

  Widget radio_box(Widget parent, char *names[], int *variable, int initial)
  {
       struct    radio_struct *rs;
       int  ntogs;
       char init_name[20];
       Widget box, group, togs[100];
       Arg  wargs[10];

       box = XtCreateManagedWidget("box", boxWidgetClass, parent, NULL, 0);

       ntogs = 0;
       while(names[ntogs] != 0) {
	    togs[ntogs] = XtCreateWidget(names[ntogs], toggleWidgetClass, box, NULL, 0);

	    if(ntogs == 0) group = togs[0];

	    XawToggleChangeRadioGroup(togs[ntogs], group);

	    rs = (struct radio_struct *) malloc(sizeof *rs);
	    rs->variable = variable;
//	    rs->value = values[ntogs];
	    rs->value = ntogs;

	    XtAddCallback(togs[ntogs], XtNcallback, rgback, rs);

	    ntogs++;
       }

       XtManageChildren(togs,ntogs);

   //&    variable = index;

       strcpy(init_name, names[0]);

       XtSetArg(wargs[0],XtNradioData, init_name);
//       XtSetArg(wargs[0],XtNradioData,"value 1\0");
       XtSetValues(togs[0],wargs,1);

       printf(init_name);
       printf("--\n");
       printf(names[0]);
       printf("--\n");

       XawToggleSetCurrent(group,init_name);
       //XawToggleSetCurrent(group, names[0]);

       return(box);
  }
