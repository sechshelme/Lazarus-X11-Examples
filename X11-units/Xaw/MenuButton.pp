
unit MenuButton;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MenuButton.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MenuButton.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MenuButton.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMenuButton_h}
{$define _XawMenuButton_h}  
{$include <X11/Xaw/Command.h>}


  const
    XtNmenuName = 'menuName';    
    XtCMenuName = 'MenuName';    

    var
      menuButtonWidgetClass : WidgetClass;cvar;external;

  type
    MenuButtonWidgetClass = ^_MenuButtonClassRec;

    MenuButtonWidget = ^_MenuButtonRec;
{$endif}


implementation


end.
