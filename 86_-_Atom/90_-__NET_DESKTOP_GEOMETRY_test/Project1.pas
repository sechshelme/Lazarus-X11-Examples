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

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure Change_Geometrie;
  var
    xev: TXEvent;
  begin
    WriteLn('geometrie');
    xev.xclient._type := ClientMessage;
    xev.xclient.message_type := GetAtom('_NET_DESKTOP_GEOMETRY');
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := 640;
    xev.xclient.Data.l[1] := 480;
    xev.xclient.Data.l[2] := 0;
    xev.xclient.Data.l[3] := 0;
    xev.xclient.Data.l[4] := 0;

    XSendEvent(dis, win, False, 0, @xev);
//    XSendEvent(dis, win, False, SubstructureNotifyMask or SubstructureRedirectMask, @xev);
//    XSendEvent(dis, root_window, False, SubstructureNotifyMask, @xev);
    XFlush(dis);
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
  // Fenster nicht öffnen
    XMapWindow(dis, win);

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
    KeyPress: begin
      // Beendet das Programm bei [ESC]
      case XLookupKeysym(@Event.xkey, 0) of
        XK_Escape: begin
          quit := True;
        end;
        XK_space:Change_Geometrie;
      end;
    end;
      PropertyNotify: begin
        WriteLn('PropertyNotify');
//        Read_Frames(Event.xproperty.atom);
//        quit:=True;
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
