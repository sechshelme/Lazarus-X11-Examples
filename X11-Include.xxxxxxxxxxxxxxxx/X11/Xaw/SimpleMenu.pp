
unit SimpleMenu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenu.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenu.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SimpleMenu.pp
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
  XtNleftMargin = 'leftMargin';  
  XtNrightMargin = 'rightMargin';  
  XtCColumnWidth = 'ColumnWidth';  
  XtCLabelClass = 'LabelClass';  
  XtCMenuOnScreen = 'MenuOnScreen';  
  XtCPopupOnEntry = 'PopupOnEntry';  
  XtCRowHeight = 'RowHeight';  
  XtCVerticalMargins = 'VerticalMargins';  
{$ifndef OLDXAW}

const
  XtCHorizontalMargins = 'HorizontalMargins';  
  XawNdisplayList = 'displayList';  
  XawCDisplayList = 'DisplayList';  
  XawRDisplayList = 'XawDisplayList';  
{$endif}


(* error 
void XawSimpleMenuAddGlobalActions
in declaration at line 134 *)


function XawSimpleMenuGetActiveEntry(w:TWidget):TWidget;cdecl;external;

procedure XawSimpleMenuClearActiveEntry(w:TWidget);cdecl;external;
{$endif}

(* error 
#endif /* _SimpleMenu_h */

implementation


end.
