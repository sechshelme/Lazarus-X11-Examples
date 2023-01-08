//image image.png
(*
In den meisten Fällen ist es nötig, das man etwas auf das Fenster zeichnet.
Hier im Beispiel sind es ein einfache Punkte, welches mit <b>XDrawPoint</b> gezeichnet werden.
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

const
  Screen_Widht = 800;
  Screen_Height = 600;

const
  o: single = 1.2;
  u: single = -1.2;
  l: single = -2.2;
  r: single = 1.2;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    procedure Calc;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.Calc;
  var
    Farbe, x, y: word;
    SqrX, SqrY, XPos, YPos, XStep, YStep, creal, cimag, links, rechts, oben, unten: single;

  begin
    links := l;
    rechts := r;
    oben := o;
    unten := u;
    XStep := (rechts - links) / Screen_Widht;
    YStep := (oben - unten) / Screen_Height;
    creal := links;
    for x := 0 to Screen_Widht - 1 do begin
      cimag := unten;
      for y := 0 to Screen_Height - 1 do begin
        farbe := 0;
        XPos := 0;
        YPos := 0;
        repeat
          SqrX := Sqr(XPos);
          SqrY := Sqr(YPos);
          YPos := 2 * XPos * YPos + cimag;
          XPos := SqrX - SqrY + creal;
          Inc(farbe);
        until (SqrX + SqrY > 8) or (farbe > 10000);
        if Farbe > 10000 then begin
          farbe := 0;
        end;

        XSetForeground(dis, gc, Farbe*10);
        XDrawPoint(dis, win, gc, x, y);

        //        PutPixel(x, y, Farbe);
        cimag := cimag + YStep;
      end;
      creal := creal + XStep;
    end;
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
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, Screen_Widht, Screen_Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    gc := DefaultGC(dis, scr);

    // Wählt die gewünschten Ereignisse aus
    // Es werden die Ereignisse <b>KeyPressMask</b> und <b>ExposureMask</b> für die grafische Auzsgabe gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
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
    x, y: integer;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Calc;
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
