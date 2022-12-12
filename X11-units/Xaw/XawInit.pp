
unit XawInit;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/XawInit.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/XawInit.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/XawInit.pp
}

    Type
    P_XtString  = ^_XtString;
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PScreen  = ^Screen;
    PXtAppContext  = ^XtAppContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawInit_h}
{$define _XawInit_h}  

  const
    XawVendor = XVENDORNAMESHORT;    
{$ifdef OLDXAW}
    XawVersion = 6700002;    
{$else}

  const
    XawVersion = 7000002;    

  type
    _XawDL = XawDisplayList;
{$endif}

{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
(* error 
void XawInitializeWidgetSet(void);
in declaration at line 44 *)
{$ifndef OLDXAW}

    procedure XawInitializeDefaultConverters;

{$endif}

    function XawOpenApplication(app_context_return:PXtAppContext; dpy:PDisplay; screen:PScreen; application_name:String; application_class:String; 
               widget_class:WidgetClass; argc:Plongint; argv:P_XtString):Widget;cdecl;

{$endif}

(* error 
#endif /* _XawInit_h */

implementation

    procedure XawInitializeDefaultConverters;
    begin
      { You must implement this function }
    end;

end.
