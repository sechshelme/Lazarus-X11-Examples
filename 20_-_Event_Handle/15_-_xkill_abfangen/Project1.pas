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
    win: TWindow;
    subwin1, subwin2: TWindow;
    widht, Height: cuint;
    wm_delete_window: TAtom;
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

    widht := 320;
    Height := 200;

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, widht, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    subwin1:=XCreateSimpleWindow(dis, win, 10, 10, 100, 50, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    subwin2:=XCreateSimpleWindow(dis, win, 120, 10, 100, 50, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XSelectInput(dis, subwin1, KeyPressMask or ExposureMask);
    XSelectInput(dis, subwin2, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
    XMapWindow(dis, subwin1);
    XMapWindow(dis, subwin2);

    // [X] abfangen
    wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);
    XSetWMProtocols(dis, win, @wm_delete_window, 1);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    quit: boolean = False;
  begin
    // Ereignisschleife
    while not quit do begin
      XNextEvent(dis, @Event);
      WriteLn('Event: ', Event._type);

      case Event._type of
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              quit := True;
            end;
            XK_k: begin
              XKillClient(dis, subwin1);
            end;
            XK_d: begin
              XDestroyWindow(dis, subwin2);
            end;
          end;
        end;
        ResizeRequest: begin
          WriteLn('resize');
        end;

        ClientMessage: begin
          if Event.xclient.Data.l[0] = wm_delete_window then begin
            WriteLn('[X] wurde gedrückt');
            quit := True;
          end;
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
