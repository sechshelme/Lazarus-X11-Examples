//image image.png
(*
In den meisten Fällen ist es nötig, das man etwas auf das Fenster zeichnet.
Hier im Beispiel sind es ein einfache Punkte, welches mit <b>XDrawPoint</b> gezeichnet werden.
*)
//lineal
//code+
program Project1;

uses
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  pthreads,
  SysUtils;

const
  Screen_Widht = 800;
  Screen_Height = 600;
  Thread_Count: integer = 0;

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
    Thread: pthread_t;
    ende: boolean;
    time: double;
  end;
  TParas = array of TPara;

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    Paras: TParas;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure wait(nsec:clong; sec:Int64);
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := nsec;
    Req.tv_sec := sec;
//    Req.tv_nsec := 10000000;
//    Req.tv_sec := 1;
    fpNanoSleep(@Req, @rem);
  end;

var
  mutex: pthread_mutex_t;
  counter: integer = 0;


  function thread_Calc(Apara: Pointer): Pointer; cdecl;
  const
    interation = 1000;
  var
    Para: TPara;
    ofs, Farbe, x, y: word;
    SqrX, SqrY, XPos, YPos, XStep, YStep, creal, cimag, links, rechts, oben, unten: single;
    t: double;
  begin
    Inc(counter);
    t := Now;
    Para := PPara(APara)^;
    //    WriteLn(Para.Nr);
    links := l;
    rechts := r;
    oben := o;
    unten := u;
    XStep := (rechts - links) / (Screen_Widht);
    YStep := (oben - unten) / Screen_Height;
    creal := links;
    for x := 0 to Screen_Widht - 1 do begin
      if x mod Thread_Count = Para.Nr then begin
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
          until (SqrX + SqrY > 8) or (farbe > interation);
          if Farbe > interation then begin
            farbe := 0;
          end;

          with Para do begin
            //            XSetForeground(dis, gc, Farbe * 100);
            //            XDrawPoint(dis, win, gc, x, y);
          end;
          cimag := cimag + YStep;
        end;
        //        XFlush(Para.dis);
//        wait(1000000,0);
        wait(500000,0);
                pthread_mutex_unlock(@mutex);
//                wait(1000000,0);
      end;
      creal := creal + XStep;
    end;
    //    WriteLn(Para.Nr,' beendet.  Time:', now-t:12:10);
    Para.ende := True;
    Para.time := now - t + 1;
    Dec(counter);
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
    i: integer;
    calc: double;
  begin

    // Ereignisschleife
    counter := -1;
    while (True) do begin
      if XPending(dis) <> 0 then begin
        XNextEvent(dis, @Event);

        case Event._type of
          Expose: begin
          end;
          KeyPress: begin
            if counter = -1 then begin
              // Beendet das Programm bei [ESC]
              XClearWindow(dis, win);
              case XLookupKeysym(@Event.xkey, 0) of
                XK_Escape: begin
                  Break;
                end;
                XK_1: begin
                  Thread_Count := 1;
                end;
                XK_2: begin
                  Thread_Count := 2;
                end;
                XK_3: begin
                  Thread_Count := 4;
                end;
                XK_4: begin
                  Thread_Count := 8;
                end;
                XK_5: begin
                  Thread_Count := 16;
                end;
                XK_6: begin
                  Thread_Count := 32;
                end;
                XK_7: begin
                  Thread_Count := 64;
                end;
                XK_8: begin
                  Thread_Count := 128;
                end;
                XK_9: begin
                  Thread_Count := 256;
                end;
                XK_0: begin
                  Thread_Count := 512;
                end;
              end;
              SetLength(Paras, Thread_Count);
              counter := 0;
              calc := now;
              WriteLn('Thread_Count: ', Thread_Count);
              for i := 0 to Thread_Count - 1 do begin
                Paras[i].ende := False;

                Paras[i].Nr := i;
                Paras[i].dis := dis;
                Paras[i].win := win;
                Paras[i].gc := gc;
                pthread_create(@Paras[i].Thread, nil, @thread_Calc, @Paras[i]);
              end;
            end;
          end;
        end;
      end else begin
        wait(0,1);
        if counter = 0 then begin
          counter := -1;
          WriteLn('calc: ', now - calc: 12: 10);
          for i := 0 to Thread_Count - 1 do begin
            with Paras[i] do begin
              //              WriteLn('Nr: ',nr,' Time: ', time: 12: 10);
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
