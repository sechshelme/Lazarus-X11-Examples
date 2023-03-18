unit MyDialog;

interface

uses
  XTStringdefs,
  XTIntrinsic,
  XawCommand,
  XawBox;

procedure CreateMyDialog(Parent:TWidget);

implementation

procedure press_Hello(w: TWidget; p: Pointer; p2: Pointer); cdecl;
begin
  XtDestroyWidget(XtParent(w));
  WriteLn('Hello World');
  if p <> nil then begin
    WriteLn(PChar(p));
  end;
end;


procedure CreateMyDialog(Parent: TWidget);
var
  box, command: TWidget;
begin
  box := XtVaCreateManagedWidget('grip', boxWidgetClass, Parent, XtNlabel, 'grip', XtNorientation, XtEhorizontal,XtNlength,50, XtNheight, 50, XtNwidth, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  command := XtVaCreateManagedWidget('Yes', commandWidgetClass, box, XtNlength,50, XtNforeground, $000000, XtNbackground, $88F88F, nil);
  command := XtVaCreateManagedWidget('No', commandWidgetClass, box, XtNlength,50, XtNforeground, $000088, XtNbackground, $88FF88, nil);

  command := XtVaCreateManagedWidget('Close', commandWidgetClass, box, XtNlength,50, XtNforeground, $FFFF88, XtNbackground, $FF8888, nil);
  XtAddCallback(command, XtNcallback, @press_Hello, nil);
end;

end.

