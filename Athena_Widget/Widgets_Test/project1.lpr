program project1;

uses
  heaptrc,
  xlib,
  x,
  Xresource,
  XTStringDefs,
  XTCore,
  XawList,
  XTIntrinsic,
  XTComposite,
  XawToggle,
  XawCardinals,
  XawForm,
  XawGrip,
  XawSimple,
  XawSmeBSB,
  XawSmeLine,
  XawSme,
  XawTip,
  XawScrollbar,
  XawDialog,
  XawRepeater,
  XmuConverters,
  XmuDrawing,
  XawBox,
  XawAllWidgets,
  XawLabel,
  XawCommand,
  XawReports,
  XawViewport,
  XawXawInit,
  XawMenuButton,
  XawPaned,
  XawPanner,

  XTConstraint,
  XTObject,
  XTRectObj,
  XTShellI,


  //  XawTemplate,
  XawTextSink,
  XawTextSrc,
  XawText,
  xawMultiSink,
  XawMultiSrc,
  XawTree,
  XawAsciiSink,
  XawAsciiSrc,
  XawAsciiText,
  XawPorthole,
  XawStripChart,
  XmuWidgetNode,
  awScrollBar,
  awList,
  awDialog,
  awDrawScreBox,
  awUTF8Label,
  MyDialog,
  AwToggle,
  awMenu,
  awViewport,
  awAscii,
  awPrintWidgets;

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
    toplevel, box, command, Rptr, label1, grip, tip, viewPort, form, template, tex, tree, paned, panner, porthole, stripChart,
      constrant, composite: TWidget;
    wargs: array[0..3] of TArg;

    colargs: array of TArg = ((Name: XtNbackground;
      valueI: $FF00), (Name: XtNforeground; valueI: $FFFF00), (Name: XtNlabel; valueP: '$FFFF00'));

  begin
    PrintWidgets;

    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @argc, argv);

    box := XtVaCreateManagedWidget('BasisBox', boxWidgetClass, toplevel, XtNwidth, 1600, nil);

    CreateMenu(box);

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

    CreateRadioBox(box, 'Meine Radio Box');

    CreateScrollBar(box);

    command := XtCreateManagedWidget('Neuer' + LineEnding + 'Dialog !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_new_Dialog, nil);

    //    tip := XtCreateManagedWidget('Neuer' + LineEnding + 'Dialog !', tipWidgetClass, command, nil, 0);
    XtVaSetValues(command, XtNtip, 'Hier klicken fuer einen neuen Dialog !', nil);
    XawTipEnable(command);

    command := XtCreateManagedWidget('Ein Knopf', commandWidgetClass, box, nil, 0);
    XtVaSetValues(command, XtNtip, 'Ich bin ein einfacher Knopf !!!', nil);
    XawTipEnable(command);

    CreateViewport(box);

    //  template:=  XtVaCreateManagedWidget('template', templateWidgetClass, box, XtNheight, 30, XtNwidth, 30, XtNbackground, $88FF88, nil);

    //      tex:=  XtVaCreateManagedWidget('text', textSinkObjectClass, box, XtNheight, 30, XtNwidth, 30, XtNbackground, $88FF88, nil);

    CreateAsciiText(box);

    tree := XtVaCreateManagedWidget('tree', treeWidgetClass, box, XtNlabel, 'tree', XtNheight, 200, XtNwidth, 30, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

    paned := XtVaCreateManagedWidget('paned', panedWidgetClass, box, XtNlabel, 'paned', XtNheight, 250, XtNwidth, 130, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

    command := XtCreateManagedWidget('Knopf 1', commandWidgetClass, paned, nil, 0);
    command := XtCreateManagedWidget('Knopf 2', commandWidgetClass, paned, nil, 0);
    command := XtCreateManagedWidget('Knopf 3', commandWidgetClass, paned, nil, 0);

    panner := XtVaCreateManagedWidget('paned', pannerWidgetClass, box, XtNheight, 250, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

    //command := XtCreateManagedWidget('Knopf 1', commandWidgetClass, panner, nil, 0);
    //command := XtCreateManagedWidget('Knopf 2', commandWidgetClass, panner, nil, 0);
    //command := XtCreateManagedWidget('Knopf 3', commandWidgetClass, panner, nil, 0);

    porthole := XtVaCreateManagedWidget('porthole', portholeWidgetClass, box, XtNheight, 200, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

    command := XtCreateManagedWidget('Knopf 1', commandWidgetClass, porthole, nil, 0);
    command := XtCreateManagedWidget('Knopf 2', commandWidgetClass, porthole, nil, 0);
    command := XtCreateManagedWidget('Knopf 3', commandWidgetClass, porthole, nil, 0);

    composite := XtVaCreateManagedWidget('StripChart', compositeWidgetClass, box, XtNheight, 150, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
    stripChart := XtVaCreateManagedWidget('StripChart', stripChartWidgetClass, composite, XtNheight, 150, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
//    constrant := XtVaCreateManagedWidget('constrant', rectObjClass, stripChart, XtNheight, 150, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);

constrant := XtVaCreateManagedWidget('sonstraint', constraintWidgetClass, box, XtNheight, 150, XtNwidth, 130, XtNvSpace, 50, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);


    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
