
unit Dialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Dialog.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Dialog.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Dialog.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawDialog_h}
{$define _XawDialog_h}  
{$include <X11/Xaw3d/Form.h>}



  const
    XtCIcon = 'Icon';    
    XtNicon = 'icon';    

  type
    DialogWidgetClass = ^_DialogClassRec;

    DialogWidget = ^_DialogRec;

    var
      dialogWidgetClass : WidgetClass;cvar;external;
(* error 
extern void XawDialogAddButton(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 99 *)
{$if NeedFunctionPrototypes}

{$endif}

    function XawDialogGetValueString(_para1:Widget):^char;cdecl;

{$endif}

(* error 
#endif /* _XawDialog_h */

implementation


end.
