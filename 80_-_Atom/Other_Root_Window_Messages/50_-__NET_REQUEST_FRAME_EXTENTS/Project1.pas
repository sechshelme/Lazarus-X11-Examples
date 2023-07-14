//image image.png
(*
Wird gebracht, wen man die Framegrösse ermitteln will, ohne ein Fenster zu öffnen
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

var
  dis: PDisplay;
  root_window: TWindow;
  Event: TXEvent;
  scr: cint;
  quit: boolean = False;
  win: TWindow;
  XA__NET_FRAME_EXTENTS, XA__NET_REQUEST_FRAME_EXTENTS: TAtom;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure Init_Request_Frame;
  var
    xev: TXEvent;
  begin
    xev.xclient._type := ClientMessage;
    xev.xclient.message_type := XA__NET_REQUEST_FRAME_EXTENTS;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := 0;
    xev.xclient.Data.l[1] := 0;
    xev.xclient.Data.l[2] := 0;
    xev.xclient.Data.l[3] := 0;
    xev.xclient.Data.l[4] := 0;

//    XSendEvent(dis, root_window, False, SubstructureNotifyMask or SubstructureRedirectMask, @xev);
    XSendEvent(dis, root_window, False, SubstructureNotifyMask, @xev);
    XFlush(dis);
  end;

  procedure Read_Frames(prop: TAtom);
  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: pculong;
  begin
    if prop = XA__NET_FRAME_EXTENTS then begin
      XGetWindowProperty(dis, win, XA__NET_FRAME_EXTENTS, 0, 4, False, XA_CARDINAL, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
      if (ret_type = XA_CARDINAL) and (ret_format = 32) and (ret_items = 4) then begin
        WriteLn('Frame Extents: ');
        WriteLn('left: ',prop_return[0], ', right: ', prop_return[1], ', top: ', prop_return[2], ', bottom: ', prop_return[3]);
      end;
    end;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  XA__NET_FRAME_EXTENTS := GetAtom('_NET_FRAME_EXTENTS');
  XA__NET_REQUEST_FRAME_EXTENTS := GetAtom('_NET_REQUEST_FRAME_EXTENTS');

  scr := DefaultScreen(dis);
  root_window := XRootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, root_window, 10, 10, 480, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, PropertyChangeMask);
  // Fenster nicht öffnen
//    XMapWindow(dis, win);

  Init_Request_Frame;

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      PropertyNotify: begin
        Read_Frames(Event.xproperty.atom);
        quit:=True;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
