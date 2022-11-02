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
  X11Button,
  X11Component,
  X11Form,
  X11Window;

type

  { TMyWin }

  TMyWin = class(TX11Window)
  private
//    Width, Height: integer;

    Form: TX11Form;
    Button: array[0..3] of TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure Paint; override;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.ButtonClick(Sender: TObject);
  begin
    WriteLn(TX11Button(Sender).Caption);
  end;

  procedure TMyWin.Paint;
  const
    maxSektoren = 8;
  var
    punkte: array[0..maxSektoren] of TXPoint;
    i: integer;
//    Region: TRegion;
    Rect: TXRectangle;
  begin
    inherited Paint;
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
  end;

  constructor TMyWin.Create;
  var
    i: integer;
    s: string;
  begin
    inherited Create;

    Form := TX11Form.Create(Self);
    Form.dis := dis;
    Form.win := win;
    Form.gc := gc;
    with Form do begin
      Color := $666666;
      Left := 10;
      Top := 10;
      Height:=50;
    end;

    for i := 0 to Length(Button) - 1 do begin
      Button[i] := TX11Button.Create(Form);
      Button[i].Width := 70;
      Button[i].Left := 5 + i * (Button[0].Width + 5);
      Button[i].Top := 5;

      str(i, s);
      Button[i].Caption := 'Button' + s;
      Button[i].Name := 'Button' + s;
      Button[i].OnClick := @ButtonClick;
    end;
    Button[1].Color := $8888FF;
    Button[2].Color := $88FF88;
    Button[3].Color := $FF8888;
  end;

  destructor TMyWin.Destroy;
  var
    i: integer;
  begin
    for i := 0 to Length(Button) - 1 do begin
      Button[i].Free;
    end;
    Form.Free;
    // Schliesst Verbindung zum Server
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
//    inherited Run;
//    exit;
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      case Event._type of
        Expose: begin
//                    Paint;
          // Bildschirm löschen
        end;
      end;

      Form.EventHandle(Event);
//      EventHandle(Event);

      case Event._type of
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
