unit AwToggle;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XawToggle,
  XawCommand,
  XawBox,
  XawScrollbar;

// https://ergodic.ugr.es/cphys_pedro/unix/athena3.html

function radio_box(Parent: TWidget; names: PChar; variable: integer; initial: integer): TWidget;
procedure CreateToggleBox(Parent: TWidget);


implementation

type
  radio_struct = record
    variable: PInteger;
    Value: integer;
  end;

var
  rs: ^radio_struct;

function call: TXtPointer;
begin
  rs^.variable^ := rs^.Value;
end;

procedure press_Hello(w: TWidget; p: Pointer; p2: Pointer); cdecl;
begin
  WriteLn('Hello World');
  if p <> nil then begin
    WriteLn(PChar(p));
  end;
end;


function radio_box(Parent: TWidget; names: PChar; variable: integer; initial: integer): TWidget;
begin

end;

procedure CreateToggleBox(Parent: TWidget);
var
  box, btn1, cmd, btn2, btn3: TWidget;
begin
  box := XtVaCreateManagedWidget('grip', boxWidgetClass, Parent, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  btn1 := XtVaCreateManagedWidget('Radio 1', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  btn2 := XtVaCreateManagedWidget('Radio 2', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  btn3 := XtVaCreateManagedWidget('Radio 3', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

  cmd := XtVaCreateManagedWidget('show', commandWidgetClass, box, XtNforeground, $FF8888, XtNbackground, $8888FF, nil);
  XtAddCallback(cmd, XtNcallback, @press_Hello, nil);
end;

end.
