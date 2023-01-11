
/* $Id: CheckboxP.h,v 1.1 1997/08/28 05:38:04 falk Exp $
 *
 * CheckboxP.h - Private definitions for Checkbox widget
 * 
 * Author: Edward A. Falk
 *         falk@falconer.vip.best.com
 *  
 * Date:   June 30, 1997
 *
 */

#ifndef _XawCheckboxP_h
#define _XawCheckboxP_h

#include "Checkbox.h"
#include "RadioP.h"

/************************************
 *
 *  Class structure
 *
 ***********************************/

   /* New fields for the Checkbox widget class record */
typedef struct _CheckboxClass  {
    XtPointer	extension;
} CheckboxClassPart;

   /* Full class record declaration */
typedef struct _CheckboxClassRec {
    CoreClassPart	core_class;
    SimpleClassPart	simple_class;
#ifdef	_ThreeDP_h
    ThreeDClassPart	threeD_class;
#endif
    LabelClassPart	label_class;
    CommandClassPart	command_class;
    ToggleClassPart	toggle_class;
    RadioClassPart	radio_class;
    CheckboxClassPart	checkbox_class;
} CheckboxClassRec;

extern CheckboxClassRec checkboxClassRec;

/***************************************
 *
 *  Instance (widget) structure 
 *
 **************************************/

    /* New fields for the Checkbox widget record */
typedef struct {
    /* resources */
    Boolean	tristate ;

    /* private data */
    Boolean	pressed ;
    Pixmap	checkmark ;		/* TODO: share these via xmu? */
    GC		checkmark_GC ;
    XtPointer	extension;
} CheckboxPart;

   /* Full widget declaration */
typedef struct _CheckboxRec {
    CorePart	core;
    SimplePart	simple;
#ifdef	_ThreeDP_h
    ThreeDPart	threeD;
#endif
    LabelPart	label;
    CommandPart	command;
    TogglePart	toggle;
    RadioPart	radio;
    CheckboxPart checkbox;
} CheckboxRec;

#endif /* _XawCheckboxP_h */
