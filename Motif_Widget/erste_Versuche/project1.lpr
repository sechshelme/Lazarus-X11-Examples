program project1;

uses
  xlib,
  x,
  XmPushB,
  XawCommand,
  XTIntrinsic,
  XTStringdefs,
  XTComposite,
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
  XmXmStrDefs22,
  XmDragC,
  XmTextF,
  XmMwmUtil,
  XmExt,
  XmExt18List,
  XmAccColorT,
  XmxmList,
  XmDropSMgr,
  XmMenuT,
  XmTabList,
  XmProtocols,
  XmComboBox,
  XmComboBox2,

  XmTransfer,
  XmVirtKeys,
  XmRepType,
  XmXmfuncs,
  XmDropDown,
  XmIconBox,
  XmNavigatorT,
  XmXmIm,
  XmXmStrDefs23,
  XmFileSB,
  XmNotebook,
  XmSelectioB,
  XmScrollFrameT,
  XmSlideC,
  XmToggleB,
XmToggleBG,
  XmIconButton,
  XmFontS,
  XmCascadeBG,
  XmScrolledW,
  XmSSpinB,
  XmContItemT,
  XmDialogSavvyT,
  XmPaned,
  XmCascadeB,
  XmBulletinB,
  XmScale,
  XmPanedW,
  XmOutline,
  XmTree,
  XmHierarchy,
  XmDropTrans,
  XmTabStack,
  XmSeparatoG,
  PushBG,
  XmIconG,
  XmForm,
  XmDrawnB,
  XmDrawingA,
  XmCareVisualT,
  XmSeparator,
  XmFrame,
  XmArrowB,
  XmArrowBG,


  MyButtons,
  MyMesssageDialog,
  MyMenuBox, MyList, MyComboBox;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// h2pas -p -T -d -c -e Intrinsic.h

// https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/

  procedure main;
  var
    i: integer = 0;
    toplevel, box, sb, box2, bb, edit1, label1, column1, multiList1,
      ext18, cb, dropdown, notebook, selection, cascade1, scrollwin1,
      bulettin1: TWidget;
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
    box2 := XmVaCreateManagedContainer(box, 'box',XtNwidth,50,XtNheight,200,XtNbackground,$FFFF,  nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 150, XtNbackground, $FF, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 150, XtNbackground, $FF00, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 15, XtNheight, 150, XtNbackground, $FF0000, nil);


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

//    CreateList(box);

//column1:=    XmVaCreateManagedColumn(box,'col',XtNwidth,50, XtNheight,50,XtNbackground,$FF00FF ,nil);
//edit1:= XmVaCreateManagedDataField(column1, 'edit',XtNbackground,$FFFFFF, nil);


// ToolTip: https://github.com/drbitboy/Motif_tooltip_example/blob/master/motif_tooltip.c

multiList1:= XmVaCreateManagedMultiList(box,'col',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

//ext18:=XmVaCreateManagedExt18List(box,'ext18',XtNwidth,50, XtNheight,50,XtNbackground,$FF0000 ,nil);

CreateComboBox(box);

    XtRealizeWidget(toplevel);

    dropdown:=    XmVaCreateManagedDropDown(box,'col',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

    notebook:=    XmVaCreateManagedNotebook(box,'col',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

    selection:=    XmVaCreateManagedSelectionBox(box,'selction',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

    XmVaCreateManagedToggleButton(box,'toggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);
    XmVaCreateManagedToggleButtonGadget(box,'toggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);

cascade1:=    XmVaCreateManagedCascadeButtonGadget(box,'caascade',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

scrollwin1:=XmVaCreateManagedScrolledWindow(box,'caascade',XtNwidth,250, XtNheight,250,XtNbackground,$FF0000 ,nil);

XmVaCreateManagedToggleButton(scrollwin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);
XmVaCreateManagedToggleButton(scrollwin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);
XmVaCreateManagedToggleButton(scrollwin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);

XmVaCreateManagedSimpleSpinBox(box,'spinnbox',XtNwidth,200, XtNheight,25,XtNbackground,$FFFF00 ,nil);

bulettin1:= XmVaCreateManagedBulletinBoard(box,'bulletin',XtNbackground,$00FFFF ,nil);
XmVaCreateManagedToggleButton(bulettin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);
XmVaCreateManagedToggleButton(bulettin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);
XmVaCreateManagedToggleButton(bulettin1,'scrolltoggle',XtNwidth,75, XtNheight,25,XtNbackground,$FF0000 ,nil);

    //    XtMainLoop;
    XtAppMainLoop(app);
  end;

begin
  main;
end.
