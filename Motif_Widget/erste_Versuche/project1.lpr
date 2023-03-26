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
  XawBox,
  MyButtons,
  MyMesssageDialog,
  MyMenuBox;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// h2pas -p -T -d -c -e Intrinsic.h

// https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/


  procedure main;
  var
    i: integer = 0;
    toplevel, box, sb, box2: TWidget;
    app: TXtAppContext;

  begin

    //    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    toplevel := XtVaAppInitialize(@app, 'Mein Fenster', nil, 0, @argc, argv, nil, nil);

    box := XmVaCreateManagedContainer(toplevel, 'box', XtNwidth, 320, XtNheight, 320, nil);

    XmVaCreateManagedCommand(box, 'box', XtNwidth, 75, XtNheight, 25, nil);
    CreateMessageBox(box, toplevel);

    // https://www.oreilly.com/openbook/motif/vol6a/Vol6a_html/ch09.html
    box2 := XmVaCreateManagedContainer(box, 'box', XtNwidth, 320, XtNheight, 320, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 50, XtNheight, 250, XtNbackground, $FF, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 50, XtNheight, 250, XtNbackground, $FF00, nil);
    sb := XmVaCreateManagedScrollBar(box2, 'sb', XtNwidth, 50, XtNheight, 250, XtNbackground, $FF0000, nil);

    CreateButtons(box);

    CreateMenuBox(box);

    //    XmVaCreateManagedRowColumn(toplevel, 'test', XtNwidth,5, XtNheight,50,nil);

    XtRealizeWidget(toplevel);

    //    XtMainLoop;
    XtAppMainLoop(app);
  end;

begin
  main;
end.
