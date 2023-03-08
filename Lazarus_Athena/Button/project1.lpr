program project1;

uses
  //Core,
  xlib,
  x,
  Xresource,
  X11StringDefs,
  XTCore,
  XawList,
  X11Intrinsic,
  XawBox,
  XawLabel,
  XawCommand;

// h2pas -p -T -d -c Intrinsic.h

//https://www.tutorialspoint.com/cprogramming/c_pointer_to_pointer.htm
// define pointer of pointer

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

  procedure ListSet3(w: TWidget; list: TWidget; p2: Pointer); cdecl;
  begin
    XawListHighlight(list, 3);
  end;

  procedure ListClearHiglight(w: TWidget; list: TWidget; p2: Pointer); cdecl;
  begin
    XawListUnhighlight(list);
  end;

  procedure ListShowSelect(w: TWidget; list: TWidget; p2: Pointer); cdecl;
  var
    sl: PXawListReturnStruct;
  begin
    sl := XawListShowCurrent(list);
    WriteLn('String: ', sl^._string);
    WriteLn('Iterm:  ', sl^.list_index);
    XFree(sl);
  end;



  procedure draw_event(w: TWidget; p: Pointer; p2: PXExposeEvent; b: PXEvent); cdecl;
  var
    dis: PDisplay;
    win: TWindow;
    gc: TGC;
  begin
    WriteLn(p2^.x);
    WriteLn(p2^.y);
    WriteLn(p2^.Width);
    WriteLn(p2^.Height);

    dis := XtDisplay(w);
    win := XtWindow(w);
    gc := XCreateGC(dis, win, 0, nil);
    XSetForeground(dis, gc, $0);
    XDrawLine(dis, win, gc, 10, 10, 100, 100);
    XFree(gc);
  end;

  procedure main;
  const
    ListData: array of PChar = (
      'abcabcabcabc', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'Ich bin ein sehr langer Text',
      'abc', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'Ich bin ein sehr langer Text');

  var
    c: PChar;
    i: integer;
    list, toplevel, box, command, label1, drawing, BtnListSet3, BtnListCleraHiglight, BtnListShowSelect: TWidget;
    wargs: array[0..3] of TArg;

    colargs: array of TArg = ((Name: XtNbackground;
      valueI: $FF00), (Name: XtNforeground; valueI: $FFFF00), (Name: XtNlabel; valueP: '$FFFF00'));

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @argc, argv);

    box := XtCreateManagedWidget('hallo', boxWidgetClass, toplevel, nil, 0);

    label1 := XtVaCreateManagedWidget('Label für ein Titel', labelWidgetClass, box, XtNborderWidth, 0, nil);


    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('Hello' + LineEnding + LineEnding + 'Ich bin ein sehr langer Text !   Ich bin ein sehr langer Text !', commandWidgetClass, box, nil, 0);
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

    command := XtVaCreateManagedWidget('TestBox', commandWidgetClass, box, XtNforeground, $FFFFFF, XtNbackground, $FF, nil);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtVaCreateManagedWidget('TestBox', commandWidgetClass, box, XtNlabel, 'label', XtNforeground, $FFFF00, XtNbackground, $000000, XtNheight, 100, nil);
    XtAddCallback(command, XtNcallback, @press_Hello, PChar('Hallo Welt'));

    command := XtCreateManagedWidget('quit', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @quit, nil);

    list := XtVaCreateManagedWidget('Liste', listWidgetClass, box, XtNborderColor, $FF0000, XtNforeground, $FF88FF, XtNbackground, $88FF88, XtNwidth, 1, XtNinternalWidth, 200, XtNdefaultColumns, 5, XtNverticalList, True, nil);
    XawListChange(list, @ListData[0], Length(ListData), 50, True);

    BtnListSet3 := XtCreateManagedWidget('List Set 3', commandWidgetClass, box, nil, 0);
    XtAddCallback(BtnListSet3, XtNcallback, @ListSet3, list);

    BtnListCleraHiglight := XtCreateManagedWidget('List Clear Higlight', commandWidgetClass, box, nil, 0);
    XtAddCallback(BtnListCleraHiglight, XtNcallback, @ListClearHiglight, list);

    BtnListShowSelect := XtCreateManagedWidget('List Show Select', commandWidgetClass, box, nil, 0);
    XtAddCallback(BtnListShowSelect, XtNcallback, @ListShowSelect, list);


    drawing := XtVaCreateManagedWidget('drawing', coreWidgetClass, box, XtNheight, 300, XtNwidth, 300, XtNbackground, $FF8888, nil);
    XtAddEventHandler(drawing, ExposureMask, False, @draw_event, nil);
    XtAddEventHandler(drawing, ButtonPressMask, False, @press_Hello, nil);

    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
