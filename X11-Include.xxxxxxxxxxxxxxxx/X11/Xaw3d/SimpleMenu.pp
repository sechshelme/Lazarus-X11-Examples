
unit SimpleMenu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenu.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenu.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SimpleMenu.pp
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
    PSimpleMenuClassRec  = ^SimpleMenuClassRec;
    PSimpleMenuRec  = ^SimpleMenuRec;
    PSimpleMenuWidget  = ^SimpleMenuWidget;
    PSimpleMenuWidgetClass  = ^SimpleMenuWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SimpleMenu_h}
{$define _SimpleMenu_h}
{$include <X11/Shell.h>}
{$include <X11/Xmu/Converters.h>}


type
  PSimpleMenuWidgetClass = ^TSimpleMenuWidgetClass;
  TSimpleMenuWidgetClass = PSimpleMenuClassRec;

  PSimpleMenuWidget = ^TSimpleMenuWidget;
  TSimpleMenuWidget = PSimpleMenuRec;
  var
    simpleMenuWidgetClass : TWidgetClass;cvar;external;

const
  XtNcursor = 'cursor';  
  XtNbottomMargin = 'bottomMargin';  
  XtNcolumnWidth = 'columnWidth';  
  XtNlabelClass = 'labelClass';  
  XtNmenuOnScreen = 'menuOnScreen';  
  XtNpopupOnEntry = 'popupOnEntry';  
  XtNrowHeight = 'rowHeight';  
  XtNtopMargin = 'topMargin';  
  XtNjumpScroll = 'jumpScroll';  
  XtNleftWhitespace = 'leftWhitespace';  
  XtNrightWhitespace = 'rightWhitespace';  
  XtCColumnWidth = 'ColumnWidth';  
  XtCLabelClass = 'LabelClass';  
  XtCMenuOnScreen = 'MenuOnScreen';  
  XtCPopupOnEntry = 'PopupOnEntry';  
  XtCRowHeight = 'RowHeight';  
  XtCVerticalMargins = 'VerticalMargins';  
  XtCJumpScroll = 'JumpScroll';  
  XtCLeftWhitespace = 'LeftWhitespace';  
  XtCRightWhitespace = 'RightWhitespace';  
  XtCHorizontalWhitespace = 'HorizontalWhitespace';  


(* error 
extern void XawSimpleMenuAddGlobalActions(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 131 *)

{$if NeedFunctionPrototypes}

{$endif}

function XawSimpleMenuGetActiveEntry(para1:TWidget):TWidget;cdecl;external;

{$if NeedFunctionPrototypes}

{$endif}

procedure XawSimpleMenuClearActiveEntry(para1:TWidget);cdecl;external;
{$endif}

(* error 
#endif /* _SimpleMenu_h */

implementation


end.
