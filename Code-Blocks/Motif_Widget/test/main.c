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
#include <Xm/DrawingA.h>
 
int main(int argc, char *argv[]) {

	/* WIDGETS */
	XtAppContext  app;          /* Application Context */
	Widget        toplevel;		  /* Top Level Button */
	Widget        drawing_area; /* Empty Drawing Area Widget */
	
	/* RESOURCE VALUE ARRAYS/COUNT */
	Arg al[10];
	int ac;
	
	/* INITIALIZE TOP LEVEL WINDOW */
	XtSetLanguageProc(NULL, NULL, NULL);
	toplevel = XtVaOpenApplication( 
		&app, argv[0], NULL, 0, &argc, argv, NULL, sessionShellWidgetClass,
		XmNwidth, 400, XmNheight, 300, NULL
	);

	/* CREATE AND MANAGE DRAWING CANVAS WIDGET */
	ac=0; 
	drawing_area = XmCreateDrawingArea(toplevel, "name", al, ac);		
	XtManageChild(drawing_area);
		
	/* REALIZE TOPLEVEL WINDOW AND LAUNCH APPLICATION LOOP */
	XtRealizeWidget(toplevel);
	XtAppMainLoop(app);
	
	return 0;

}
