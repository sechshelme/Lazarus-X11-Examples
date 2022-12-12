
unit Toggle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Toggle.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Toggle.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Toggle.pp
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
    PToggleClassRec  = ^ToggleClassRec;
    PToggleRec  = ^ToggleRec;
    PToggleWidget  = ^ToggleWidget;
    PToggleWidgetClass  = ^ToggleWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawToggle_h}
{$define _XawToggle_h}

{$include <X11/Xaw3d/Command.h>}



const
  XtCWidget = 'Widget';  
  XtCState = 'State';  
  XtCRadioGroup = 'RadioGroup';  
  XtCRadioData = 'RadioData';  
{$ifndef _XtStringDefs_h_}

const
  XtRWidget = 'Widget';  
{$endif}

const
  XtNstate = 'state';  
  XtNradioGroup = 'radioGroup';  
  XtNradioData = 'radioData';  
  var
    toggleWidgetClass : TWidgetClass;cvar;external;
type
  PToggleWidgetClass = ^TToggleWidgetClass;
  TToggleWidgetClass = PToggleClassRec;

  PToggleWidget = ^TToggleWidget;
  TToggleWidget = PToggleRec;


(* error 
extern void XawToggleChangeRadioGroup(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 133 *)

{$if NeedFunctionPrototypes}

{$endif}

function XawToggleGetCurrent(para1:TWidget):TXtPointer;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawToggleSetCurrent(para1:TWidget; para2:TXtPointer);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawToggleUnsetCurrent(para1:TWidget);cdecl;external;
{$endif}

(* error 
#endif /* _XawToggle_h */

implementation


end.
