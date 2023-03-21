#include <stdlib.h>
#include <stdio.h>

#include <Xm/Xm.h>
#include <Xm/Container.h>
#include <Xm/ButtonBox.h>

int main(int argc, char *argv[]) {

	/* WIDGETS */
	XtAppContext  app;
	Widget        toplevel, btn,box;

	toplevel = XtVaAppInitialize(&app,"noname", NULL, 0, &argc, argv, NULL, XtNwidth, 320, XtNheight, 200, NULL);

	box = XtVaCreateManagedWidget("Button", xmContainerWidgetClass, toplevel, XtNwidth, 75, XtNheight, 25, NULL);

	btn = XtVaCreateManagedWidget("Button", xmButtonBoxWidgetClass, box, XtNwidth, 75, XtNheight, 25, NULL);
	btn = XtVaCreateManagedWidget("Button", xmButtonBoxWidgetClass, box, XtNwidth, 75, XtNheight, 25, NULL);
	XtRealizeWidget(toplevel);
	XtAppMainLoop(app);
}
