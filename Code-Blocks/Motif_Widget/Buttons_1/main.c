/* motif_example_1.c
 *
 * Written by: M.Emmanuel
 * Written for: ad us. propr.
 * Date: 10/JUL/2021
 *
 * Description: Sample Motif Empty Window with a Drawing Canvas
 *
 * Rev.	Date		Author		Description
 * -----------------------------------------------------------------------------------------------------------
 * 1	10/JUL/2021	M.Emmanuel	Initial coding
 */

#include <stdlib.h>
#include <stdio.h>

#include <Xm/Xm.h>
#include <Xm/ButtonBox.h>

int main(int argc, char *argv[]) {

	/* WIDGETS */
	XtAppContext  app;          /* Application Context */
	Widget        toplevel;		  /* Top Level Button */
	Widget        drawing_area; /* Empty Drawing Area Widget */

	/* RESOURCE VALUE ARRAYS/COUNT */
	Arg al[11];
	int ac;

	/* INITIALIZE TOP LEVEL WINDOW */
//	XtSetLanguageProc(NULL, NULL, NULL);
//	toplevel = XtVaOpenApplication(		&app, argv[0], NULL, 0, &argc, argv, NULL, sessionShellWidgetClass,		XmNwidth, 400, XmNheight, 300, NULL	);

	toplevel=XtVaAppInitialize(&app,"noname",NULL,0,&argc,argv,NULL, XtNwidth,320,XtNheight,200, NULL);

	printf("toplevel%i\n", toplevel);

	/* CREATE AND MANAGE DRAWING CANVAS WIDGET */
	ac=0;
//	drawing_area = XmCreateDrawingArea(toplevel, "name", al, ac);
	drawing_area = XtVaCreateManagedWidget("BasisBox", xmButtonBoxWidgetClass, toplevel, XtNwidth, 100, NULL);
//	drawing_area = XtCreateManagedWidget("BasisBox", xmButtonBoxWidgetClass, toplevel, NULL, 0);
	//printf("draw_area: %i\n", drawing_area);
	//drawing_area = XtVaCreateManagedWidget("Basis",xmButtonBoxWidgetClass, toplevel , NULL);
//XtManageChild(drawing_area);

	/* REALIZE TOPLEVEL WINDOW AND LAUNCH APPLICATION LOOP */
	XtRealizeWidget(toplevel);
	XtAppMainLoop(app);

	return 0;

}
