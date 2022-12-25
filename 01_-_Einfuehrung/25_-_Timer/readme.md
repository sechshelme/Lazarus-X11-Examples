# 01 - Einfuehrung
## 40 - Timer

![image.png](image.png)

Besser man macht es objektorientiert mit Klassen.
Dies macht es übersichtlicher und ausbaufähiger.

---

```pascal
program Project1;

uses
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  Unix,
  x;

type

  // https://stackoverflow.com/questions/17262176/x-trigger-events-at-fixed-intervals

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure wait;
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := 900000000;
    Req.tv_sec := 0;
    fpNanoSleep(@Req, @rem);
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
    gc := XCreateGC(dis, win, 0, nil);

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss **KeyPressMask** gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
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
  begin
    // Ereignisschleife
    while (True) do begin
      if XPending(dis) <> 0 then begin
        XNextEvent(dis, @Event);

        case Event._type of
          Expose: begin
            XDrawRectangle(dis, win, gc, 10, 10, Event.xexpose.Width - 20, Event.xexpose.Height - 20);
          end;

          KeyPress: begin
            // Beendet das Programm bei [ESC]
            if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
              Break;
            end;
          end;
        end;

      end else begin
        XDrawLine(dis, win, gc, 10, 10, Random(Event.xexpose.width), Random(Event.xexpose.height));
        wait;
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
```


