//image image.png
(*
Fenster in Fullscreen schalten.
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
  x;

var
  dis: PDisplay;
  win, root_window: TWindow;
  xev, Event: TXEvent;
  scr: cint;

  i, event_mask: integer;
  fullscreen: boolean = False;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  pc: PChar;
  XA_WM_DELETE_WINDOW, XA__NET_WM_STATE, XA__NET_WM_STATE_FULLSCREEN,
  XA__NET_WM_NAME, XA_UTF8_STRING: TAtom;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  _NET_WM_STATE_TOGGLE = 2;

  EVENT_SOURCE_APPLICATION = 1;


  // https://techdragonblog.de/2021/03/07/programmieren-in-c-vollbildfenster-mit-xlib/

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  procedure Switch_FullScreen(fs: boolean);
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.message_type := XA__NET_WM_STATE;
    xev.xclient.format := 32;

    if fs then begin
      xev.xclient.Data.l[0] := _NET_WM_STATE_ADD;
    end else begin
      xev.xclient.Data.l[0] := _NET_WM_STATE_REMOVE;
    end;
    xev.xclient.Data.l[1] := XA__NET_WM_STATE_FULLSCREEN;
    xev.xclient.Data.l[2] := 0;
    xev.xclient.Data.l[3] := EVENT_SOURCE_APPLICATION;
    xev.xclient.Data.l[4] := 0;

    event_mask := SubstructureRedirectMask;

    evt_sucess := XSendEvent(dis, root_window, False, event_mask, @xev);
    if evt_sucess = 0 then begin
      WriteLn('Fehler');
    end;
  end;

  procedure SetTitel;
  const
    Titel: string = 'Hello World';
  begin
    Titel := TimeToStr(now);
    XChangeProperty(dis, win, XA__NET_WM_NAME, XA_UTF8_STRING, 8, PropModeReplace, pbyte(Titel), Length(Titel));
  end;

  procedure GetTitel;
  var
    type_: TAtom;
    format, status: cint;
    nitems, after: culong;
    Data: PChar = nil;
  begin
    XStoreName(dis, win, 'Mein Fenster');
    status := XGetWindowProperty(dis, win, XA__NET_WM_NAME, 0, 1024, False, XA_UTF8_STRING, @type_, @format, @nitems, @after, @Data);
    WriteLn('status; ', status);
    WriteLn('nitems', nitems);
    if Data <> nil then begin
      WriteLn(Data);
    end else begin
      WriteLn('none');
    end;
    XFree(Data);
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

  XA_WM_DELETE_WINDOW := XInternAtom(dis, 'WM_DELETE_WINDOW', True);
  XSetWMProtocols(dis, win, @XA_WM_DELETE_WINDOW, 1);

  XA__NET_WM_STATE := XInternAtom(dis, '_NET_WM_STATE', True);
  XA__NET_WM_STATE_FULLSCREEN := XInternAtom(dis, '_NET_WM_STATE_FULLSCREEN', True);

  XA__NET_WM_NAME := XInternAtom(dis, '_NET_WM_NAME', True);
  XA_UTF8_STRING := XInternAtom(dis, 'UTF8_STRING', True);


  WriteLn(XA__NET_WM_NAME);
  WriteLn(XA_UTF8_STRING);

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
          XK_space: begin
            fullscreen := not fullscreen;
            Switch_FullScreen(fullscreen);
          end;
          XK_s: begin
            SetTitel;
          end;
          XK_g: begin
            GetTitel;
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
