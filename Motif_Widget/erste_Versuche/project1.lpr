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


  XawBox, MyButtons, MyMesssageDialog;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  // h2pas -p -T -d -c -e Intrinsic.h

  // https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/


  procedure main;
  var
    i: integer = 0;
    toplevel, box, sb: TWidget;
    app: TXtAppContext;

  begin
    WriteLn(sizeof(LongInt));

    WriteLn(PtrUInt( XmDEFAULT_FONT));
    WriteLn(PtrUInt( _XmSDEFAULT_FONT));

//    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    toplevel := XtVaAppInitialize(@app, 'Mein Fenster', nil, 0, @argc, argv, nil,nil);

        box:=XmVaCreateManagedContainer(toplevel,'box',XtNwidth, 320, XtNheight,320,nil);
//       box:=XmVaCreateManagedMainWindow(toplevel,'box',XtNwidth, 320, XtNheight,320,nil);
//    box:=XtCreateManagedWidget('hallo', boxWidgetClass, toplevel,nil,0);

//XmVaCreateManagedCommand(box,'box',XtNwidth,75, XtNheight,25,nil);
//XmVaCreateManagedCommand(box,'box',XtNwidth,75, XtNheight,25,nil);


// https://www.oreilly.com/openbook/motif/vol6a/Vol6a_html/ch09.html
   sb:=XmVaCreateManagedScrollBar(box, 'sb', XtNwidth,5, XtNheight,50, nil);

    CreateButtons(box);

    CreateMessageBox(box,toplevel);

    XmVaCreateManagedRowColumn(toplevel, 'test', XtNwidth,5, XtNheight,50,nil);

    XtRealizeWidget(toplevel);

//    XtMainLoop;
    XtAppMainLoop(app);
  end;

begin
  main;
end.
