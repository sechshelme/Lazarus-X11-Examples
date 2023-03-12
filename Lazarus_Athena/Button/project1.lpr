program project1;

uses
  xlib,
  x,
  Xresource,
  X11StringDefs,
  XTCore,
  XawList,
  X11Intrinsic,
  XawToggle,
  XawCardinals,
  XawForm,
  XawGrip,
  XawSimple,
  XawSmeBSB,
  XawSmeLine,
  XawSme,
  XawScrollbar,
  XawDialog,
  XawRepeater,
  XmuDrawing,
  XawBox,
  XawLabel,
  XawCommand,
  awScrollBar,
  awList,
  awDialog,
  awDrawScreBox, awUTF8Label, MyDialog, AwToggle;

// h2pas -p -T -d -c -e Intrinsic.h

//https://www.tutorialspoint.com/cprogramming/c_pointer_to_pointer.htm
// define pointer of pointer

procedure press_Hello(w: TWidget; p: Pointer; p2: Pointer); cdecl;
begin
  WriteLn('Hello World');
  if p <> nil then begin
    WriteLn(PChar(p));
  end;
end;

procedure press_new_Dialog(w: TWidget; p: Pointer; p2: Pointer); cdecl;
begin
  CreateMyDialog(XtParent(w));
end;

  procedure quit(w: TWidget; p: Pointer; p2: Pointer); cdecl;
  begin
//    XtDestroyWidget(XtParent(XtParent(w)));
//    XtCloseDisplay(XtDisplay(w));
    Halt;
  end;

  procedure main;
  var
    list, toplevel, box, command, Rptr, label1, form, grip: TWidget;
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

    // ListBox
    CreateList(box);

    // Draw Box with core
    CreateCoreBoxDraw(box);

    // Repeator Button
    Rptr := XtVaCreateManagedWidget('repeaterWidgetClass BTN', repeaterWidgetClass, box, XtNminimumDelay, 1000, nil);
    XtAddCallback(Rptr, XtNcallback, @press_Hello, nil);

    // Form
    form := XtVaCreateManagedWidget('drawing', formWidgetClass, box, XtNheight, 30, XtNwidth, 30, XtNbackground, $88FF88, nil);

    // Dialog
    CreateDialog(box);

    grip := XtVaCreateManagedWidget('grip', gripWidgetClass, box, XtNlabel, 'grip', XtNheight, 300, XtNwidth, 30, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

    //     sme := XtVaCreateManagedWidget('sme', smeBSBObjectClass, box, XtNlabel, 'Äenderung im Projekt speichern ?', XtNheight, 300, XtNwidth, 30,XtNforeground,$FFFF88, XtNbackground, $8888FF, nil);

    // scrollbar;

//    CreateUTF8Label(box);

    CreateScrollBar(box);

    CreateRadioBox(box);

    command := XtCreateManagedWidget('Neuer' + LineEnding + 'Dialog !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_new_Dialog, nil);


    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
