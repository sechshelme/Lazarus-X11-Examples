#include  <X11/StringDefs.h>
#include  <X11/Intrinsic.h>
#include  <X11/Xaw/Box.h>
#include  <X11/Xaw/Toggle.h>

  struct radio_struct {
       int  *variable;
       int  value;
  };

  static void rgback(Widget w,struct radio_struct *rs, XtPointer call) {
       *(rs->variable) = rs->value;
  }

//    Arg args[] = {
//    {XtNheight, 100},
//    {XtNwidth, 200},
//    {XtNx, 200},
//    {XtNlabel, "Label"},
//    {XtNborderWidth, 0},
//    {XtNbackground, 0x888888},
//  };

  Widget radio_box(Widget parent, char *names[], int *variable, int initial)
  {
       struct    radio_struct *rs;
       Widget    togs[100];
       int  ntogs;
       char init_name[20];
       Widget    box, group;
       int  len;
       Arg  wargs[10];

       int  index;
       int  i;

       box = XtCreateManagedWidget("box", boxWidgetClass, parent, NULL, 0);

       ntogs = 0;
       while(names[ntogs] != 0) {
	    togs[ntogs] = XtCreateWidget(names[ntogs], toggleWidgetClass, box, NULL, 0);

	    if(ntogs == 0) group = togs[0];

	    XawToggleChangeRadioGroup(togs[ntogs],group);

	    rs = (struct radio_struct *) malloc(sizeof *rs);
	    rs->variable = variable;
//	    rs->value = values[ntogs];
	    rs->value = ntogs;

	    XtAddCallback(togs[ntogs], XtNcallback, rgback, rs);

	    ntogs++;
       }

       XtManageChildren(togs,ntogs);

       index = 0;
//       for (i = 0; i < ntogs; i++) if( values[i] == initial) index = i;

//       if(index  <  0) index = 0;

//       *variable = values[index];
       variable = index;

       len = strlen(names[0]) + 1;
//       init_name = (char *)malloc(len);
       strcpy(init_name,names[0]);

       XtSetArg(wargs[0],XtNradioData,init_name);
//       XtSetArg(wargs[0],XtNradioData,"value 1\0");
       XtSetValues(togs[index],wargs,1);

       printf(init_name);
       printf("--\n");
       printf(names[index]);
       printf("--\n");

       XawToggleSetCurrent(group,init_name);
//       XawToggleSetCurrent(group, &names[0]);

       return(box);
  }
