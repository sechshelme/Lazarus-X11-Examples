unit awMenu;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XawMenuButton,
  XawSmeBSB,
  XawSmeLine,
  XawForm,
  XawBox,
  XawSimpleMenu;

procedure CreateMenu(Parent:TWidget);

implementation

procedure CreateMenu(Parent: TWidget);
var
  MenuDatei, MenuBearbeiten, MenuHilfe, box, form, MenuSeperator: TWidget;
begin
    form := XtVaCreateManagedWidget('form', formWidgetClass, Parent, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);

    MenuDatei := XtVaCreateManagedWidget('Datei', menuButtonWidgetClass, form,XtNmenuName,'menu1', nil);

//    menu1:=xtcretep


    MenuBearbeiten := XtVaCreateManagedWidget('Bearbeiten', menuButtonWidgetClass,form,XtNmenuName,'menu2',XtNfromHoriz,MenuDatei, nil);


    MenuHilfe := XtVaCreateManagedWidget('Hilfe', menuButtonWidgetClass,form,XtNmenuName,'menu3',XtNfromHoriz,MenuBearbeiten, nil);


end;

end.

