program project1;

uses
  StringDefs,
  xlib,
  x;

const
  libXaw = 'libXaw.so';
  libXt = 'libXt.so';


type
  TWidget = Pointer;


  var
    boxWidgetClass:Pointer;cvar; external libXaw;
    commandWidgetClass:Pointer;cvar; external libXaw;
  //  XtStrings:array[0..30000] of Char;cvar; external libXaw;

  //  XtNcallback:PChar=@XtStrings[136];

type
  Tmyfunc = procedure(w: widechar; p: Pointer; p2: Pointer);



  function XtInitialize(titel: PChar; Name: PChar; p: Pointer; i: integer; argc: PInteger; argv: PPChar): TWidget; cdecl; external libXt;
  function XtCreateManagedWidget(Name: PChar; boxWidgetC: Pointer; parent: TWidget; p: Pointer; i: integer): TWidget; cdecl; external libXt;

  function XtAddCallback(command: TWidget; p: PChar; f: Tmyfunc; p2: Pointer): TWidget; cdecl; external libXt;

  procedure XtRealizeWidget(w: TWidget); cdecl; external libX11;
  procedure XtMainLoop; cdecl; external libX11;

  procedure press_Hello(w: widechar; p: Pointer; p2: Pointer);
  begin
    WriteLn('Hello World');
  end;

  procedure quit(w: widechar; p: Pointer; p2: Pointer);
  begin
    Halt;
  end;


  procedure main;
  var
    i: integer = 0;
    toplevel, box, command: TWidget;

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
    box := XtCreateManagedWidget('hallo', boxWidgetClass, toplevel, nil, 0);

    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    //    XtAddCallback(command,  @XtStrings[136],@press_Hello,nil);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('quit', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @quit, nil);
    WriteLn(XtNcallback);

    XtRealizeWidget(toplevel);

    XtMainLoop;

  end;

begin
  main;
end.
