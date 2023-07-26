program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  Xdbe;

procedure usleep(i:cint);cdecl;external 'c';


const
  Width = 640;
  Height = 480;

var
  dis: PDisplay;
  Event: TXEvent;
  scr: cint;
  win, rootWin: TWindow;
  back_buffer: TXdbeBackBuffer;
  major, minor: longint;
  gc: TGC;

const
  Mask = KeyPressMask or ExposureMask;

  procedure Draw(x, y: cint; w, h: cuint);
  var
    swap_info: TXdbeSwapInfo;
  begin
    XSetForeground(dis, gc, 0);
    XFillRectangle(dis, back_buffer, gc, 0, 0, Width, Height);

//    XSetForeground(dis, gc, $FF0000);
    XSetForeground(dis, gc, Random($FFFFFF));
    XFillRectangle(dis, back_buffer, gc, x, y, w, h);

    swap_info.swap_window := win;
    swap_info.swap_action := 0;

    XdbeSwapBuffers(dis, @swap_info, 1);
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

  if XdbeQueryExtension(dis, @major, @minor) <> 0 then begin
    WriteLn('XDBE version ', major, '.', minor);
  end else begin
    WriteLn('XDBE is not suppoerted !');
    Halt;
  end;

  back_buffer := XdbeAllocateBackBufferName(dis, win, 0);


  while (True) do begin
    while XPending(dis) > 0 do begin
      XNextEvent(dis, @Event);
      case Event._type of
        Expose: begin
          //        Draw(10, 10, 400, 400);
        end;
        KeyPress: begin
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_b: begin

              //        XClearWindow(dis, win);
              //            Draw(Event);
            end;
          end;
        end;
      end;
    end;
    Draw(10, 10, 400, 400);
    usleep(1000*1000 div 60);

  end;
  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
