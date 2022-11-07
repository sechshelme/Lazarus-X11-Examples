unit X11Window;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  X11Component;

type

  { TX11Window }

  TX11Window = class(TX11Component)
  private
    scr: cint;
  public
    AppClose: boolean; static;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
    procedure Run;
  end;

implementation

constructor TX11Window.Create(TheOwner: TX11Component);
begin
  inherited Create(TheOwner);

  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);

  // Erstellt das Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Wählt die gewünschten Ereignisse aus
  // Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.
  XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or StructureNotifyMask or PointerMotionMask or StructureNotifyMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  Anchors := [akTop, akLeft, akRight, akBottom];
end;

destructor TX11Window.Destroy;
begin
  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
  inherited Destroy;
end;

procedure TX11Window.Run;
var
  Event: TXEvent;
begin
  // Ereignisschleife
  while not AppClose do begin
    XNextEvent(dis, @Event);
    DoOnEventHandle(Event);
  end;
end;

end.
