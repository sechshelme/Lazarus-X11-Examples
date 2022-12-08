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
  win, SubWin: TWindow;
  Event: TXEvent;
  scr: cint;
  Info: TXWindowAttributes;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  // Erstellt das Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  SubWin := XCreateSimpleWindow(dis, win, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Wählt die gewünschten Ereignisse aus
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XSelectInput(dis, SubWin, KeyPressMask or ExposureMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, SubWin);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    XGetWindowAttributes(dis, win, @Info);
    WriteLn('win:');
    WriteLn(Info.x, ' ', Info.y, ' ', Info.Width, ' ', Info.Height);
    WriteLn();
    XGetWindowAttributes(dis, SubWin, @Info);
    WriteLn('SubWin:');
    WriteLn(Info.x, ' ', Info.y, ' ', Info.Width, ' ', Info.Height);
    WriteLn();


    case Event._type of
      Expose: begin
        //        XSetForeground(dis, gc, Random(Random($FF));
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;

  end;

  // Schliesst das Fenster
  XDestroyWindow(dis, SubWin);
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
