//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.
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
    win1, win2: TWindow;
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
    win1 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    win2 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win1, KeyPressMask or KeyReleaseMask or ExposureMask);
    XSelectInput(dis, win2, KeyPressMask or KeyReleaseMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win1);
    XMapWindow(dis, win2);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win2);
    XDestroyWindow(dis, win1);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    e: TXEvent;
    status: TStatus;
  const
    myEvent = 37;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      WriteLn('Event: ', Event._type);

      case Event._type of
        Expose: begin
          WriteLn('expose');
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_space: begin
              WriteLn('space');
              e._type := Expose;
              e.xkey.window := win1;

              //              XSendEvent(dis, win1, False, myEvent, @e);
              status := XSendEvent(dis, win1, True, Expose, @e);
              if status = 0 then begin
                WriteLn('fehler');
              end;

            end;
          end;
        end;
        ClientMessage: begin
          WriteLn('Hallo');
        end;
        DestroyNotify: begin
          WriteLn('Ende ', Event.xbutton.window);
          //          Exit;
        end;
      end;

    end;
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
