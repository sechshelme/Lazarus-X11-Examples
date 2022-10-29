//image image.png
(*
Verschiedene Varinaten um Rechtecke zu zeichnen:

- [XDrawRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XDrawRectangle.html)
- [XFillRectangle](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillRectangle.html)
- [XFillPolygon](https://tronche.com/gui/x/xlib/graphics/filling-areas/XFillPolygon.html) (Für ein nicht ausgefülltes Polygon nimmt man **XDrawLines**.)
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
  x,
  Button;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    Width, Height: integer;

    Button: array[0..3] of TButton;
    procedure ButtonClick(Sender: TObject);
    procedure Paint;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.ButtonClick(Sender: TObject);
  begin
    WriteLn(TButton(Sender).Caption);
  end;

  procedure TMyWin.Paint;
  const
    maxSektoren = 8;
  var
    punkte: array[0..maxSektoren] of TXPoint;
    i: integer;
    Region: TRegion;
    Rect: TXRectangle;
  begin
    Region := XCreateRegion;
    Rect.x := 0;
    Rect.y := 0;
    Rect.Width := Width;
    Rect.Height := Height;
    XUnionRectWithRegion(@Rect, Region, Region);
    XSetRegion(dis, gc, Region);
    XDestroyRegion(Region);

    for i := 0 to maxSektoren - 1 do begin
      punkte[i].x := round(Sin(Pi * 2 / (maxSektoren - 1) * i) * 50) + 200;
      punkte[i].y := round(Cos(Pi * 2 / (maxSektoren - 1) * i) * 50) + 170;
    end;

    XClearWindow(dis, win);
    // Ein Rechteck zeichnen
    XSetForeground(dis, gc, $00);
    XDrawRectangle(dis, win, gc, 10, 50, 50, 50);
    // Einen rechteckigen Bereich mit Farbe füllen
    XFillRectangle(dis, win, gc, 110, 50, 50, 50);

    // Ein Polygon
    XFillPolygon(dis, win, gc, @punkte, Length(punkte) - 1, 0, CoordModeOrigin);

    for i := 0 to Length(Button) - 1 do begin
      Button[i].Paint;
    end;
  end;

  constructor TMyWin.Create;
  var
    i: integer;
    s: string;
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
    XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonReleaseMask or ButtonPressMask or StructureNotifyMask or PointerMotionMask or StructureNotifyMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
    //    XSetWindowBackground(dis, win,$BBBBBB);
    for i := 0 to Length(Button) - 1 do begin
      Button[i] := TButton.Create(dis, win, gc);
      Button[i].Width := 70;
      Button[i].Left := 5 + i * (Button[0].Width + 5);
      Button[i].Top := 5;

      str(i, s);
      Button[i].Caption := 'Button' + s;
      Button[i].OnClick := @ButtonClick;
    end;
  end;

  destructor TMyWin.Destroy;
  var
    i: integer;
  begin
    for i := 0 to Length(Button) - 1 do begin
      Button[i].Free;
    end;
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    i: integer;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Paint;
          // Bildschirm löschen
        end;
        ConfigureNotify: begin
          Width := Event.xconfigure.Width;
          Height := Event.xconfigure.Height;
        end;
        KeyPress: begin

          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
        ButtonPress: begin
          for i := 0 to Length(Button) - 1 do begin
            Button[i].MouseDown(Event.xbutton.x, Event.xbutton.y);
          end;
          for i := 0 to Length(Button) - 1 do begin
            Button[i].Paint;
          end;
        end;
        MotionNotify: begin
          for i := 0 to Length(Button) - 1 do begin
            Button[i].MouseMove(Event.xbutton.x, Event.xbutton.y);
          end;
          for i := 0 to Length(Button) - 1 do begin
            Button[i].Paint;
          end;
        end;
        ButtonRelease: begin
          for i := 0 to Length(Button) - 1 do begin
            Button[i].MouseUp(Event.xbutton.x, Event.xbutton.y);
          end;
          for i := 0 to Length(Button) - 1 do begin
            Button[i].Paint;
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
