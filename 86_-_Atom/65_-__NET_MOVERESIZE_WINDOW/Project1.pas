//image image.png
(*
Fenster in Fullscreen schalten.
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
    'Press Key to switch State:   ( non <Shift>= on; <Shift>= off )',
    '(1)_NET_WM_STATE_MODAL',
    '(2)_NET_WM_STATE_STICKY',
    '(3)_NET_WM_STATE_MAXIMIZED_VERT',
    '(4)_NET_WM_STATE_MAXIMIZED_HORZ',
    '(5)_NET_WM_STATE_SHADED',
    '(6)_NET_WM_STATE_SKIP_TASKBAR',
    '(7)_NET_WM_STATE_SKIP_PAGER',
    '(8)_NET_WM_STATE_HIDDEN',
    '(9)_NET_WM_STATE_FULLSCREEN',
    '(0)_NET_WM_STATE_ABOVE',
    '(A)_NET_WM_STATE_BELOW',
    '(B)_NET_WM_STATE_DEMANDS_ATTENTION',
    '(C) NET_WM_STATE_MAXIMIZED_VERT and NET_WM_STATE_MAXIMIZED_HORZ');

var
  XA__NET_MOVERESIZE_WINDOW: TAtom;


  i: integer;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  shift: boolean;
  XA_WM_DELETE_WINDOW: TAtom;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  _NET_WM_STATE_TOGGLE = 2;

  EVENT_SOURCE_APPLICATION = 1;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  procedure MoveWindow(x, y, w, h: clong);
  var
    xev: TXEvent;
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.message_type := XA__NET_MOVERESIZE_WINDOW;
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := %111100000000;
    xev.xclient.Data.l[1] := x;
    xev.xclient.Data.l[2] := y;
    xev.xclient.Data.l[3] := w;
    xev.xclient.Data.l[4] := h;

    evt_sucess := XSendEvent(dis, root_window, False, SubstructureRedirectMask, @xev);
    if evt_sucess = 0 then begin
      WriteLn('Fehler');
    end;
  end;

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
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
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  XA__NET_MOVERESIZE_WINDOW := GetAtom('_NET_MOVERESIZE_WINDOW');

  XA_WM_DELETE_WINDOW := GetAtom('WM_DELETE_WINDOW');
  XSetWMProtocols(dis, win, @XA_WM_DELETE_WINDOW, 1);
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
        shift := Event.xkey.state and ShiftMask = ShiftMask;
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_1: begin
            MoveWindow(100, 100, 200, 200);
          end;
          XK_2: begin
            MoveWindow(150, 150, 150, 150);
          end;
          XK_3: begin
            MoveWindow(500, 500, 150, 150);
          end;
        end;
      end;
      PropertyNotify: begin
        WriteLn('PropertyNotify');
      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
        if Event.xclient.Data.l[0] = XA_WM_DELETE_WINDOW then begin
          WriteLn('[X] wurde gedrückt');
          quit := True;
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
