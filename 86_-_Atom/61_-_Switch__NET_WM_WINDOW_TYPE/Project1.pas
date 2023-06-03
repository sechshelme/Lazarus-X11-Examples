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
  xev, Event: TXEvent;
  scr: cint;

const
  Message: array of PChar = (
    'Press Key to switch Window Type',
    '(1) _NET_WM_WINDOW_TYPE_DESKTOP',
    '(2) _NET_WM_WINDOW_TYPE_DOCK',
    '(3) _NET_WM_WINDOW_TYPE_TOOLBAR',
    '(4) _NET_WM_WINDOW_TYPE_MENU',
    '(5) _NET_WM_WINDOW_TYPE_UTILITY',
    '(6) _NET_WM_WINDOW_TYPE_SPLASH',
    '(7) _NET_WM_WINDOW_TYPE_DIALOG',
    '(8) _NET_WM_WINDOW_TYPE_NORMAL');

var
  Atom: record
    _NET_WM_WINDOW_TYPE,
    _NET_WM_WINDOW_TYPE_DESKTOP,
    _NET_WM_WINDOW_TYPE_DOCK,
    _NET_WM_WINDOW_TYPE_TOOLBAR,
    _NET_WM_WINDOW_TYPE_MENU,
    _NET_WM_WINDOW_TYPE_UTILITY,
    _NET_WM_WINDOW_TYPE_SPLASH,
    _NET_WM_WINDOW_TYPE_DIALOG,
    _NET_WM_WINDOW_TYPE_NORMAL: TAtom;
      end;

  i: integer;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  XA_ATOM, XA_WM_DELETE_WINDOW: TAtom;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  _NET_WM_STATE_TOGGLE = 2;

  EVENT_SOURCE_APPLICATION = 1;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  procedure Set_Window_Typ(typ: TAtom);
  begin
    XChangeProperty(dis, win, Atom._NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@typ), 1);
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
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  Atom._NET_WM_WINDOW_TYPE := GetAtom('_NET_WM_WINDOW_TYPE');
  Atom._NET_WM_WINDOW_TYPE_DESKTOP := GetAtom('_NET_WM_WINDOW_TYPE_DESKTOP');
  Atom._NET_WM_WINDOW_TYPE_DOCK := GetAtom('_NET_WM_WINDOW_TYPE_DOCK');
  Atom._NET_WM_WINDOW_TYPE_MENU := GetAtom('_NET_WM_WINDOW_TYPE_MENU');
  Atom._NET_WM_WINDOW_TYPE_TOOLBAR := GetAtom('_NET_WM_WINDOW_TYPE_TOOLBAR');
  Atom._NET_WM_WINDOW_TYPE_UTILITY := GetAtom('_NET_WM_WINDOW_TYPE_UTILITY');
  Atom._NET_WM_WINDOW_TYPE_SPLASH := GetAtom('_NET_WM_WINDOW_TYPE_SPLASH');
  Atom._NET_WM_WINDOW_TYPE_DIALOG := GetAtom('_NET_WM_WINDOW_TYPE_DIALOG');
  Atom._NET_WM_WINDOW_TYPE_NORMAL := GetAtom('_NET_WM_WINDOW_TYPE_NORMAL');

  XA_ATOM := GetAtom('ATOM');
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
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_1: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_DESKTOP);
          end;
          XK_2: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_DOCK);
          end;
          XK_3: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_TOOLBAR);
          end;
          XK_4: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_MENU);
          end;
          XK_5: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_UTILITY);
          end;
          XK_6: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_SPLASH);
          end;
          XK_7: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_DIALOG);
          end;
          XK_8: begin
            Set_Window_Typ(Atom._NET_WM_WINDOW_TYPE_NORMAL);
          end;
        end;
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
