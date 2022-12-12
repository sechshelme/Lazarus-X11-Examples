
unit SimpleMenu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SimpleMenu.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SimpleMenu.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SimpleMenu.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SimpleMenu_h}
{$define _SimpleMenu_h}  
{$include <X11/Shell.h>}
{$include <X11/Xmu/Converters.h>}



  type
    SimpleMenuWidgetClass = ^_SimpleMenuClassRec;

    SimpleMenuWidget = ^_SimpleMenuRec;

    var
      simpleMenuWidgetClass : WidgetClass;cvar;external;

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


    function XawSimpleMenuGetActiveEntry(w:Widget):Widget;


    procedure XawSimpleMenuClearActiveEntry(w:Widget);

{$endif}

(* error 
#endif /* _SimpleMenu_h */

implementation

    function XawSimpleMenuGetActiveEntry(w:Widget):Widget;
    begin
      { You must implement this function }
    end;
    procedure XawSimpleMenuClearActiveEntry(w:Widget);
    begin
      { You must implement this function }
    end;

end.
