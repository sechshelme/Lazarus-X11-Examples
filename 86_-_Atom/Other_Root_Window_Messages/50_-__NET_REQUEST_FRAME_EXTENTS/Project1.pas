//image image.png
(*
Hat die gleiche Funktion, wie wen man das Fenster mit [X] schliesst.
*)
//lineal
//code+
program Project1;

uses
  SysUtils,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;


const
  Message: array of PChar = (
    'Drue21cke 1-4');

var
  dis: PDisplay;
  root_window: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  quit: boolean = False;
  i: cint;
  win: TWindow;
  XA__NET_FRAME_EXTENTS, XA__NET_WM_WINDOW_TYPE,
  XA__NET_WM_WINDOW_TYPE_NORMAL: TAtom;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure Restack;
  var
    xev: TXEvent;
  begin
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@XA__NET_WM_WINDOW_TYPE_NORMAL), 1);

    xev.xclient._type := ClientMessage;
    xev.xclient.message_type := GetAtom('_NET_REQUEST_FRAME_EXTENTS');
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := 0;
    xev.xclient.Data.l[1] := 0;
    xev.xclient.Data.l[2] := 0;
    xev.xclient.Data.l[3] := 0;
    xev.xclient.Data.l[4] := 0;

    XSendEvent(dis, root_window, False, SubstructureNotifyMask or SubstructureRedirectMask, @xev);
    XFlush(dis);
  end;

  procedure extents;
  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: pbyte;
  begin
    XGetWindowProperty(dis, win, XA__NET_FRAME_EXTENTS, 0, 4, False, XA_CARDINAL, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
    if (ret_type = XA_CARDINAL) and (ret_format = 32) and (ret_items = 4) then begin
      WriteLn(prop_return[0], ', ', prop_return[1], ', ', prop_return[2], ', ', prop_return[3]);
    end;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  root_window := XRootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, root_window, 10, 10, 480, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask or PropertyChangeMask);
  XStoreName(dis, win, 'Mein Fenster ');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, root_window, 0, nil);

  XA__NET_FRAME_EXTENTS := GetAtom('_NET_FRAME_EXTENTS');
  XA__NET_WM_WINDOW_TYPE := GetAtom('_NET_WM_WINDOW_TYPE');
  XA__NET_WM_WINDOW_TYPE_NORMAL := GetAtom('_NET_WM_WINDOW_TYPE_NORMAL');

  Restack;

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        XSetForeground(dis, gc, $004400);
        for i := 0 to Length(Message) - 1 do begin
          XDrawString(dis, Event.xexpose.window, gc, 10, 16 * i + 16, Message[i], Length(Message[i]));
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_1: begin
            Restack;
          end;
          XK_Return: begin
            WriteLn('sdfsd');
          end;
        end;
      end;
      PropertyNotify: begin
        WriteLn('PropertyNotify');
        if Event.xproperty.atom = XA__NET_FRAME_EXTENTS then begin
          extents;
        end;

      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
      end;
    end;
  end;

  XDestroyWindow(dis, win);

  XCloseDisplay(dis);
end.
//code-