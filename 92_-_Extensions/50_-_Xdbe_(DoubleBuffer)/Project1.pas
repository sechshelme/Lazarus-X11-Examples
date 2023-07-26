program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  Xdbe;

  procedure usleep(i: culong); cdecl; external 'c';

const
  Width = 640;
  Height = 480;

  Message: array of string = (
    'Press Key to switch to Draw',
    '(1) Normal',
    '(2) Pixmap-Buffer',
    '(3) Image-Buffer',
    '(4) XDBE Double-Buffer');

var
  dis: PDisplay;
  Event: TXEvent;
  scr: cint;
  win, rootWin: TWindow;
  gc: TGC;

  dbe_back_buffer: TXdbeBackBuffer;
  Pixmap_back_buffer: TPixmap;

  Quit: boolean = False;
  DrawStyle: (dsNormal, dsPixmap, dsImage, dsXdbe) = dsNormal;

  posX: integer = 0;
  posY: integer = 0;
  wa: TXWindowAttributes;

const
  Mask = KeyPressMask or ExposureMask;

  procedure Draw(drw: TDrawable; x, y: cint);
  const
    w = 400;
    h = 400;
  var
    i, j: integer;
  begin
    XSetForeground(dis, gc, 0);
    XFillRectangle(dis, drw, gc, 0, 0, Width, Height);

    XSetForeground(dis, gc, $FFFF00);
    for i := 0 to Length(Message) - 1 do begin
      XDrawString(dis, drw, gc, 10, 16 * i + 16, PChar(Message[i]), Length(Message[i]));
    end;

    for j := 0 to 5 do begin
      for i := 0 to 100 do begin
        XSetForeground(dis, gc, i * i * 460 * j);
        XFillRectangle(dis, drw, gc, x + i, y + i, w - 2 * i, h - 2 * i);
      end;
    end;
  end;

  procedure Draw_Pixmap(x, y: cint);
  begin
    Draw(Pixmap_back_buffer, x, y);

    XCopyArea(dis, Pixmap_back_buffer, win, gc, 0, 0, Width, Height, 0, 0);
  end;

  procedure Draw_Image(x, y: cint);
  var
    TempPixmap: TPixmap;
    Image: PXImage;

  begin
    TempPixmap := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, 0));
    Draw(TempPixmap, x, y);

    Image := XGetImage(dis, TempPixmap, 0, 0, Width, Height, AllPlanes, ZPixmap);

    XPutImage(dis, win, gc, Image, 0, 0, 0, 0, Width, Height);

    XFreePixmap(dis, TempPixmap);
    XDestroyImage(Image);
  end;

  procedure Draw_None(x, y: cint);
  begin
    Draw(win, x, y);
  end;

  procedure Draw_DoubleBuffer(x, y: cint);
  var
    swap_info: TXdbeSwapInfo;
  begin
    Draw(dbe_back_buffer, x, y);

    swap_info.swap_window := win;
    swap_info.swap_action := 0;

    XdbeSwapBuffers(dis, @swap_info, 1);
  end;

  procedure Insert_Info;
  var
    major, minor: longint;
    s: string;
  begin
    XdbeQueryExtension(dis, @major, @minor);

    WriteStr(s, 'XDBE version; ', major, '.', minor);
    Insert([s, ''], Message, 0);

  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, rootWin, 0, 0, Width, Height, 0, $000000, $FFFFFF);
  XSelectInput(dis, win, Mask);
  XStoreName(dis, win, 'XRenderer');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  Insert_Info;

  dbe_back_buffer := XdbeAllocateBackBufferName(dis, win, 0);
  Pixmap_back_buffer := XCreatePixmap(dis, win, Width, Height, DefaultDepth(dis, 0));

  XGetWindowAttributes(dis, win, @wa);


  while not Quit do begin
    while XPending(dis) > 0 do begin
      XNextEvent(dis, @Event);
      case Event._type of
        KeyPress: begin
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Quit := True;
            end;
            XK_1: begin
              DrawStyle := dsNormal;
            end;
            XK_2: begin
              DrawStyle := dsPixmap;
            end;
            XK_3: begin
              DrawStyle := dsImage;
            end;
            XK_4: begin
              DrawStyle := dsXdbe;
            end;
          end;
        end;
      end;
    end;

    Inc(posX);
    if posX > Width - 400 then begin
      posX := 0;
    end;
    Inc(posY);
    if posY > Height - 400 then begin
      posY := 0;
    end;

    case DrawStyle of
      dsNormal: begin
        Draw_None(posX, posY);
      end;
      dsPixmap: begin
        Draw_Pixmap(posX, posY);
      end;
      dsImage: begin
        Draw_Image(posX, posY);
      end;
      dsXdbe: begin
        Draw_DoubleBuffer(posX, posY);
      end;
    end;

    usleep(1000 * 1000 div 60);
  end;
  XFreePixmap(dis, Pixmap_back_buffer);

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
