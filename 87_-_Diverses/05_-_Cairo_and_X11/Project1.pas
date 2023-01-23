//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.


https://literateprograms.org/hello_world__c__cairo_.html
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
  CairoXlib,
  Cairo;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  cs: Pcairo_surface_t;
  SIZEX: longint = 320;
  SIZEY: longint = 200;

  procedure Paint(cs: Pcairo_surface_t);
  var
    c: Pcairo_t;
  begin
    c := cairo_create(cs);
    cairo_rectangle(c, 10.0, 10.0, SIZEX - 20, SIZEY - 20);
    cairo_set_source_rgb(c, 0.0, 0.0, 0.5);
    cairo_fill(c);
    cairo_move_to(c, 20.0, 20.0);
    cairo_set_source_rgb(c, 1.0, 1.0, 0.0);
    cairo_show_text(c, 'Hello World!');
    cairo_show_page(c);
    cairo_destroy(c);
  end;

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

  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
  XSelectInput(dis, win, KeyPressMask or ExposureMask or ButtonPressMask);

  // Fenster Titel festlegen
  XStoreName(dis, win, 'Mein Cairo');

  // Fenster anzeigen
  XMapWindow(dis, win);

  // Cairo
  cs := cairo_xlib_surface_create(dis, win, DefaultVisual(dis, 0), SIZEX, SIZEY);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
      Expose: begin
        Paint(cs);
      end;
    end;
  end;

  cairo_surface_destroy(cs);

  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
