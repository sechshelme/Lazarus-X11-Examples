//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
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

type
  TBoolResult = record
    success, Value: boolean;
  end;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  EVENT_SOURCE_APPLICATION = 1;

var
  dis: PDisplay;
  win, root_window: TWindow;
  xev, Event: TXEvent;
  scr: cint;
  wm_delete_window, wm_state, wm_fullscreen: TAtom;
  i, event_mask: integer;
  fullscreen: boolean = True;
  evt_sucess: TStatus;
  gc: TGC;
  boolresult: TBoolResult = (Success: False; Value: False);
  quit:Boolean=False;

  // https://techdragonblog.de/2021/03/07/programmieren-in-c-vollbildfenster-mit-xlib/


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

  wm_delete_window := XInternAtom(dis, 'WM_DELETE_WINDOW', True);
  XSetWMProtocols(dis, win, @wm_delete_window, 1);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      VisibilityNotify: begin
        Break;
      end;
    end;
  end;

  wm_state := XInternAtom(dis, '_NET_WM_STATE', True);
  wm_fullscreen := XInternAtom(dis, '_NET_WM_STATE_FULLSCREEN', True);

  xev._type := ClientMessage;
  xev.xclient.display := dis;
  xev.xclient.window := win;
  xev.xclient.message_type := wm_state;
  xev.xclient.format := 32;

  if fullscreen then begin
    xev.xclient.Data.l[0] := _NET_WM_STATE_ADD;
  end else begin
    xev.xclient.Data.l[0] := _NET_WM_STATE_REMOVE;
  end;
  xev.xclient.Data.l[1] := wm_fullscreen;
  xev.xclient.Data.l[2] := 0;
  xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
  xev.xclient.Data.l[4] := 0;

  event_mask := SubstructureRedirectMask;

//  wm_state := XInternAtom(dis, '_NET_WM_STATE', False);

  evt_sucess := XSendEvent(dis, root_window, False, event_mask, @xev);
  if event_mask = 0 then begin
    WriteLn('Fehler');
  end;



  // Ereignisschleife
  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        for i := 0 to 255 do begin
          XSetForeground(dis,gc,i);
          XDrawLine(dis, win, gc, 10+i, 10, 100+i, 100);
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          quit:=True;
        end;
      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
        if Event.xclient.Data.l[0] = wm_delete_window then begin
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
