unit AwToggle;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  X11Composite,
  XawToggle,
  XawCommand,
  XawBox,
  XawScrollbar;

// https://ergodic.ugr.es/cphys_pedro/unix/athena3.html

function radio_box(Parent: TWidget; names: array of PChar; var values: array of integer; var variable: integer; initial: integer): TWidget;
procedure CreateRadioBox(Parent: TWidget);


implementation

type
  Pradio_struct = ^Tradio_struct;

  Tradio_struct = record
    variable: PInteger;
    Value: integer;
  end;

var
  rs: Pradio_struct;

  val: integer=4;


procedure rgback(w: TWidget; rs: Pradio_struct; call: TXtPointer);
begin
//  rs^.variable := @rs^.Value;
end;


function radio_box(Parent: TWidget; names: array of PChar; var values: array of integer; var variable: integer; initial: integer): TWidget;
var
  ntogs, index, i: integer;
  box, group: TWidget;
  togs: array[0..99] of TWidget;
  rs: Tradio_struct;
  wargs: array[0..10] of TArg;
  init_name: string;
begin
  box := XtVaCreateManagedWidget('box', boxWidgetClass, Parent, XtNwidth, 300, XtNheight, 300, nil);
  ntogs := 0;
  while names[ntogs] <> nil do begin
    WriteLn(names[ntogs]);
    togs[ntogs] := XtCreateWidget(names[ntogs], toggleWidgetClass, box, nil, 0);
    if ntogs = 0 then begin
      group := togs[0];
    end;
    XawToggleChangeRadioGroup(togs[ntogs], group);

//    rs.variable := @variable;
//    rs.Value := values[ntogs];

    XtAddCallback(togs[ntogs], XtNcallback, @rgback, @rs);
    Inc(ntogs);
  end;

  XtManageChildren(togs, ntogs);

  index := -1;
  for i := 0 to ntogs - 1 do begin
    if values[i] = initial then begin
      index := i;
    end;
  end;
  if index < 0 then begin
    index := 0;
  end;

  variable := values[index];

  //variable:=2;

  init_name := names[index];
  XtSetArg(wargs[0], XtNradioData, PChar(init_name));
  XtSetValues(togs[index], wargs, 1);
  XawToggleSetCurrent(group, PChar(init_name));
end;

procedure var_Print(w: TWidget; p: PInteger; p2: Pointer); cdecl;
begin
  Write('Es wurde gewählt: ');
  WriteLn(val);
  if p <> nil then begin
//    WriteLn(p^);
  end;
end;

procedure CreateRadioBox(Parent: TWidget);
var
  box, btn1, cmd, btn2, btn3, Buttons: TWidget;
  names: array of PChar = ('value1', 'value2', 'value3', 'value4', 'value5', nil);
  values: array of integer = (1, 2, 3, 4, 5);
begin
  //  box := XtVaCreateManagedWidget('grip', boxWidgetClass, Parent, XtNheight, 250, XtNwidth, 250, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn1 := XtVaCreateManagedWidget('Radio 1', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn2 := XtVaCreateManagedWidget('Radio 2', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn3 := XtVaCreateManagedWidget('Radio 3', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

  Buttons := radio_box(Parent, names, values, val, 3);

  cmd := XtVaCreateManagedWidget('Print Toggle', commandWidgetClass, Parent, XtNforeground, $FF8888, XtNbackground, $8888FF, nil);
//  XtAddCallback(cmd, XtNcallback, @var_Print, @val);
  XtAddCallback(cmd, XtNcallback, @var_Print, nil);

end;

end.
