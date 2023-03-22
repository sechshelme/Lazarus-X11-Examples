program project1;

uses
  xlib,
  x,
  XmPushB,
  XawCommand,
  XTIntrinsic,
  XTStringdefs,
  XmXmStrDefs,
  XawBox, MyButtons;

const
  libXaw = 'libXaw';
  libXt = 'libXt';
  libXm = 'libXm';

  // h2pas -p -T -d -c -e Intrinsic.h

  // https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/


//var
  //xmPushButtonWidgetClass:Pointer;cvar; external libXm;


  procedure main;
  var
    i: integer = 0;
    toplevel, box, command: TWidget;

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    box:=XtCreateManagedWidget('hallo', boxWidgetClass, toplevel,nil,0);

    CreateButtons(box);

    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.