//image image.png
(*
Verschiedene Varianten um Linien zu zeichnen:
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
  xresource,
  x;

// /home/tux/Schreibtisch/von_Git/xlib/libx11/src/XlibInt.c

type
  PMyXDisplay = ^TMyXDisplay;

  TMyXDisplay = record
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
    last_req:^Char;
//    private11: TXPointer;
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

  TxPolySegmentReq=PChar;
  PxPolySegmentReq=   ^TxPolySegmentReq;


type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
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
    gc := DefaultGC(dis, scr);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

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

// /home/tux/Schreibtisch/von_Git/xlib/libx11/src/DrLine.c

  function DrawLine(dis: PDisplay; draw: TDrawable; gc: TGC; x1: cint; y1: cint; x2: cint; y2: cint): cint;
var  req:TxPolySegmentReq    ;

  dpy:PMyXDisplay absolute dis;
  begin
    req:=dpy^.last_req;

// Result:=   XDrawLine(PDisplay( dpy), draw, gc, x1, y1, x2, y2);
  end;



  procedure TMyWin.Run;
  const
    maxSektoren = 8;
  var
    Event: TXEvent;
    Points: array[0..maxSektoren] of TXPoint;
    i: integer;
  begin
    // Punkte in Kreisanordnung berechnen
    for i := 0 to maxSektoren - 1 do begin
      Points[i].x := round(Sin(Pi * 2 / (maxSektoren - 1) * i) * 50) + 200;
      Points[i].y := round(Cos(Pi * 2 / (maxSektoren - 1) * i) * 50) + 110;
    end;

    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          // Bildschirm löschen
          XClearWindow(dis, win);

          // Eine einfache Linie
          //          XDrawLine(dis, win, gc, 10, 60, 110, 160);
          DrawLine(dis, win, gc, 10, 60, 110, 160);

          // Ein Linien-Array
          XDrawLines(dis, win, gc, @Points, Length(Points) - 1, 0);
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
