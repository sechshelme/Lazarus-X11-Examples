//image image.png
(*
Hat die gleiche Funktion, wie wen man das Fenster mit [X] schliesst.
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
  x;

var
  dis: PDisplay;
  win, root_window: TWindow;
  Event: TXEvent;
  scr: cint;

const
  Message: array of PChar = (
    '<Space> schliesst das Fenster,',
    'wie wen man das Fenster mit [X] schliesst.');
var
  gc: TGC;
  quit: boolean = False;
  i: cint;
  wm_delete_window: TAtom;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure CloseWindow;
  const
      EVENT_SOURCE_APPLICATION = 1;
  var
    xev: TXEvent;
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.message_type := GetAtom('_NET_CLOSE_WINDOW');
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := CurrentTime;
    xev.xclient.Data.l[1] := EVENT_SOURCE_APPLICATION;
    xev.xclient.Data.l[2] := 0;
    xev.xclient.Data.l[3] := 0;
    xev.xclient.Data.l[4] := 0;

    XSendEvent(dis, root_window, False, SubstructureRedirectMask, @xev);
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
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', False);
  XSetWMProtocols(dis, win, @wm_delete_window, 1);

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        XSetForeground(dis, gc, $004400);
        for i := 0 to Length(Message) - 1 do begin
          XDrawString(dis, win, gc, 10, 16 * i + 16, Message[i], Length(Message[i]));
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_space: begin
            CloseWindow;
          end;
        end;
      end;
      PropertyNotify: begin
        WriteLn('PropertyNotify');
      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
        if Event.xclient.Data.l[0] = wm_delete_window then begin
          WriteLn('[X] wurde gedrückt');
//          quit := True;
        end;
      end;
    end;
  end;

  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
