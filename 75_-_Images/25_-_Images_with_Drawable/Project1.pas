(*
*)
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
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  Image: PXImage = nil;
  gc: TGC;

  procedure Draw;
  begin
    if Image <> nil then begin
      XPutImage(dis, win, gc, Image, 0, 0, 0, 0, 640, 480);
    end;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  rootWin := RootWindow(dis, scr);
  gc := XCreateGC(dis, rootWin, 0, nil);
  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  XSelectInput(dis, win, KeyPressMask or ExposureMask);

  XStoreName(dis, win, 'Mein Fenster');

  XMapWindow(dis, win);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        Draw;
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            if Image <> nil then begin
              XDestroyImage(Image);
            end;
            Image := XGetImage(dis, rootWin, 0, 0, 640, 480, AllPlanes, ZPixmap);
            Draw;
          end;
        end;
      end;
    end;
  end;

  if Image <> nil then begin
    XDestroyImage(Image);
  end;
  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
