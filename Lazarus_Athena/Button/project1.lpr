program project1;

uses
  //Core,
  xlib,
  x,
  Xresource,
  X11StringDefs,
  X11Intrinsic,
  XawList,
  XawLabel,
  XawBox,
  XawCommand;

// h2pas -p -T -S -d -c Intrinsic.h

//https://www.tutorialspoint.com/cprogramming/c_pointer_to_pointer.htm


  procedure press_Hello(w: TWidget; p: Pointer; p2: Pointer); cdecl;
  begin
    WriteLn('Hello World');
    if p <> nil then begin
      WriteLn(PChar(p));
    end;
  end;

  procedure quit(w: TWidget; p: Pointer; p2: Pointer); cdecl;
  begin
    Halt;
  end;

  procedure main;
  const
//    ListData: PPChar = 'abc', 'def', 'ghi', nil;
    ListDatas: PPChar = nil;
  var
    c:PChar;
    i: integer;
    toplevel, box, command, label1, list: TWidget;
    wargs: array[0..3] of TArg;

    colargs: array of TArg = ((Name: XtNbackground; valueI: $FF00), (Name: XtNforeground; valueI: $FFFF00), (Name: XtNlabel; valueP: '$FFFF00'));
    ld: PPChar;

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @argc, argv);

    box := XtCreateManagedWidget('hallo', boxWidgetClass, toplevel, nil, 0);

    label1 := XtVaCreateManagedWidget('Label für ein Titel', labelWidgetClass, box, [XtNborderWidth, 5, nil]);


    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('Hello' + LineEnding + LineEnding + 'Ich bin ein sehr langer Text !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('quit', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @quit, nil);

    XtSetValues(command, @colargs[0], Length(colargs));


    command := XtCreateManagedWidget('Test XtSetArg', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    XtSetArg(wargs[0], XtNlabel, 'Quadrat');
    XtSetArg(wargs[1], XtNwidth, 75);
    XtSetArg(wargs[2], XtNheight, 75);
    XtSetValues(command, wargs, 3);

    command := XtVaCreateManagedWidget('TestBox', commandWidgetClass, box, [XtNforeground, $FFFFFF, XtNbackground, $FF, nil]);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtVaCreateManagedWidget('TestBox', commandWidgetClass, box, [XtNlabel, 'label', XtNforeground, $FFFF00, XtNbackground, $000000, XtNheight, 500, nil]);
    XtAddCallback(command, XtNcallback, @press_Hello, PChar('Hallo Welt'));

    command := XtCreateManagedWidget('quit', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @quit, nil);

    list := XtVaCreateManagedWidget('Liste', commandWidgetClass, box, [XtNlabel, 'label', XtNforeground, $FF88FF, XtNbackground, $88FF88, XtNheight, 50, nil]);

//((    Getmem(ListDatas, (Length(ListData) + 1) * SizeOf(PPChar));
    Getmem(ListDatas,  SizeOf(PPChar)*2);
//
//    ld:=ListDatas;
//    for i := 0 to Length(ListData) - 1 do begin
//      ld^ := nil;
//      inc(ld);
//    end;
//    ld:=nil;
//

  c:='abc;';

   ld :=ListDatas;
   ld:=@c;
   inc(ld);
   ld:=nil;

//    XawListChange(list, ListDatas, 0, 50, True);

    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
