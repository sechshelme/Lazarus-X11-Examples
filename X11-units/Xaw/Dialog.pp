
unit Dialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Dialog.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Dialog.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Dialog.pp
}

    Type
    Pchar  = ^char;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawDialog_h}
{$define _XawDialog_h}  
{$include <X11/Xaw/Form.h>}


  const
    XtCIcon = 'Icon';    
    XtNicon = 'icon';    

  type
    DialogWidgetClass = ^_DialogClassRec;

    DialogWidget = ^_DialogRec;

    var
      dialogWidgetClass : WidgetClass;cvar;external;
(* error 
void XawDialogAddButton
in declaration at line 89 *)

    function XawDialogGetValueString(w:Widget):^char;

{$endif}

(* error 
#endif /* _XawDialog_h */

implementation

    function XawDialogGetValueString(w:Widget):Pchar;
    begin
      { You must implement this function }
    end;

end.
