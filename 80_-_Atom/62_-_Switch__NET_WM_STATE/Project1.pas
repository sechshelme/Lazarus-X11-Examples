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
  Atom: record
    _NET_WM_STATE,
    _NET_WM_STATE_MODAL,
    _NET_WM_STATE_STICKY,
    _NET_WM_STATE_MAXIMIZED_VERT,
    _NET_WM_STATE_MAXIMIZED_HORZ,
    _NET_WM_STATE_SHADED,
    _NET_WM_STATE_SKIP_TASKBAR,
    _NET_WM_STATE_SKIP_PAGER,
    _NET_WM_STATE_HIDDEN,
    _NET_WM_STATE_FULLSCREEN,
    _NET_WM_STATE_ABOVE,
    _NET_WM_STATE_BELOW,
    _NET_WM_STATE_DEMANDS_ATTENTION: TAtom
      end;

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

  procedure SwitchState(state1, state2: TAtom; toggle_Mod: cint);
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.message_type := Atom._NET_WM_STATE;
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := toggle_Mod;
    xev.xclient.Data.l[1] := state1;
    xev.xclient.Data.l[2] := state2;
    xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
    xev.xclient.Data.l[4] := 0;

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

  Atom._NET_WM_STATE := GetAtom('_NET_WM_STATE');
  Atom._NET_WM_STATE_MODAL := GetAtom('_NET_WM_STATE_MODAL');
  Atom._NET_WM_STATE_STICKY := GetAtom('_NET_WM_STATE_STICKY');
  Atom._NET_WM_STATE_MAXIMIZED_HORZ := GetAtom('_NET_WM_STATE_MAXIMIZED_HORZ');
  Atom._NET_WM_STATE_MAXIMIZED_VERT := GetAtom('_NET_WM_STATE_MAXIMIZED_VERT');
  Atom._NET_WM_STATE_SHADED := GetAtom('_NET_WM_STATE_SHADED');
  Atom._NET_WM_STATE_SKIP_TASKBAR := GetAtom('_NET_WM_STATE_SKIP_TASKBAR');
  Atom._NET_WM_STATE_SKIP_PAGER := GetAtom('_NET_WM_STATE_SKIP_PAGER');
  Atom._NET_WM_STATE_HIDDEN := GetAtom('_NET_WM_STATE_HIDDEN');
  Atom._NET_WM_STATE_FULLSCREEN := GetAtom('_NET_WM_STATE_FULLSCREEN');
  Atom._NET_WM_STATE_ABOVE := GetAtom('_NET_WM_STATE_ABOVE');
  Atom._NET_WM_STATE_BELOW := GetAtom('_NET_WM_STATE_BELOW');
  Atom._NET_WM_STATE_DEMANDS_ATTENTION := GetAtom('_NET_WM_STATE_DEMANDS_ATTENTION');

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
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_MODAL, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_MODAL, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_2: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_STICKY, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_STICKY, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_3: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_VERT, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_VERT, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_4: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_HORZ, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_HORZ, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_5: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_SHADED, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_SHADED, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_6: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_SKIP_TASKBAR, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_SKIP_TASKBAR, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_7: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_SKIP_PAGER, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_SKIP_PAGER, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_8: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_HIDDEN, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_HIDDEN, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_9: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_FULLSCREEN, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_FULLSCREEN, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_0: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_ABOVE, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_ABOVE, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_a: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_BELOW, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_BELOW, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_b: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_DEMANDS_ATTENTION, 0, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_DEMANDS_ATTENTION, 0, _NET_WM_STATE_ADD);
            end;
          end;
          XK_c: begin
            if shift then begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_VERT, Atom._NET_WM_STATE_MAXIMIZED_HORZ, _NET_WM_STATE_REMOVE);
            end else begin
              SwitchState(Atom._NET_WM_STATE_MAXIMIZED_VERT, Atom._NET_WM_STATE_MAXIMIZED_HORZ, _NET_WM_STATE_ADD);
            end;
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
