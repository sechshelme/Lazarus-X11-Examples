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

  TMyWin = class(TX11Component)
  private
//    dis: PDisplay;
    scr: cint;
  //  win: TWindow;
//    gc: TGC;
//    Width, Height: integer;

    Panel,
    PanelSub: TX11Form;
    Button: array[0..3] of TX11Button;
    procedure ButtonClick(Sender: TObject);
    procedure Paint;
  public
    constructor Create(TheOwner: TX11Component);
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

    constructor TMyWin.Create(TheOwner: TX11Component);
  var
    i: integer;
    s: string;
  begin
    inherited Create(TheOwner);

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

    Panel := TX11Form.Create(Self);
    with Panel do begin
      Color := $222222;
      Left := 10;
      Top := 10;
      Height:=100;
    end;

    PanelSub := TX11Form.Create(Panel);
    with PanelSub do begin
      Color := $666666;
      Left := 10;
      Top := 10;
      Height:=50;
    end;

    for i := 0 to Length(Button) - 1 do begin
      Button[i] := TX11Button.Create(PanelSub);
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
    PanelSub.Free;
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
        Expose: begin
                    Paint;
          // Bildschirm löschen
        end;
      end;

      EventHandle(Event);

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
  MyWindows := TMyWin.Create(nil);
  MyWindows.Run;
  MyWindows.Free;
end.
//code-
