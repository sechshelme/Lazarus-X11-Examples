//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
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

var
  dis: PDisplay;
  win, Subwin1, Subwin2, rw: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;
  t: PXTextProperty;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  gc := DefaultGC(dis, scr);
  WriteLn(scr);

  rw:=RootWindow(dis, scr);

  // Erstellt das Fenster
  win := XCreateSimpleWindow(dis, rw, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  Subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 320, 240, 10, BlackPixel(dis, scr), WhitePixel(dis, scr));
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 100, 320, 240, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));
      XSetWindowBorderWidth(dis, Subwin2, 15);
      XSetStandardProperties(dis,win,'Hello','1234',0,nil,0,nil);
     // XSetBackground(dis,gc,$FF);
  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
  XSelectInput(dis, win, KeyPressMask or ExposureMask or PointerMotionMask);
  XSelectInput(dis, Subwin1, KeyPressMask or ExposureMask or PointerMotionMask);
  XSelectInput(dis, Subwin2, KeyPressMask or ExposureMask or PointerMotionMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);

  i:=XDisplayHeight(dis, scr);
  WriteLn( i);
  i:=XDisplayWidth(dis, scr);
  WriteLn( i);
  i:=XDefaultDepth(dis, scr);
  WriteLn( i);
  i:=XDisplayCells(dis, scr);
  WriteLn( i);


  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, Subwin1);
        for i := 0 to 100 do begin
          XSetForeground(dis, gc, $FF);
          XDrawArc(dis, win, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 8);
          XDrawArc(dis, Subwin1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 16);
          XDrawArc(dis, Subwin2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
        end;
      end;
      MotionNotify: begin

        if Event.xbutton.window = win then begin
          WriteLn('root');
        end;
        if Event.xbutton.window = Subwin1 then begin
          WriteLn('Sub1');
        end;
        if Event.xbutton.window = Subwin2 then begin
          WriteLn('Sub2');
        end;
      end;

      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;

  end;

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
