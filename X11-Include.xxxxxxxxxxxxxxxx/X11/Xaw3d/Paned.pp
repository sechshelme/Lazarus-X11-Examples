
unit Paned;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Paned.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Paned.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Paned.pp
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
    Plongint  = ^longint;
    PPanedClassRec  = ^PanedClassRec;
    PPanedRec  = ^PanedRec;
    PPanedWidget  = ^PanedWidget;
    PPanedWidgetClass  = ^PanedWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawPaned_h}
{$define _XawPaned_h}
{$include <X11/Constraint.h>}
{$include <X11/Xmu/Converters.h>}



const
  PANED_ASK_CHILD = 0;  
  PANED_GRIP_SIZE = 0;  

  XtNallowResize = 'allowResize';  
  XtNbetweenCursor = 'betweenCursor';  
  XtNverticalBetweenCursor = 'verticalBetweenCursor';  
  XtNhorizontalBetweenCursor = 'horizontalBetweenCursor';  
  XtNgripCursor = 'gripCursor';  
  XtNgripIndent = 'gripIndent';  
  XtNhorizontalGripCursor = 'horizontalGripCursor';  
  XtNinternalBorderColor = 'internalBorderColor';  
  XtNinternalBorderWidth = 'internalBorderWidth';  
  XtNleftCursor = 'leftCursor';  
  XtNlowerCursor = 'lowerCursor';  
  XtNrefigureMode = 'refigureMode';  
  XtNposition = 'position';  
  XtNmin = 'min';  
  XtNmax = 'max';  
  XtNpreferredPaneSize = 'preferredPaneSize';  
  XtNresizeToPreferred = 'resizeToPreferred';  
  XtNrightCursor = 'rightCursor';  
  XtNshowGrip = 'showGrip';  
  XtNskipAdjust = 'skipAdjust';  
  XtNupperCursor = 'upperCursor';  
  XtNverticalGripCursor = 'verticalGripCursor';  
  XtCGripIndent = 'GripIndent';  
  XtCMin = 'Min';  
  XtCMax = 'Max';  
  XtCPreferredPaneSize = 'PreferredPaneSize';  
  XtCShowGrip = 'ShowGrip';  

  var
    panedWidgetClass : TWidgetClass;cvar;external;
type
  PPanedWidgetClass = ^TPanedWidgetClass;
  TPanedWidgetClass = PPanedClassRec;

  PPanedWidget = ^TPanedWidget;
  TPanedWidget = PPanedRec;


(* error 
extern void XawPanedSetMinMax(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 188 *)

{$if NeedFunctionPrototypes}

{$endif}

procedure XawPanedGetMinMax(para1:TWidget; para2:Plongint; para3:Plongint);cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

procedure XawPanedSetRefigureMode(para1:TWidget; Boolean:longint);cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

function XawPanedGetNumSub(para1:TWidget):longint;cdecl;external;

{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}

procedure XawPanedAllowResize(para1:TWidget; Boolean:longint);cdecl;external;
{$endif}

(* error 
#endif /* _XawPaned_h */

implementation


end.
