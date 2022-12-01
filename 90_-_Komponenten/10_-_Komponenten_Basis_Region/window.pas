unit Window;

{$mode ObjFPC}{$H+}

interface

uses
  unixtype, ctypes, xlib, xutil, keysym, x,
  Component;

type

  { TX11Window }

  TX11Window = class(TX11Component)
  private
    wm_delete_window: TAtom;
    scr: cint;
  public
    AppClose: boolean; static;
    constructor Create(TheOwner: TX11Component);
    destructor Destroy; override;
    procedure DoOnEventHandle(var Event: TXEvent); override;
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
  LastWindowWidth := 640;
  LastWindowHeight := 480;
  Width := LastWindowWidth;
  Height := LastWindowHeight;

  wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, LastWindowWidth, LastWindowHeight, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Wählt die gewünschten Ereignisse aus
  // Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.
  XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or SubstructureNotifyMask or StructureNotifyMask or PointerMotionMask);

  // Fenster anzeigen
  XMapWindow(dis, win);

  // [X] abfangen
  XSetWMProtocols(dis, win, @wm_delete_window, 1);
end;

destructor TX11Window.Destroy;
begin
  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
  inherited Destroy;
end;

procedure TX11Window.DoOnEventHandle(var Event: TXEvent);
begin
  inherited DoOnEventHandle(Event);
  case Event._type of
    CreateNotify: begin
      WriteLn('create');
    end;
    ConfigureNotify: begin
      LastWindowWidth := Event.xconfigure.Width;
      LastWindowHeight := Event.xconfigure.Height;
      WriteLn('Event.xconfigure.Width ',Event.xconfigure.Width);
      Width := LastWindowWidth;
      Height := LastWindowHeight;
    end;
  end;
  DoOnResize(Event.xconfigure.Width, Event.xconfigure.Height);
  //  inherited DoOnEventHandle(Event);
  case Event._type of
    CreateNotify: begin
    end;
    ConfigureNotify: begin
      //      Width := LastWindowWidth;
      //      Height := LastWindowHeight;
    end;
  end;
  //  inherited DoOnEventHandle(Event);

end;

procedure TX11Window.Run;
var
  Event: TXEvent;
begin
  // Ereignisschleife
  while not AppClose do begin
    XNextEvent(dis, @Event);

    case Event._type of
      ClientMessage: begin
        if (Event.xclient.Data.l[0] = wm_delete_window) then begin
          WriteLn('[X] wurde gedrückt');
          AppClose := True;
        end;
      end;
    end;

    DoOnEventHandle(Event);
  end;
end;

end.
