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

  state_Atom: record
    _NET_WM_WINDOW_TYPE,
    _NET_WM_WINDOW_TYPE_DIALOG,

    _NET_WM_STATE,
    _NET_WM_STATE_MODAL,
    _NET_WM_STATE_STICKY,
    _NET_WM_STATE_SHADED,
    _NET_WM_STATE_SKIP_TASKBAR,
    _NET_WM_STATE_SKIP_PAGER,
    _NET_WM_STATE_HIDDEN,
    _NET_WM_STATE_MAXIMIZED_HORZ,
    _NET_WM_STATE_MAXIMIZED_VERT,
    _NET_WM_STATE_FULLSCREEN,
    _NET_WM_STATE_ABOVE,
    _NET_WM_STATE_BELOW,
    _NET_WM_STATE_DEMANDS_ATTENTION: TAtom
      end;

  i: integer;
  fullscreen: boolean = False;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  pc: PChar;
  XA_WM_DELETE_WINDOW: TAtom;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  _NET_WM_STATE_TOGGLE = 2;

  EVENT_SOURCE_APPLICATION = 1;


  // https://techdragonblog.de/2021/03/07/programmieren-in-c-vollbildfenster-mit-xlib/

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

procedure SwitchState(state: TAtom; toggle_Mod: cint);
begin
  xev._type := ClientMessage;
  xev.xclient.display := dis;
  xev.xclient.window := win;
  xev.xclient.message_type := state_Atom._NET_WM_STATE;
  xev.xclient.format := 32;

  xev.xclient.Data.l[0] := toggle_Mod;
  xev.xclient.Data.l[1] := state;
  xev.xclient.Data.l[2] := 0;
  xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
  xev.xclient.Data.l[4] := 0;

  evt_sucess := XSendEvent(dis, root_window, False, SubstructureRedirectMask, @xev);
  if evt_sucess = 0 then begin
    WriteLn('Fehler');
  end;
end;

procedure SwitchHoriAndVert(toggle_Mod: cint);
begin
  xev._type := ClientMessage;
  xev.xclient.display := dis;
  xev.xclient.window := win;
  xev.xclient.message_type := state_Atom._NET_WM_STATE;
  xev.xclient.format := 32;

  xev.xclient.Data.l[0] := toggle_Mod;
  xev.xclient.Data.l[1] := state_atom._NET_WM_STATE_MAXIMIZED_HORZ;
  xev.xclient.Data.l[2] := state_atom._NET_WM_STATE_MAXIMIZED_VERT;
  xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
  xev.xclient.Data.l[4] := 0;

  evt_sucess := XSendEvent(dis, root_window, False, SubstructureRedirectMask, @xev);
  if evt_sucess = 0 then begin
    WriteLn('Fehler');
  end;
end;

procedure SwitchDialog(toggle_Mod: cint);
begin
  xev._type := ClientMessage;
  xev.xclient.display := dis;
  xev.xclient.window := win;
  xev.xclient.message_type := state_Atom._NET_WM_WINDOW_TYPE;
  xev.xclient.format := 32;

  xev.xclient.Data.l[0] := _NET_WM_STATE_ADD;
  xev.xclient.Data.l[1] := state_atom._NET_WM_WINDOW_TYPE_DIALOG;
  xev.xclient.Data.l[2] := 0;
  xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
  xev.xclient.Data.l[4] := 0;

  evt_sucess := XSendEvent(dis, root_window, False, SubstructureRedirectMask, @xev);
  if evt_sucess = 0 then begin
    WriteLn('Fehler');
  end;
end;

  function GetAtom(dis: PDisplay; Name: PChar): TAtom;
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
  win := XCreateSimpleWindow(dis, root_window, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  state_atom._NET_WM_WINDOW_TYPE := GetAtom(dis, '_NET_WM_WINDOW_TYPE');
  state_atom._NET_WM_WINDOW_TYPE_DIALOG := GetAtom(dis, '_NET_WM_WINDOW_TYPE_DIALOG');
//  state_atom._NET_WM_WINDOW_TYPE_DIALOG := GetAtom(dis, '_NET_WM_WINDOW_TYPE_SPLASH');


  state_atom._NET_WM_STATE := GetAtom(dis, '_NET_WM_STATE');
  state_atom._NET_WM_STATE_MODAL := GetAtom(dis, '_NET_WM_STATE_MODAL');
  state_atom._NET_WM_STATE_STICKY := GetAtom(dis, '_NET_WM_STATE_STICKY');
  state_atom._NET_WM_STATE_MAXIMIZED_HORZ := GetAtom(dis, '_NET_WM_STATE_MAXIMIZED_HORZ');
  state_atom._NET_WM_STATE_MAXIMIZED_VERT := GetAtom(dis, '_NET_WM_STATE_MAXIMIZED_VERT');
  state_atom._NET_WM_STATE_SHADED := GetAtom(dis, '_NET_WM_STATE_SHADED');
  state_atom._NET_WM_STATE_SKIP_TASKBAR := GetAtom(dis, '_NET_WM_STATE_SKIP_TASKBAR');
  state_atom._NET_WM_STATE_SKIP_PAGER := GetAtom(dis, '_NET_WM_STATE_SKIP_PAGER');
  state_atom._NET_WM_STATE_HIDDEN := GetAtom(dis, '_NET_WM_STATE_HIDDEN');
  state_atom._NET_WM_STATE_FULLSCREEN := GetAtom(dis, '_NET_WM_STATE_FULLSCREEN');
  state_atom._NET_WM_STATE_ABOVE := GetAtom(dis, '_NET_WM_STATE_ABOVE');
  state_atom._NET_WM_STATE_BELOW := GetAtom(dis, '_NET_WM_STATE_BELOW');
  state_atom._NET_WM_STATE_DEMANDS_ATTENTION := GetAtom(dis, '_NET_WM_STATE_DEMANDS_ATTENTION');


  XA_WM_DELETE_WINDOW := GetAtom(dis, 'WM_DELETE_WINDOW');
  XSetWMProtocols(dis, win, @XA_WM_DELETE_WINDOW, 1);
  // Ereignisschleife
  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        XSetForeground(dis, gc, $008800);
        if fullscreen then  begin
          pc := PChar('Press [Space] switch to Normalscreen');
        end else begin
          pc := PChar('Press [Space] switch to Fullscreen');
        end;
        XDrawString(dis, win, gc, 10, 20, pc, Length(pc));
        for i := 0 to 255 do begin
          XSetForeground(dis, gc, i);
          XDrawLine(dis, win, gc, 10 + i, 30, 100 + i, 100);
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_Return: begin
            SwitchDialog(0);
          end;
          XK_y: begin
            SwitchHoriAndVert(_NET_WM_STATE_TOGGLE);
          end;
          XK_space: begin
            SwitchState(state_Atom._NET_WM_STATE_FULLSCREEN, _NET_WM_STATE_TOGGLE);
          end;
          XK_h: begin
            SwitchState(state_Atom._NET_WM_STATE_MAXIMIZED_HORZ, _NET_WM_STATE_TOGGLE);
          end;
          XK_v: begin
            SwitchState(state_Atom._NET_WM_STATE_MAXIMIZED_VERT, _NET_WM_STATE_TOGGLE);
          end;
          XK_t: begin
            SwitchState(state_Atom._NET_WM_STATE_SKIP_TASKBAR, _NET_WM_STATE_TOGGLE);
          end;
          XK_s: begin
            SwitchState(state_Atom._NET_WM_STATE_SHADED, _NET_WM_STATE_TOGGLE);
          end;
          XK_a: begin
            SwitchState(state_Atom._NET_WM_STATE_ABOVE, _NET_WM_STATE_TOGGLE);
          end;
          XK_b: begin
            SwitchState(state_Atom._NET_WM_STATE_BELOW, _NET_WM_STATE_TOGGLE);
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
