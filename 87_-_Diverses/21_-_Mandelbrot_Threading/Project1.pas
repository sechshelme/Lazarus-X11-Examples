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
  x,
  pthreads;

const
  Screen_Widht = 800;
  Screen_Height = 600;
  Thread_Count = 4;

const
  o: single = 1.2;
  u: single = -1.2;
  l: single = -2.2;
  r: single = 1.2;

type

  PPara = ^TPara;

  TPara = record
    dis: PDisplay;
    win: TWindow;
    gc: TGC;

    Nr: integer;
  end;
  TParas = array of TPara;

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    mutex: pthread_mutex_t;

    Paras: TParas;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  function thread_Calc(Apara: Pointer): Pointer; cdecl;
  var
    Para: TPara;

    ofs, Farbe, x, y: word;
    SqrX, SqrY, XPos, YPos, XStep, YStep, creal, cimag, links, rechts, oben, unten: single;
  begin
    Para := PPara(APara)^;
                     WriteLn(Para.Nr);
    links := l;
    rechts := r;
    oben := o;
    unten := u;
    XStep := (rechts - links) / (Screen_Widht div Thread_Count+ Para.Nr);
//    XStep:=XStep+Para.Nr;
//    XStep:=XStep * 4;
    YStep := (oben - unten) / Screen_Height;
    creal := links;
    for x := 0 to Screen_Widht div Thread_Count - 1 do begin
      ofs := x * Thread_Count + Para.Nr;
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
        until (SqrX + SqrY > 8) or (farbe > 1000);
        if Farbe > 1000 then begin
          farbe := 0;
        end;

        with Para do begin
          XSetForeground(dis, gc, Farbe * 100);
          XDrawPoint(dis, win, gc, ofs, y);
        end;

        //        PutPixel(x, y, Farbe);
        cimag := cimag + YStep;
      end;
      creal := creal + XStep;
    end;
  end;

  constructor TMyWin.Create;
  var
    i: integer;
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

    SetLength(Paras, Thread_Count);
    WriteLn(Length(Paras));
    for i := 0 to Thread_Count - 1 do begin
      Paras[i].Nr := i;
      Paras[i].dis := dis;
      Paras[i].win := win;
      Paras[i].gc := gc;
    end;
    pthread_mutex_init(@mutex, nil);
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
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_1: begin
              thread_Calc(@Paras[0]);
              thread_Calc(@Paras[1]);
              thread_Calc(@Paras[2]);
              thread_Calc(@Paras[3]);
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
