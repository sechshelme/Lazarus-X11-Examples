/* $CC -o xresources_test xresources_test.c -lX11 */
#include <X11/Xresource.h>
#include <string.h>
#include <stdio.h>


#define XRESOURCE_LOAD_STRING(NAME, DST)                      \
	XrmGetResource(db, NAME, "String", &type, &ret);      \
	if (ret.addr != NULL && !strncmp("String", type, 64)) \
		DST = ret.addr;

// https://gist.github.com/dcat/05dc5d45e8c60f2645da


int
main(void) {
	XrmDatabase	 db;   /* Xresources database */
	XrmValue	 ret;  /* structure that holds pointer to string */
	Display		*dpy;  /* X connection */
	char		*resource_manager;
	char		*type; /* class of returned variable */
	char		*var="Ich bin ein Test";  /* pointer to the resource */
//	char		*var="";  /* pointer to the resource */

	/* connect to X */
	if (!(dpy = XOpenDisplay(NULL)))
		return -1;

	/* initialize xresources */
	XrmInitialize();
	resource_manager = XResourceManagerString(dpy);

	if (resource_manager == NULL)
		return -2;

	/* load the database */
	db = XrmGetStringDatabase(resource_manager);

	if (db == NULL)
		return -3;

	/* use macro to get pointer string */
	XRESOURCE_LOAD_STRING("my.var", var);
	printf("my.var = '%s'\n", var);

	/* remember to clean up */
	XCloseDisplay(dpy);

	/* NOTE: you're being given pointers to the xresource database
	 *              DON'T free() THE MEMORY !
	 */

	return 0;
}
