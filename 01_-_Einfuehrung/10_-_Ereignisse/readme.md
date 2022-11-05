# 01 - Einfuehrung
## 10 - Ereignisse

![image.png](image.png)

Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.

---
In diesem Beispiel hat es genau zwei Erreigniss.
Eines fängt die Tastatur ab und überprüft, ob **[ESC]** gedrückt wird.
Und das andere gibt einen String aus.

**XNextEvent(dis, @Event);** wartet, bis ein Ereigniss eintritt, in diesem Beispiel **Tastatur** und **Zeichnen**. Das Ergniss steht in **Event** plus noch zusätliche Daten, wie MausPos, Fenstergrösse, etc.
Das **XNextEvent** überhaupt auf ein Ereigniss reagiert, muss man es mit **XSelectInput** festlegen.
Dies geschieht so: **XSelectInput(dis, win, KeyPressMask or ExposureMask);**

Diese Kombinationen sind mit **XNextEvent** und **XSelectInput** möglich: (Events)[https://tronche.com/gui/x/xlib/events/processing-overview.html]

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
    gc: TGC;
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
    gc := DefaultGC(dis, scr);
    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss "KeyPressMask" und "ExposureMask" gebraucht.
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
    msg: Pchar= 'Mit [ESC] abbrechen !';
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
      Expose: begin
        // Gibt einen String aus
        XDrawString(dis, win, gc, 100, 100, msg, strlen(msg));
      end;
      KeyPress: begin
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
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
```


