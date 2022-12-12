
unit SimpleMenu;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SimpleMenu.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SimpleMenu.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SimpleMenu.pp
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

    function XawSimpleMenuGetActiveEntry(_para1:Widget):Widget;cdecl;


{$if NeedFunctionPrototypes}

{$endif}

    procedure XawSimpleMenuClearActiveEntry(_para1:Widget);cdecl;

{$endif}

(* error 
#endif /* _SimpleMenu_h */

implementation


end.
