program project1;

uses
  XawCommand,
  XTStringdefs,
  XawBox,
  XTIntrinsic;

// https://www.oreilly.com/openbook/motif/vol6a/Vol6a_html/ch02.html

var
  toplevel, button1, button2, box: TWidget;
  app: TXtAppContext;
begin
//  toplevel := XtInitialize('Erstes Fenster', 'noname', nil, 0, @argc, argv);
  toplevel := XtVaAppInitialize(@app, 'noname', nil,0,  @argc, argv,nil,XtNwidth, 320,XtNheight,200, nil);
  box := XtCreateManagedWidget('box', boxWidgetClass, toplevel, nil, 0);
  button1 := XtCreateManagedWidget('Buttton 1', commandWidgetClass, box, nil, 0);
  button2 := XtCreateManagedWidget('Buttton 2', commandWidgetClass, box, nil, 0);

  XtRealizeWidget(toplevel);
//  XtMainLoop;
  XtAppMainLoop(app);
end.
