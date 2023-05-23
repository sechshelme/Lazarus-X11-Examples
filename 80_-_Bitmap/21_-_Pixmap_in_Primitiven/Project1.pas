//image image.png
(*
Verschiedene Style um Rechtecke zu zeichnen.
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
  TxbmMask = record
    Width, Height: cuint;
    x_hot, y_hot: cint;
    bits: array of byte;
  end;

const
  cup: TxbmMask = (Width: 32; Height: 32; x_hot: 0; y_hot: 0; bits: (
    $00, $08, $00, $00, $00, $20, $00, $00, $00, $c1, $01, $00,
    $00, $01, $01, $00, $00, $02, $01, $00, $00, $84, $01, $00,
    $00, $58, $00, $00, $00, $50, $00, $00, $00, $ff, $07, $00,
    $c0, $90, $18, $00, $20, $6e, $23, $00, $60, $ef, $37, $00,
    $a0, $df, $ef, $03, $20, $fc, $23, $04, $20, $00, $e0, $09,
    $20, $00, $20, $12, $20, $00, $20, $14, $20, $00, $20, $14,
    $20, $00, $20, $14, $20, $00, $20, $14, $20, $00, $20, $14,
    $20, $00, $20, $14, $20, $00, $20, $12, $20, $00, $20, $09,
    $20, $00, $e0, $04, $20, $00, $20, $02, $20, $00, $e0, $01,
    $20, $00, $20, $00, $20, $00, $20, $00, $40, $00, $10, $00,
    $80, $01, $0c, $00, $00, $fe, $03, $00));




type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    Pixmap: TPixmap;
    function CreatePixmap(xmb: TxbmMask): TPixmap;
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

    // Pixmap laden
    Pixmap := CreatePixmap(cup);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  function TMyWin.CreatePixmap(xmb: TxbmMask): TPixmap;
  begin
    Result := XCreatePixmapFromBitmapData(dis, win, PChar(xmb.bits), xmb.Width, xmb.Height, $88FF88, $FF8888, DefaultDepth(dis, scr));
  end;

  procedure TMyWin.Run;
  const
    maxSektoren = 8;
  var
    Event: TXEvent;
    punkte: array[0..maxSektoren] of TXPoint;
    i: integer;
  begin
    for i := 0 to maxSektoren - 1 do begin
      punkte[i].x := round(Sin(Pi * 2 / (maxSektoren - 1) * i) * 50) + 200;
      punkte[i].y := round(Cos(Pi * 2 / (maxSektoren - 1) * i) * 50) + 170;
    end;

    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          // Bildschirm löschen
          XClearWindow(dis, win);

          // Gibt den Zeichnungsstyl an
          XSetLineAttributes(dis, gc, 3, LineDoubleDash, CapNotLast, JoinBevel);
          XSetFillStyle(dis, gc, FillTiled);
          XSetTile(dis, gc, Pixmap);

          // Ein Rechteck zeichnen
          XDrawRectangle(dis, win, gc, 10, 50, 50, 50);

          // Einen rechteckigen Bereich mit Farbe füllen
          XFillRectangle(dis, win, gc, 110, 50, 50, 50);

          // Ein Polygon
          XFillPolygon(dis, win, gc, @punkte, Length(punkte) - 1, 0, CoordModeOrigin);
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_space: begin
            end;
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
