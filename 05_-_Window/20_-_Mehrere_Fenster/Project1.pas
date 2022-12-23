//image image.png
(*
Man kann auch mehrere Fenster erzeugen, so wie es Lazarus zB. auch tut.
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
  WinCount = 4;

var
  dis: PDisplay;
  win: array[0..WinCount - 1] of TWindow;
  rw: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;
  s:String;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);
  rw := RootWindow(dis, scr);

  // Erstellt die Fenster
  for i := 0 to Length(win) - 1 do begin
    win[i]:= XCreateSimpleWindow(dis, rw, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    str(i,s);
    XStoreName(dis, win[i], PChar('Fenster '+s));
    XSelectInput(dis, win[i], EventMask);
    XMapWindow(dis, win[i]);
  end;

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        for i := 0 to 100 do begin
          if Event.xexpose.window = win[0] then begin
            XSetForeground(dis, gc, $FF);
            XDrawArc(dis, win[0], gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;

          if Event.xexpose.window = win[1] then begin
            XSetForeground(dis, gc, $FF shl 8);
            XDrawArc(dis, win[1], gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;

          if Event.xexpose.window = win[2] then begin
            XSetForeground(dis, gc, $FF shl 16);
            XDrawArc(dis, win[2], gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;
        end;
      end;
      MotionNotify: begin
        // In welchem Fenster bewegt sich die Maus
        if Event.xbutton.window = win[0] then begin
          WriteLn('Fenster 1');
        end;
        if Event.xbutton.window = win[1] then begin
          WriteLn('Fenster 2');
        end;
        if Event.xbutton.window = win[2] then begin
          WriteLn('Fenster 3');
        end;
      end;
      ButtonPress: begin
        // Angeklicktes Fenster zuoberst
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;
  end;

  // Schliesst die Fenster
  for i := 0 to Length(win) - 1 do
  XDestroyWindow(dis, win[i]);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
