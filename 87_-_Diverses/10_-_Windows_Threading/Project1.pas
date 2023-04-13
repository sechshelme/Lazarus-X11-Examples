//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Dies macht es übersichtlicher und ausbaufähiger.
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
  pthreads;

var
  dis: PDisplay;
  rootwin: TWindow;
  scr: cint;
  gc: TGC;
  Ende: boolean = False;
  Event: TXEvent;

  procedure wait;
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := 10000000;
    Req.tv_sec := 0;
    fpNanoSleep(@Req, @rem);
  end;

type
  PMyWin = ^TMyWin;

  TMyWin = class(TObject)
  private
  public
    win: TWindow;
    Thread: pthread_t;
    constructor Create;
    destructor Destroy; override;
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, rootwin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Fenster Titel festlegen
    XStoreName(dis, win, 'Fenster mit Classen');

    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
    gc := XCreateGC(dis, win, 0, nil);
    XDrawRectangle(dis, win, gc, random(200), random(200), random(200), random(200));

    //    XSetBackground(dis,gc,$ff);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

var
  MyWindows: array[0..15] of TMyWin;
  mutex: pthread_mutex_t;
  i: integer;


  function thread_function(para: Pointer): Pointer; cdecl;
  var
    win: TWindow;
    i: integer;
  begin
    win := PMyWin(para)^.win;
    repeat
      pthread_mutex_lock(@mutex);
      //                pthread_cond_wait(@condVar, @mutex);
      //                WriteLn(win);
      for i := 1 to 100 do begin
        XSetForeground(dis, gc, random($FFFFFF));
        XDrawRectangle(dis, win, gc, random(200), random(200), random(200), random(200));

        //      XDrawRectangle(dis,win,gc,10,10,100,100);
      end;

      //     WriteLn(win);
//      XFlush(dis);
      wait;
      pthread_mutex_unlock(@mutex);
      wait;
    until Ende;
    Result := nil;
  end;


begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootwin := RootWindow(dis, scr);

  pthread_mutex_init(@mutex, nil);
  //  pthread_mutex_init(@condMutex, nil);
  //  pthread_cond_init(@condVar, nil);

  // Programm inizialisieren
  for i := 0 to Length(MyWindows) - 1 do begin
    MyWindows[i] := TMyWin.Create;
  end;
  for i := 0 to Length(MyWindows) - 1 do begin
    pthread_create(@MyWindows[i].Thread, nil, @thread_function, @MyWindows[i]);
  end;

  repeat
    XNextEvent(dis, @Event);

    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Ende := True;
        end;
      end;
      Expose: begin
        //          XDrawRectangle(dis, win, gc, 10, 10, Event.xexpose.Width - 20, Event.xexpose.Height - 20);
      end;
    end;

  until Ende;
  //halt;
  //
  //pthread_mutex_lock(@mutex);
  //
  //pthread_cond_broadcast(@condVar);
  //pthread_mutex_unlock(@mutex);

  // Alles aufräumen und beenden
  pthread_mutex_destroy(@mutex);


    for i := 1 to 100 do begin
//      wait;
      WriteLn(i);
    end;

  for i := 0 to Length(MyWindows) - 1 do begin
    pthread_join(MyWindows[i].Thread, nil);
  end;

  for i := 0 to Length(MyWindows) - 1 do begin
//    MyWindows[i].Free;
    WriteLn('key');
  end;
end.
//code-
