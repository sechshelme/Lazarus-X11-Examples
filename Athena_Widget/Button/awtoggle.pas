unit AwToggle;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XTComposite,
  XawToggle,
  XawLabel,
  XawCommand,
  XawBox,
  XawScrollbar;

// https://ergodic.ugr.es/cphys_pedro/unix/athena3.html

function radio_box(Parent: TWidget; names: array of string; var variable: integer; initial: integer): TWidget;
procedure CreateRadioBox(Parent: TWidget; const Titel: string);


implementation

type
  Pradio_struct = ^Tradio_struct;

  Tradio_struct = record
    variable: PInteger;
    Value: integer;
  end;

procedure rgback(w: TWidget; variable: PInteger; rs2: Pradio_struct);
var
  toggleTag: PtrUInt;
  state: boolean;
begin
  toggleTag := PtrUInt(XawToggleGetCurrent(w)) - 1;
  XtVaGetValues(w, XtNstate, @state, nil);

  variable^ := toggleTag;

  //  WriteLn('Button: ', toggleTag, ' Status: ', state);
end;


function radio_box(Parent: TWidget; names: array of string; var variable: integer; initial: integer): TWidget;
var
  i: integer;
  box, group: TWidget;
  togs: array of TWidget;
begin
  SetLength(togs, Length(names));
  box := XtVaCreateManagedWidget('box', boxWidgetClass, Parent, nil);
  for i := 0 to Length(names) - 1 do begin
    togs[i] := XtVaCreateWidget(PChar(names[i]), toggleWidgetClass, box, XtNradioData, i + 1, nil);
    if i = 0 then begin
      group := togs[0];
    end;
    XawToggleChangeRadioGroup(togs[i], group);

    XtAddCallback(togs[i], XtNcallback, @rgback, @variable);
  end;

  if Length(togs) > 0 then  begin
    XtManageChildren(@togs[0], Length(names));
    XawToggleSetCurrent(group, Pointer(initial + 1));
  end;
  Result := box;
end;

var
  val: integer = 2;

procedure var_Print(w: TWidget; p: PInteger; p2: Pointer); cdecl;
begin
  Write('Es wurde gewählt: ');
  WriteLn(val);
end;

procedure CreateRadioBox(Parent: TWidget; const Titel: string);
const
  RadioCount = 8;
var
  box, cmd, Buttons, label1: TWidget;
  names: array of string = nil;
  i: integer;
  s: string;
begin
  SetLength(names, RadioCount);
  for i := 0 to Length(names) - 1 do begin
    str(i, s);
    names[i] := 'RadioButton' + s;
  end;

  box := XtVaCreateManagedWidget('box', boxWidgetClass, Parent, XtNforeground, $88FF88, XtNbackground, $FF88FF, nil);

  label1 := XtVaCreateManagedWidget(PChar(Titel), labelWidgetClass, box, XtNforeground, $88FF88, XtNbackground, $FF88FF, XtNborderWidth, 0, nil);

  Buttons := radio_box(box, names, val, 3);

  cmd := XtVaCreateManagedWidget('Print Toggle', commandWidgetClass, box, nil);
  XtAddCallback(cmd, XtNcallback, @var_Print, @val);
end;

end.
