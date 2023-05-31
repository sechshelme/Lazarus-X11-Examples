program Project1;

uses
  ctypes,
//  xforms;
  xforms_forms;

  procedure yes_callback(obj: PFL_OBJECT; user_data: clong); cdecl;
  begin
    WriteLn('Es wurde Yes gedrückt');
  end;

  function main(argc: cint; argv: PPChar): integer;
  var
    form: PFL_FORM;
    yes, res, no, cancel, help, sb, txt: PFL_OBJECT;
  begin
    fl_initialize(@argc, argv, 'FormDemo', nil, 0);
    form := fl_bgn_form(FL_UP_BOX, 420, 240);

    txt:=fl_add_text(FL_NORMAL_TEXT,0,0,320,20, 'Drücke etwas');
    fl_set_object_lsize(txt,FL_TINY_SIZE);

    fl_add_box(FL_UP_BOX, 210, 40, 0, 0, 'Do you want to Quit?');

    yes := fl_add_button(FL_NORMAL_BUTTON, 20, 170, 75, 25, 'Yes');
    fl_set_object_callback(yes, @yes_callback,0);
    no := fl_add_button(FL_NORMAL_BUTTON, 120, 170, 75, 25, 'No');
    cancel := fl_add_button(FL_NORMAL_BUTTON, 220, 170, 75, 25, 'Cancel');
    help := fl_add_button(FL_NORMAL_BUTTON, 320, 170, 75, 25, 'Help');

    sb:=fl_add_valslider(0,30,30, 30,120,'Scrollbar');
    fl_set_object_color(sb, FL_GREEN, FL_BLUE);

    fl_add_input(0, 100,30, 300,20,'memo1');
    fl_add_input(0, 100,60, 300,20,'memo2');

    fl_end_form;
    fl_show_form(form, FL_PLACE_MOUSE, FL_TRANSIENT_, 'Question');

    while True do begin
      res := fl_do_forms;
      if res = yes then begin
        WriteLn('Yes is pushed');
      end else if res = no then begin
        WriteLn('No is pushed');
      end else if res = cancel then begin
        WriteLn('Cancel is pushed');
      end else if res = help then begin
        WriteLn('Help is pushed');
      end;
    end;

    fl_finish;
    Result := 0;
  end;

begin
  main(argc, argv);
end.
