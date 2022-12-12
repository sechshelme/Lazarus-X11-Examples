
unit XawInit;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawInit.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawInit.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/XawInit.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PDisplay  = ^Display;
    Plongint  = ^longint;
    PScreen  = ^Screen;
    PXtAppContext  = ^XtAppContext;
    PXtString  = ^XtString;
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
  TXawDL = TXawDisplayList;
{$endif}

{$include <X11/Intrinsic.h>}
{$include <X11/Xfuncproto.h>}
(* error 
void XawInitializeWidgetSet(void);
in declaration at line 44 *)
{$ifndef OLDXAW}

procedure XawInitializeDefaultConverters;cdecl;external;
{$endif}

function XawOpenApplication(app_context_return:PXtAppContext; dpy:PDisplay; screen:PScreen; application_name:TString; application_class:TString; 
               widget_class:TWidgetClass; argc:Plongint; argv:PXtString):TWidget;cdecl;external;
{$endif}

(* error 
#endif /* _XawInit_h */

implementation


end.
