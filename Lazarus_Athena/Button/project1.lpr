program project1;

uses
  //Core,
  Xresource,
  StringDefs,
  Intrinsic,
  xlib,
  x;

// h2pas -p -T -S -d -c Intrinsic.h


const
  libXaw = 'libXaw.so';
  libXt = 'libXt.so';


  //type
  //  TWidget = Pointer;


var
     boxWidgetClass:Pointer;cvar; external libXaw;
     commandWidgetClass:Pointer;cvar; external libXaw;
  //  XtStrings:array[0..30000] of Char;cvar; external libXaw;

  //  XtNcallback:PChar=@XtStrings[136];

  //type
  //  Tmyfunc = procedure(w: TWidget; p: Pointer; p2: Pointer);        cdecl;


  //  function XtInitialize(titel: PChar; Name: PChar; p: Pointer; i: integer; argc: PInteger; argv: PPChar): TWidget; cdecl; external libXt;
  //function XtInitialize(_XtString:TXtString; __XtString:TXtString; para3:PXrmOptionDescRec; para4:TCardinal; para5:Plongint;  para6:PXtString):TWidget;cdecl;external libX11;


  //  function XtCreateManagedWidget(Name: PChar; boxWidgetC: Pointer; parent: TWidget; p: Pointer; i: integer): TWidget; cdecl; external libXt;

  //  function XtAddCallback(command: TWidget; p: PChar; f: TXtCallbackProc; p2: Pointer): TWidget; cdecl; external libXt;
  //  procedure XtAddCallback(para1:TWidget; _XtString:TXtString; para3:TXtCallbackProc; para4:TXtPointer);cdecl;external libX11;

  //  procedure XtRealizeWidget(w: TWidget); cdecl; external libX11;
  //  procedure XtMainLoop; cdecl; external libX11;

  procedure press_Hello(w: TWidget; p: Pointer; p2: Pointer); cdecl;
  begin
    WriteLn('Hello World');
  end;

  procedure quit(w: TWidget; p: Pointer; p2: Pointer); cdecl;
  begin
    Halt;
  end;


  procedure main;
  var
    toplevel, box, command: TWidget;
  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @argc, argv);
    box := XtCreateManagedWidget('hallo', boxWidgetClass, toplevel, nil, 0);

    command := XtCreateManagedWidget('Hello' + LineEnding + 'World !', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @press_Hello, nil);

    command := XtCreateManagedWidget('quit', commandWidgetClass, box, nil, 0);
    XtAddCallback(command, XtNcallback, @quit, nil);

    XtRealizeWidget(toplevel);

    XtMainLoop;
  end;

begin
  main;
end.
