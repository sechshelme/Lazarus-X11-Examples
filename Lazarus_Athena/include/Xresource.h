
/***********************************************************

Copyright 1987, 1988, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.


Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Digital not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

******************************************************************/

#ifndef _X11_XRESOURCE_H_
#define _X11_XRESOURCE_H_

#ifndef _XP_PRINT_SERVER_
#include <X11/Xlib.h>
#endif

/****************************************************************
 ****************************************************************
 ***                                                          ***
 ***                                                          ***
 ***          X Resource Manager Intrinsics                   ***
 ***                                                          ***
 ***                                                          ***
 ****************************************************************
 ****************************************************************/

//_XFUNCPROTOBEGIN

/****************************************************************
 *
 * Memory Management
 *
 ****************************************************************/

extern char *Xpermalloc(
    unsigned int	/* size */
);

/****************************************************************
 *
 * Quark Management
 *
 ****************************************************************/

typedef int       XrmQuark, *XrmQuarkList;
#define NULLQUARK ((XrmQuark) 0)

typedef char *XrmString;
#define NULLSTRING ((XrmString) 0)

/* find quark for string, create new quark if none already exists */
extern XrmQuark XrmStringToQuark(
    const char* 	/* string */
);

extern XrmQuark XrmPermStringToQuark(
    const char* 	/* string */
);

/* find string for quark */
extern XrmString XrmQuarkToString(
    XrmQuark 		/* quark */
);

extern XrmQuark XrmUniqueQuark(
    void
);

#define XrmStringsEqual(a1, a2) (strcmp(a1, a2) == 0)


/****************************************************************
 *
 * Conversion of Strings to Lists
 *
 ****************************************************************/

typedef enum {XrmBindTightly, XrmBindLoosely} XrmBinding, *XrmBindingList;

extern void XrmStringToQuarkList(
    const char*	/* string */,
    XrmQuarkList	/* quarks_return */
);

extern void XrmStringToBindingQuarkList(
    const char*	/* string */,
    XrmBindingList	/* bindings_return */,
    XrmQuarkList	/* quarks_return */
);

/****************************************************************
 *
 * Name and Class lists.
 *
 ****************************************************************/

typedef XrmQuark     XrmName;
typedef XrmQuarkList XrmNameList;
#define XrmNameToString(name)		XrmQuarkToString(name)
#define XrmStringToName(string)		XrmStringToQuark(string)
#define XrmStringToNameList(str, name)	XrmStringToQuarkList(str, name)

typedef XrmQuark     XrmClass;
typedef XrmQuarkList XrmClassList;
#define XrmClassToString(c_class)	XrmQuarkToString(c_class)
#define XrmStringToClass(c_class)	XrmStringToQuark(c_class)
#define XrmStringToClassList(str,c_class) XrmStringToQuarkList(str, c_class)



/****************************************************************
 *
 * Resource Representation Types and Values
 *
 ****************************************************************/

typedef XrmQuark     XrmRepresentation;
#define XrmStringToRepresentation(string)   XrmStringToQuark(string)
#define	XrmRepresentationToString(type)   XrmQuarkToString(type)

typedef struct {
    unsigned int    size;
    XPointer	    addr;
} XrmValue, *XrmValuePtr;


/****************************************************************
 *
 * Resource Manager Functions
 *
 ****************************************************************/

typedef struct _XrmHashBucketRec *XrmHashBucket;
typedef XrmHashBucket *XrmHashTable;
typedef XrmHashTable XrmSearchList[];
typedef struct _XrmHashBucketRec *XrmDatabase;


extern void XrmDestroyDatabase(
    XrmDatabase		/* database */
);

extern void XrmQPutResource(
    XrmDatabase*	/* database */,
    XrmBindingList	/* bindings */,
    XrmQuarkList	/* quarks */,
    XrmRepresentation	/* type */,
    XrmValue*		/* value */
);

extern void XrmPutResource(
    XrmDatabase*	/* database */,
    const char*	/* specifier */,
    const char*	/* type */,
    XrmValue*		/* value */
);

extern void XrmQPutStringResource(
    XrmDatabase*	/* database */,
    XrmBindingList      /* bindings */,
    XrmQuarkList	/* quarks */,
    const char*	/* value */
);

extern void XrmPutStringResource(
    XrmDatabase*	/* database */,
    const char*	/* specifier */,
    const char*	/* value */
);

extern void XrmPutLineResource(
    XrmDatabase*	/* database */,
    const char*	/* line */
);

extern Bool XrmQGetResource(
    XrmDatabase		/* database */,
    XrmNameList		/* quark_name */,
    XrmClassList	/* quark_class */,
    XrmRepresentation*	/* quark_type_return */,
    XrmValue*		/* value_return */
);

extern Bool XrmGetResource(
    XrmDatabase		/* database */,
    const char*	/* str_name */,
    const char*	/* str_class */,
    char**		/* str_type_return */,
    XrmValue*		/* value_return */
);

extern Bool XrmQGetSearchList(
    XrmDatabase		/* database */,
    XrmNameList		/* names */,
    XrmClassList	/* classes */,
    XrmSearchList	/* list_return */,
    int			/* list_length */
);

extern Bool XrmQGetSearchResource(
    XrmSearchList	/* list */,
    XrmName		/* name */,
    XrmClass		/* class */,
    XrmRepresentation*	/* type_return */,
    XrmValue*		/* value_return */
);

/****************************************************************
 *
 * Resource Database Management
 *
 ****************************************************************/

#ifndef _XP_PRINT_SERVER_

extern void XrmSetDatabase(
    Display*		/* display */,
    XrmDatabase		/* database */
);

extern XrmDatabase XrmGetDatabase(
    Display*		/* display */
);

#endif /* !_XP_PRINT_SERVER_ */

extern XrmDatabase XrmGetFileDatabase(
    const char*	/* filename */
);

extern Status XrmCombineFileDatabase(
    const char* 	/* filename */,
    XrmDatabase*	/* target */,
    Bool		/* override */
);

extern XrmDatabase XrmGetStringDatabase(
    const char*	/* data */  /*  null terminated string */
);

extern void XrmPutFileDatabase(
    XrmDatabase		/* database */,
    const char*	/* filename */
);

extern void XrmMergeDatabases(
    XrmDatabase		/* source_db */,
    XrmDatabase*	/* target_db */
);

extern void XrmCombineDatabase(
    XrmDatabase		/* source_db */,
    XrmDatabase*	/* target_db */,
    Bool		/* override */
);

#define XrmEnumAllLevels 0
#define XrmEnumOneLevel  1

extern Bool XrmEnumerateDatabase(
    XrmDatabase		/* db */,
    XrmNameList		/* name_prefix */,
    XrmClassList	/* class_prefix */,
    int			/* mode */,
    Bool (*)(
	     XrmDatabase*	/* db */,
	     XrmBindingList	/* bindings */,
	     XrmQuarkList	/* quarks */,
	     XrmRepresentation*	/* type */,
	     XrmValue*		/* value */,
	     XPointer		/* closure */
	     )		/* proc */,
    XPointer		/* closure */
);

extern const char *XrmLocaleOfDatabase(
    XrmDatabase 	/* database */
);


/****************************************************************
 *
 * Command line option mapping to resource entries
 *
 ****************************************************************/

typedef enum {
    XrmoptionNoArg,	/* Value is specified in OptionDescRec.value	    */
    XrmoptionIsArg,     /* Value is the option string itself		    */
    XrmoptionStickyArg, /* Value is characters immediately following option */
    XrmoptionSepArg,    /* Value is next argument in argv		    */
    XrmoptionResArg,	/* Resource and value in next argument in argv      */
    XrmoptionSkipArg,   /* Ignore this option and the next argument in argv */
    XrmoptionSkipLine,  /* Ignore this option and the rest of argv	    */
    XrmoptionSkipNArgs	/* Ignore this option and the next
			   OptionDescRes.value arguments in argv */
} XrmOptionKind;

typedef struct {
    char	    *option;	    /* Option abbreviation in argv	    */
    char	    *specifier;     /* Resource specifier		    */
    XrmOptionKind   argKind;	    /* Which style of option it is	    */
    XPointer	    value;	    /* Value to provide if XrmoptionNoArg   */
} XrmOptionDescRec, *XrmOptionDescList;


extern void XrmParseCommand(
    XrmDatabase*	/* database */,
    XrmOptionDescList	/* table */,
    int			/* table_count */,
    const char*	/* name */,
    int*		/* argc_in_out */,
    char**		/* argv_in_out */
);

//_XFUNCPROTOEND

#endif /* _X11_XRESOURCE_H_ */
/* DON'T ADD STUFF AFTER THIS #endif */
