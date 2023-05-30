program Project1;

uses
  ctypes,
  xforms_forms;

  function main(argc: cint; argv: PPChar): integer;
  var
    form: PFL_FORM;
    yes, res, no, cancel, help: PFL_OBJECT;
  begin
    fl_initialize(@argc, argv, 'FormDemo', nil, 0);
    form := fl_bgn_form(FL_UP_BOX, 420, 140);

    fl_add_box(FL_UP_BOX, 210, 40, 0, 0, 'Do you want to Quit?');

    yes := fl_add_button(FL_NORMAL_BUTTON, 20, 70, 75, 25, 'Yes');
    no := fl_add_button(FL_NORMAL_BUTTON, 120, 70, 75, 25, 'No');
    cancel := fl_add_button(FL_NORMAL_BUTTON, 220, 70, 75, 25, 'Cancel');
    help := fl_add_button(FL_NORMAL_BUTTON, 320, 70, 75, 25, 'Help');

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
