/* $Id: RadioP.h,v 1.1 1997/08/28 05:38:04 falk Exp $
 *
 * RadioP.h - Private definitions for Radio widget
 * 
 * Author: Edward A. Falk
 *         falk@falconer.vip.best.com
 *  
 * Date:   June 30, 1997
 *
 */

#ifndef _XawRadioP_h
#define _XawRadioP_h

#include "Radio.h"
#include <X11/Xaw/ToggleP.h>

/***********************************************************************
 *
 * Radio Widget Private Data
 *
 ***********************************************************************/

#define streq(a, b) ( strcmp((a), (b)) == 0 )

typedef	void	(*XawDiamondProc)() ;

/************************************
 *
 *  Class structure
 *
 ***********************************/

   /* New fields for the Radio widget class record */
typedef struct _RadioClass  {
    Dimension	dsize ;		/* diamond size */
    XawDiamondProc drawDiamond ;
    /* TODO: 3-d and xaw-xpm features? */
    XtPointer	extension;
} RadioClassPart;

#define	XtInheritDrawDiamond	((XawDiamondProc)_XtInherit)

   /* Full class record declaration */
typedef struct _RadioClassRec {
    CoreClassPart	core_class;
    SimpleClassPart	simple_class;
#ifdef	_ThreeDP_h
    ThreeDClassPart	threeD_class;
#endif
    LabelClassPart	label_class;
    CommandClassPart	command_class;
    ToggleClassPart	toggle_class;
    RadioClassPart	radio_class;
} RadioClassRec;

extern RadioClassRec radioClassRec;

/***************************************
 *
 *  Instance (widget) structure 
 *
 **************************************/

    /* New fields for the Radio widget record */
typedef struct {
    /* resources */
    /* TODO: 3-d and xaw-xpm features? */

    /* private data */
    XtPointer	extension;
} RadioPart;

   /* Full widget declaration */
typedef struct _RadioRec {
    CorePart	core;
    SimplePart	simple;
#ifdef	_ThreeDP_h
    ThreeDPart	threeD;
#endif
    LabelPart	label;
    CommandPart	command;
    TogglePart	toggle;
    RadioPart	radio;
} RadioRec;

#endif /* _XawRadioP_h */
