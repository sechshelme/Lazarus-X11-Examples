//image image.png
(*
*)
//lineal
//code+
program Project1;

uses
  SysUtils,
  cursorfont,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

const
  WIN_SIZE = 72;

type
  TSubWin = record
    win: TWindow;
    cursor: TCursor;
  end;

var
  dis: PDisplay;
  win: TWindow;
  Subwin: array[0..WIN_SIZE - 1] of TSubWin;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;
  quit: boolean = False;

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

  // Erstellt das Haupt-Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, EventMask);
  XStoreName(dis, win, 'Maus-Curos');

  // Subfenster
  for i := 0 to Length(Subwin) - 1 do begin
    Subwin[i].win := XCreateSimpleWindow(dis, win, 5 + (i mod 10) * 50, 5 + (i div 10) * 50, 40, 40, 3, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSelectInput(dis, Subwin[i].win, EventMask);
    Subwin[i].cursor := XCreateFontCursor(dis, i * 2);
    XDefineCursor(dis, Subwin[i].win, Subwin[i].cursor);
    XMapWindow(dis, Subwin[i].win);
  end;

  XMapWindow(dis, win);

  while not quit do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
      end;
      MotionNotify: begin
      end;
      ButtonPress: begin
        // Angeklicktes Fenster zuoberst
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          quit := True;
        end;
      end;
    end;
  end;

  for i := 0 to Length(Subwin) - 1 do begin
    XFreeCursor(dis, Subwin[i].cursor);
    XDestroyWindow(dis, Subwin[i].win);
  end;

  // Schliesst die Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
