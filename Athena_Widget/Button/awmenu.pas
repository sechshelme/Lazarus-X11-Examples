unit awMenu;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XawMenuButton,
  XawBox,
  XawSimpleMenu;

procedure CreateMenu(Parent:TWidget);

implementation

procedure CreateMenu(Parent: TWidget);
var
  MenuDatei, MenuBearbeiten, MenuHilfe, box: TWidget;
begin
  box := XtVaCreateManagedWidget('Datei', boxWidgetClass, Parent,XtNorientation,XtEhorizontal,  XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);

  MenuDatei := XtVaCreateManagedWidget('Datei', menuButtonWidgetClass, box, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);
  MenuBearbeiten := XtVaCreateManagedWidget('Bearbeiten', menuButtonWidgetClass, box, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);
  MenuHilfe := XtVaCreateManagedWidget('Hilfe', menuButtonWidgetClass, box, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);

end;

end.

