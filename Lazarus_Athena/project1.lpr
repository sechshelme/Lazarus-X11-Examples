program project1;

uses
  xlib,
  x;

const
  libXaw = 'libXaw.so';
  libXt = 'libXt.so';


type
  TWidget = Pointer;


var TWidgetClass: WidgetClass; external libXt;

  function XtInitialize(titel: PChar; Name: PChar; p: Pointer; i: integer; argc: PInteger; argv: PPChar): TWidget; cdecl; external libXt;
  function XtCreateManagedWidget(Name: PChar; boxWidgetClass:TWidgetClass; parent: TWidget; p;Pointer; integer): TWidget; cdecl; external libXt;



  procedure main;
  var
    i: integer = 0;
    toplevel: TWidget;

  begin
    toplevel := XtInitialize('Mein Fenster', 'noname', nil, 0, @i, nil);
  end;

begin
  main;
end.
