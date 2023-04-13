//image image.png
(*
Man kann die Tastatur-Wiederholung ein und ausschalten.
Dabei ist zu beachten, das dieser Zustand Global über das ganze System läuft, auch nach dem man das Programm beendet hat !
*)
//lineal
//code+
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Fenster Titel festlegen
    XStoreName(dis, win, 'Fenster mit Classen');

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    // Tasturwiederholung aus
    XAutoRepeatOff(dis);
  end;

  destructor TMyWin.Destroy;
  begin
    // Tasturwiederholung an
    XAutoRepeatOn(dis);

    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        KeyPress: begin
          WriteLn(Event.xkey.keycode);

          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
      end;

    end;
  end;

var
  MyWindows: TMyWin;

begin
  // Programm inizialisieren
  MyWindows := TMyWin.Create;

  // Programm ablaufen lassen
  MyWindows.Run;

  // Alles aufräumen und beenden
  MyWindows.Free;

end.
//code-
