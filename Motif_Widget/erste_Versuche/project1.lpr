program project1;

uses
  xlib,
  x,
  XmPushB,
  XawCommand,
  XTIntrinsic,
  XTStringdefs,
  XmStrDefs,
  XawBox;

const
  libXaw = 'libXaw';
  libXt = 'libXt';
  libXm = 'libXm';

  // h2pas -p -T -d -c -e Intrinsic.h

  // https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/


//var
  //xmPushButtonWidgetClass:Pointer;cvar; external libXm;


  procedure press_hello(w:WideChar;p:Pointer;p2:Pointer);
  begin
    WriteLn('Hello World');
  end;


  procedure main;
  var
    i: integer = 0;
    toplevel, box, command: TWidget;

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    box:=XtCreateManagedWidget('hallo', boxWidgetClass, toplevel,nil,0);

    command:=XtCreateManagedWidget('Hello Button', commandWidgetClass, box,nil,0);
    XtAddCallback(command,  XtNcallback,@press_hello,nil);

    command:=XtCreateManagedWidget('Quit Button', commandWidgetClass, box,nil,0);

    command:=XtCreateManagedWidget('Ich bin ein ganz grosser'#10'Button', xmPushButtonWidgetClass, box,nil,0);
    command:=XtCreateManagedWidget('Ich bin ein ganz grosser'#10'zweiter Button', xmPushButtonWidgetClass, box,nil,0);
    XtAddCallback(command,  XmNactivateCallback,@press_hello,nil);

    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
