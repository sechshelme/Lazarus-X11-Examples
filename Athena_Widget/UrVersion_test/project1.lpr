program project1;

uses
  xlib,
  x ;

const
//  libXaw = 'libXaw.so';
//  libXt = 'libXt.so';
  libXaw = 'libXaw';
  libXt = 'libXt';

type
  TWidget = Pointer;


var
  boxWidgetClass:Pointer;cvar; external libXaw;
  commandWidgetClass:Pointer;cvar; external libXaw;
  XtStrings:array[0..30000] of Char;cvar; external libXaw;

  type
  myfunc=procedure (w:WideChar;p:Pointer;p2:Pointer);



  function XtInitialize(titel: PChar; Name: PChar; p: Pointer; i: integer; argc: PInteger; argv: PPChar): TWidget; cdecl; external libXt;
  function XtCreateManagedWidget(Name: PChar; boxWidgetC:Pointer; parent: TWidget; p:Pointer;i: integer): TWidget; cdecl; external libXt;

  function XtAddCallback(command:TWidget; p:Pointer; f:myfunc;p2:Pointer): TWidget; cdecl; external libXt;

  procedure XtRealizeWidget(w:TWidget);cdecl;external libX11;
  procedure XtMainLoop;cdecl; external libX11;

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
    XtAddCallback(command,  @XtStrings[136],@press_hello,nil);

    command:=XtCreateManagedWidget('Quit Button', commandWidgetClass, box,nil,0);

    XtRealizeWidget(toplevel);

     XtMainLoop;

  end;

begin
  main;
end.
