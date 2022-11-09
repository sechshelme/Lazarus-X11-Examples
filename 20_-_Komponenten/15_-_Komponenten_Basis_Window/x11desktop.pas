unit X11Desktop;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component, X11Window;

type

  TX11Desktop = class(TX11Window)
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
  end;

implementation

{ TX11Desktop }

constructor TX11Desktop.Create(TheOwner: TX11Component);
begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);

  inherited Create(TheOwner);
end;

destructor TX11Desktop.Destroy;
begin
  inherited Destroy;
end;

end.
