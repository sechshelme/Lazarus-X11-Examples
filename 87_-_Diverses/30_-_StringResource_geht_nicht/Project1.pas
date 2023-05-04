//image image.png
(*
Es ist möglich ein Fenster innerhalb eine anderen zu erzeugen.
Bei GUI-Anwendungen ist dies in der Regel der Fall.
Jedes **Panel**, **Button**, etc. sind eigene Fenster.
Dies ist auch rekursiv möglich. ZB. Ein Button in einem Panel und dieses dann im Hauptfenster.
Dafür muss man bei **XCreateSimpleWindow** anstelle des Rootwindow, das Parent-Fenster angeben.
*)
//lineal
//code+
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  xresource,
  keysym,
  x;


type
  PMyDisplay = ^TMyDisplay;
  TMyDisplay = record
    ext_data: PXExtData;
    private1: PXPrivate;
    fd: cint;
    pr2: cint;
    roto_major_version: cint;
    roto_minor_version: cint;
    vendor: PChar;
    private3: TXID;
    private4: TXID;
    private5: TXID;
    private6: longint;
    resource_alloc:
    function(para1: PXDisplay): TXID; cdecl;
    byte_order: cint;
    bitmap_unit: cint;
    bitmap_pad: cint;
    bitmap_bit_order: cint;
    nformats: cint;
    pixel_format: PScreenFormat;
    private8: cint;
    Release: cint;
    private9, private10: PXPrivate;
    qlen: cint;
    last_request_read: culong;
    request: culong;
    private11: TXPointer;
    private12: TXPointer;
    private13: TXPointer;
    private14: TXPointer;
    max_request_size: cunsigned;
    db: PXrmDatabase;
    private15:
    function(para1: PXDisplay): longint; cdecl;
    display_name: PChar;
    default_screen: cint;
    nscreens: cint;
    screens: PScreen;
    motion_buffer: culong;
    private16: culong;
    min_keycode: cint;
    max_keycode: cint;
    private17: TXPointer;
    private18: TXPointer;
    private19: cint;
    xdefaults: PChar;
  end;

var
  dis: PDisplay;
  win, Subwin1, Subwin2: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;

  Mydpy: PMyDisplay absolute dis;


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
  XStoreName(dis, win, 'SubFenster'); // Fenster-Titel, geht nur bei Haupt-Fenster

  // Zwei Subfenster
  Subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 320, 240, 10, BlackPixel(dis, scr), WhitePixel(dis, scr));
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));

  XrmPutStringResource(@Mydpy^.db, '*SubFenster*background', 'Green');
XrmPutStringResource(@Mydpy^.db, '*SubFenster*foreground', '1234');

  // Border-Breite nachträglich festlegen, geht nur bei Sub-Fenster
  XSetWindowBorderWidth(dis, Subwin2, 15);

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, win);
        XClearWindow(dis, Subwin1);
        for i := 0 to 100 do begin
//          XSetForeground(dis, gc, $FF);
          XDrawArc(dis, win, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

//          XSetForeground(dis, gc, $FF shl 8);
          XDrawArc(dis, Subwin1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

//          XSetForeground(dis, gc, $FF shl 16);
          XDrawArc(dis, Subwin2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
        end;
      end;
      MotionNotify: begin
        // In welchem Fenster bewegt sich die Maus
        if Event.xbutton.window = win then begin
//          WriteLn('root');
        end;
        if Event.xbutton.window = Subwin1 then begin
//          WriteLn('Sub1');
        end;
        if Event.xbutton.window = Subwin2 then begin
//          WriteLn('Sub2');
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
  XDestroyWindow(dis, Subwin2);
  XDestroyWindow(dis, Subwin1);
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
