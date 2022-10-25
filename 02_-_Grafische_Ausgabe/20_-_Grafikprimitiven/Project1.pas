//image image.png
(*
In den meisten Fällen ist es nötig, das man etwas auf das Fenster zeichnet.
Hier im Beispiel ist es ein einfaches Rechteck, welches mit <b>XFillRectangle</b> gezeichnet wird.
XFillRectangle(Display, Windows, GC, PosX, PosY, Breite, Höhe)
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
    depth: cint;
    rootwin, win: TWindow;
    gc: TGC;
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
    // Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.
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
    poly: array[0..3] of TXPoint;
    punkte: array[0..49] of TXPoint;
    i: integer;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          // Das Rechteck wird gezeichnet
          XClearWindow(dis, win);
          // Ein Rechteck zeichnen
          XDrawRectangle(dis, win, gc, 10, 50, 50, 50);
          // Einen rechteckigen Bereich mit Farbe füllen
          XFillRectangle(dis, win, gc, 110, 50, 50, 50);
          // Einen Kreis zeichnen
          XDrawArc(dis, win, gc, 210, 50, 50, 50, 0, 360 * 64);
          // Einen Kreisbereich füllen
          XFillArc(dis, win, gc, 310, 50, 50, 50, 0, 360 * 64);
          // Eine Ellipse zeichnen
          XDrawArc(dis, win, gc, 410, 50, 60, 40, 0, 360 * 64);
          // Einen Ellipsenbereich füllen
          XFillArc(dis, win, gc, 510, 50, 60, 40, 0, 360 * 64);
          // Einen Halbkreis zeichnen
          XDrawArc(dis, win, gc, 10, 200, 60, 40, 90 * 64, 180 * 64);
          // Einen Halbkreis füllen
          XFillArc(dis, win, gc, 110, 200, 60, 40, 90 * 64, 180 * 64);
          // Einen bestimmten Bereich im Polygon (in diesem Fall ein
          // Dreieck füllen ausgefuelltes Polygon bzw. Dreieck
          // geschlossenes Dreieck
          poly[0].x := 200;
          poly[0].y := 200;
          poly[1].x := 300;
          poly[1].y := 300;
          poly[2].x := 400;
          poly[2].y := 200;
          poly[3].x := 200;
          poly[3].y := 200;
          XFillPolygon(dis, win, gc, poly, 4, 0, CoordModeOrigin);
          // Eine schräge Linie mit Punkten
          // Ein paar Felder belegen
          // Eine Schräge mithilfe von Punkten zeichnen
          for i := 0 to 49 do begin
            punkte[i].x := 470 + i;
            punkte[i].y := 200 + i;
          end;
          XDrawPoints(dis, win, gc, punkte, 50, CoordModeOrigin);
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
//code-
