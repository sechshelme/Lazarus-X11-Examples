# 20 - Event Handle
## 15 - xkill abfangen

![image.png](image.png)

Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.

---

```pascal
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

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss **KeyPressMask** gebraucht.
    XSelectInput(dis, win, KeyPressMask or ResizeRedirectMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    // [X] abfangen
    wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);
    XSetWMProtocols(dis, win, @wm_delete_window, 1);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    quit: boolean = False;
  const
    myEvent = 37;
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
          end;
        end;
        ResizeRequest: begin
          WriteLn('resize');
        end;

        ClientMessage: begin
          if (Event.xclient.Data.l[0] = wm_delete_window) then begin
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
```


