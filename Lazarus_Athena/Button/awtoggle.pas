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

function radio_box(Parent: TWidget; names: array of string; var variable: integer; initial: integer): TWidget;
procedure CreateRadioBox(Parent: TWidget);


implementation

type
  Pradio_struct = ^Tradio_struct;

  Tradio_struct = record
    variable: PInteger;
    Value: integer;
  end;

procedure rgback(w: TWidget; para: Pradio_struct; rs2: Pradio_struct);
var
  i: integer;
begin
  i := para^.Value;
  para^.variable^ := i;

  WriteLn('value:', i);
  XawToggleGetCurrent((w));
  WriteLn('toggle: ',PtrUInt( XawToggleGetCurrent((w))));
end;


function radio_box(Parent: TWidget; names: array of string; var variable: integer; initial: integer): TWidget;
var
  ntogs, index, i: integer;
  box, group: TWidget;
  togs: array[0..99] of TWidget;
  wargs: array[0..10] of TArg;
  init_name: string;
  pr: Pradio_struct;

begin
  box := XtVaCreateManagedWidget('box', boxWidgetClass, Parent, XtNwidth, 300, XtNheight, 300, nil);
  ntogs := 0;
  for i := 0 to Length(names) - 1 do begin
    WriteLn(names[ntogs]);
//    togs[ntogs] := XtCreateWidget(PChar(names[ntogs]), toggleWidgetClass, box, nil, 0);
    togs[ntogs] := XtVaCreateWidget(PChar(names[ntogs]), toggleWidgetClass, box, XtNradioData, i,  nil);
    if i = 0 then begin
      group := togs[0];
    end;
    XawToggleChangeRadioGroup(togs[ntogs], group);

    new(pr);
    pr^.Value := i;
    pr^.variable := @variable;


    XtAddCallback(togs[ntogs], XtNcallback, @rgback, pr);

    Inc(ntogs);
  end;

  XtManageChildren(togs, ntogs);

  //index := -1;
  //for i := 0 to ntogs - 1 do begin
  //  if values[i] = initial then begin
  //    index := i;
  //  end;
  //end;
  //if index < 0 then begin
  //  index := 0;
  //end;

  //  variable := values[index];

  //variable:=2;
  index:=initial;

  init_name := names[index];
  init_name:='xxx';
//  XtSetArg(wargs[0], XtNradioData, PChar(init_name));
//  XtSetValues(togs[index], wargs, 1);
// XawToggleSetCurrent(group, PChar(init_name));
 XawToggleSetCurrent(group, Pointer(initial));
end;

var
  val: integer = 4;

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
  names: array of string = ('value0', 'value1', 'value2', 'value3', 'value4', 'value5', 'value6', 'value7');
begin
  //  box := XtVaCreateManagedWidget('grip', boxWidgetClass, Parent, XtNheight, 250, XtNwidth, 250, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn1 := XtVaCreateManagedWidget('Radio 1', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn2 := XtVaCreateManagedWidget('Radio 2', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  //btn3 := XtVaCreateManagedWidget('Radio 3', toggleWidgetClass, box, XtNheight, 150, XtNwidth, 150, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

  Buttons := radio_box(Parent, names, val, 3);

  cmd := XtVaCreateManagedWidget('Print Toggle', commandWidgetClass, Parent, XtNforeground, $FF8888, XtNbackground, $8888FF, nil);
  XtAddCallback(cmd, XtNcallback, @var_Print, @val);
  //  XtAddCallback(cmd, XtNcallback, @var_Print, nil);

end;

end.
