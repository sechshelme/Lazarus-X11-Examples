(*
*)
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  cursorfont,
  x;

  function XmuClientWindow(ADisplay: PDisplay; AWindow: TWindow): TWindow; cdecl; external 'Xmu';

var
  dis: PDisplay;
  win, rootWin, w: TWindow;
  Event: TXEvent;
  scr: cint;
  Image: PXImage = nil;
  gc: TGC;
  pix: TPixmap;

  function MyErrorHandler(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    WriteLn('======= Fehler ===========');
    Result := 0;
  end;

  function GrabPointer: TWindow;
  var
    ev: TXEvent;
    cursor: TCursor;
  begin
    cursor := XCreateFontCursor(dis, XC_pirate);
    Result := 0;

    XGrabPointer(dis, rootWin, False, ButtonPressMask, GrabModeSync, GrabModeAsync, 0, cursor, CurrentTime);

    XAllowEvents(dis, SyncPointer, CurrentTime);
    XWindowEvent(dis, rootWin, ButtonPressMask, @ev);
    Result := ev.xbutton.subwindow;

    XUngrabPointer(dis, CurrentTime);

    XFreeCursor(dis, cursor);
  end;

  procedure Draw;
  begin
    if Image <> nil then begin
      XPutImage(dis, win, gc, Image, 0, 0, 0, 0, 640, 480);
    end;
  end;

  function CreatePixmap: TPixmap;
  var
    gc: TGC;
  begin
    Result := XCreatePixmap(dis, rootWin, 256, 256, 24);
    gc := XCreateGC(dis, Result, 0, nil);
    XSetForeground(dis, gc, $00FF00);
    XFillRectangle(dis, Result, gc, 0, 0, 256, 256);
    XSetForeground(dis, gc, $FFFF00);
    XFillRectangle(dis, Result, gc, 10, 10, 100, 100);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  //  XSetErrorHandler(@MyErrorHandler);

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
            w := GrabPointer;
            //            w := XmuClientWindow(dis, w);
            Image := XGetImage(dis, w, 0, 0, 640, 480, AllPlanes, ZPixmap);
            Draw;
          end;
          XK_r: begin
            if Image <> nil then begin
              XDestroyImage(Image);
            end;
            Image := XGetImage(dis, rootWin, 0, 0, 640, 480, AllPlanes, ZPixmap);
            Draw;
          end;
          XK_p: begin
            if Image <> nil then begin
              XDestroyImage(Image);
            end;
            pix := CreatePixmap;
            Image := XGetImage(dis, pix, 0, 0, 256, 256, AllPlanes, ZPixmap);
            Draw;
            XFreePixmap(dis, pix);
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
