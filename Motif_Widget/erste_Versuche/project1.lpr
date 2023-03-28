program project1;

uses
  xlib,
  x,
  XmPushB,
  XawCommand,
  XTIntrinsic,
  XTStringdefs,
  XmXmStrDefs,
  XmXm,
  XmText,
  XmMainW,
  XmMessageB,
  XmCommand,
  XmContainer,
  XmRowColumn,
  XmScrollBar,

  XmColorS,
  XmContainerT,
  XmDialogS,
  XmButtonBox,
  XmDataF,
  XmLabel,
  XmLabelG,
  XmList,
  XmColumn,

  xmCutPaste,
  XmDisplay,
  XmMultiList,
  XmToolTipT,
  XmToolTipCT,
  XmStrDefs22,


  MyButtons,
  MyMesssageDialog,
  MyMenuBox, MyList;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// h2pas -p -T -d -c -e Intrinsic.h

// https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/

  procedure main;
  var
    i: integer = 0;
    toplevel, box, sb, box2, bb, edit1, label1, column1, multiList1: TWidget;
    app: TXtAppContext;

  begin

    WriteLn(SizeOf(LongInt));
    //    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    toplevel := XtVaAppInitialize(@app, 'Mein Fenster', nil, 0, @argc, argv, nil, nil);

//    box := XmVaCreateManagedContainer(toplevel, 'box', XtNwidth, 320, XtNheight, 320, nil);
    box := XmVaCreateManagedContainer(toplevel, 'box',  nil);

//    XmVaCreateManagedCommand(box, 'box', XtNwidth, 75, XtNheight, 25, nil);
//    CreateMessageBox(box, toplevel);

    // https://www.oreilly.com/openbook/motif/vol6a/Vol6a_html/ch09.html
    box2 := XmVaCreateManagedContainer(box, 'box',XtNwidth,50,XtNbackground,$FFFF,  nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 250, XtNbackground, $FF, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 250, XtNbackground, $FF00, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 250, XtNbackground, $FF0000, nil);


//    CreateButtons(box);

//    CreateMenuBox(box);

    //    XmVaCreateManagedRowColumn(toplevel, 'test', XtNwidth,5, XtNheight,50,nil);

    XmVaCreateColorSelector(box,'col',XtNwidth,50, XtNheight,50 ,nil);

    bb:=XmVaCreateManagedButtonBox(box, 'bb',XtNbackground,$FF, nil);
    XmVaCreateManagedPushButton(bb, 'Button 1',nil);
    XmVaCreateManagedPushButton(bb, 'Button 2',nil);
    XmVaCreateManagedPushButton(bb, 'Button 3',nil);

    XmVaCreateManagedLabelGadget(box, 'Ich bin ein Label', nil);

label1:=    XmVaCreateManagedLabel(box, 'Ich bin ein Label', nil);

    edit1:= XmVaCreateManagedDataField(box, 'bb',XtNbackground,$FFFFFF, nil);

    CreateList(box);

//column1:=    XmVaCreateManagedColumn(box,'col',XtNwidth,50, XtNheight,50,XtNbackground,$FF00FF ,nil);
//edit1:= XmVaCreateManagedDataField(column1, 'edit',XtNbackground,$FFFFFF, nil);


// ToolTip: https://github.com/drbitboy/Motif_tooltip_example/blob/master/motif_tooltip.c

multiList1:= XmVaCreateManagedMultiList(box,'col',XtNwidth,50, XtNheight,50,XtNbackground,$FF0000 ,nil);


    XtRealizeWidget(toplevel);

    //    XtMainLoop;
    XtAppMainLoop(app);
  end;

begin
  main;
end.
