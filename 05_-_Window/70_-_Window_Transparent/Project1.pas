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
  MainWin, Subwin1, Subwin2, rootWin, BtnWin: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

  procedure Create_MainWin;
  var
    vinfo: TXVisualInfo;
    attr: TXSetWindowAttributes;
  begin
    XMatchVisualInfo(dis, scr, 32, TrueColor, @vinfo);
    attr.colormap := XCreateColormap(dis, rootWin, vinfo.visual, AllocNone);
    attr.border_pixel := 0;
    attr.background_pixel := 0;

    MainWin := XCreateWindow(dis, rootWin, 10, 10, 640, 480, 0, vinfo.depth, CopyFromParent, vinfo.visual, CWColormap or CWBorderPixel or CWBackPixel, @attr);
    XSelectInput(dis, MainWin, EventMask);
    XMapWindow(dis, MainWin);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  Create_MainWin;

  gc := XCreateGC(dis, MainWin, 0, nil);

  XStoreName(dis, MainWin, 'Transparentes-Fenster');

  Subwin1 := XCreateSimpleWindow(dis, MainWin, 100, 100, 320, 240, 5, $FF000000, $FFFFFFFF);
  Subwin2 := XCreateSimpleWindow(dis, MainWin, 250, 80, 320, 240, 7, $FF000000, $FFFFFFFF);
  BtnWin := XCreateSimpleWindow(dis, MainWin, 10, 10, 75, 25, 2, $FF888888, 0);

  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);
  XSelectInput(dis, BtnWin, EventMask);

  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);
  XMapWindow(dis, BtnWin);

  XSetWindowBackground(dis, BtnWin, $FF888888);

  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, MainWin);
        XClearWindow(dis, Subwin1);
        XClearWindow(dis, Subwin2);

        if Event.xexpose.window = BtnWin then begin
          XSetForeground(dis, gc, $FF000000);
          XDrawString(dis, BtnWin, gc, 10, 20, 'Button', 6);
        end else begin
          for i := 0 to 100 do begin
            XSetForeground(dis, gc, $FF0000FF);
            XDrawArc(dis, MainWin, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

            XSetWindowBackground(dis, Subwin1, $FF00FFFF);
            XSetForeground(dis, gc, $FF shl 8);
            XDrawArc(dis, Subwin1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

            XSetForeground(dis, gc, $FF shl 16 + $FF000000);
            XDrawArc(dis, Subwin2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
          end;
        end;
      end;
      ButtonPress: begin
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, BtnWin);
  XDestroyWindow(dis, Subwin2);
  XDestroyWindow(dis, Subwin1);
  XDestroyWindow(dis, MainWin);

  XCloseDisplay(dis);
end.

