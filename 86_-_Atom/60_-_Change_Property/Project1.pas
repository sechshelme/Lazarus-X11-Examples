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

  i: integer;
  fullscreen: boolean = False;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  pc: PChar;

  // https://snyk.io/advisor/python/pyglet/functions/pyglet.libs.x11.xlib
  XA_ATOM,
  XA__NET_MOVERESIZE_WINDOW,
  XA__NET_WM_WINDOW_TYPE, XA__NET_WM_WINDOW_TYPE_SPLASH,
  XA__NET_WM_WINDOW_TYPE_NORMAL,
  XA__NET_WM_WINDOW_TYPE_DIALOG,

  XA_WM_DELETE_WINDOW,
  XA__NET_WM_NAME, XA_UTF8_STRING, XA_WM_NAME, XA_STRING,
  XA__NET_WM_WINDOW_OPACITY, XA_CARDINAL: TAtom;

const
  _NET_WM_STATE_REMOVE = 0;
  _NET_WM_STATE_ADD = 1;
  _NET_WM_STATE_TOGGLE = 2;

  EVENT_SOURCE_APPLICATION = 1;


  // https://techdragonblog.de/2021/03/07/programmieren-in-c-vollbildfenster-mit-xlib/

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  // https://tronche.com/gui/x/icccm/sec-4.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure SetWMName;
  const
    titel: PChar = 'üäö';
  var
    pro: TXTextProperty;
  begin
    pro.Value := pcuchar(titel);
    pro.nitems := Length(titel);
    pro.encoding := XA_UTF8_STRING;
    pro.format := 8;
    XSetWMName(dis, win, @pro);
  end;

  procedure GetWMName;
  var
    pro: TXTextProperty;
  begin
    XGetWMName(dis, win, @pro);
    WriteLn('GetName: ', PChar(pro.Value));
  end;

  procedure SetTitel;
  var
    Titel: string;
  begin
    Titel := 'Property: ' + TimeToStr(now);
    XChangeProperty(dis, win, XA__NET_WM_NAME, XA_UTF8_STRING, 8, PropModeReplace, pbyte(Titel), Length(Titel));
  end;

  procedure SetDialog;
  // https://github.com/godotengine/godot/issues/55415
  begin
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@XA__NET_WM_WINDOW_TYPE_DIALOG), 1);
  end;

  procedure SetSplash;
  // https://github.com/godotengine/godot/issues/55415
  begin
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@XA__NET_WM_WINDOW_TYPE_SPLASH), 1);
  end;

  procedure SetNormal;
  // https://github.com/godotengine/godot/issues/55415
  begin
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@XA__NET_WM_WINDOW_TYPE_NORMAL), 1);
  end;


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


  procedure GetTitel;
  var
    type_: TAtom;
    format, status: cint;
    nitems, after: culong;
    Data: PChar = nil;
  begin
    XStoreName(dis, win, 'Mein Fenster');
    //    status := XGetWindowProperty(dis, win, XA__NET_WM_NAME, 0, 1024, False, XA_UTF8_STRING, @type_, @format, @nitems, @after, @Data);
    status := XGetWindowProperty(dis, win, XA_WM_NAME, 0, 1024, False, XA_UTF8_STRING, @type_, @format, @nitems, @after, @Data);
    WriteLn('status; ', status);
    WriteLn('nitems', nitems);
    if Data <> nil then begin
      WriteLn(Data);
    end else begin
      WriteLn('none');
    end;
    XFree(Data);
  end;

  procedure GetFetch;
  var
    Name: PChar;
  begin
    XFetchName(dis, win, @Name);
    WriteLn(Name);
    XFree(Name);
  end;

  procedure SetStore;
  var
    Titel: string;
  begin
    Titel := 'Store [öäü]: ' + TimeToStr(now);
    XStoreName(dis, win, PChar(Titel));
  end;

  procedure getProperty(atom: TAtom);
  var
    type_: TAtom;
    format: cint;
    nitems, after: culong;
    Data, ch: PChar;
    carData: PCardinal;
    aData: PAtom;
  begin
    if atom <> 0 then begin
      ch := XGetAtomName(dis, atom);
      WriteLn('Read PropertyNotify:  ', ch);
      XFree(ch);

      XGetWindowProperty(dis, win, atom, 0, MaxInt, False, 0, @type_, @format, @nitems, @after, @Data);
      ch := XGetAtomName(dis, atom);
      WriteLn('type:', ch, '  format:  ', format, '  nitems: ', nitems, '  after: ', after);
      XFree(ch);
      if type_ = XA_UTF8_STRING then begin
        WriteLn('UTF8_STRING: ', Data);
        XFree(Data);
      end else if type_ = XA_ATOM then begin
        aData := PAtom(Data);
        for i := 0 to nitems - 1 do begin
          WriteLn('ATOM: ', aData[i]);
        end;
      end else if type_ = XA_CARDINAL then begin
        carData := PCardinal(Data);
        for i := 0 to nitems - 1 do begin
          //          WriteLn('CARDINAL: ', carData[i] shr 24);
          WriteLn('CARDINAL: ', carData[i]);
        end;
      end;
    end;
  end;

  procedure setAlpha(Alpha: byte);
  var
    tmpAlpha: cuint32;
  begin
    tmpAlpha := Alpha shl 24;
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_OPACITY, XA_CARDINAL, 32, PropModeReplace, @tmpAlpha, 1);
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
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask or PropertyChangeMask);
  //  XStoreName(dis, win, 'äääMein Fenster');

  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  XA_ATOM := XInternAtom(dis, 'ATOM', True);
  XA__NET_WM_WINDOW_TYPE := GetAtom('_NET_WM_WINDOW_TYPE');
  XA__NET_WM_WINDOW_TYPE_NORMAL := GetAtom('_NET_WM_WINDOW_TYPE_NORMAL');
  XA__NET_WM_WINDOW_TYPE_DIALOG := GetAtom('_NET_WM_WINDOW_TYPE_DIALOG');
  XA__NET_WM_WINDOW_TYPE_SPLASH := GetAtom('_NET_WM_WINDOW_TYPE_SPLASH');
  XA__NET_MOVERESIZE_WINDOW := GetAtom('_NET_MOVERESIZE_WINDOW');

  XA_WM_DELETE_WINDOW := GetAtom('WM_DELETE_WINDOW');
  XSetWMProtocols(dis, win, @XA_WM_DELETE_WINDOW, 1);

  XA__NET_WM_WINDOW_OPACITY := GetAtom('_NET_WM_WINDOW_OPACITY');

  XA_CARDINAL := GetAtom('CARDINAL');
  XA_STRING := GetAtom('STRING');
  XA_UTF8_STRING := GetAtom('UTF8_STRING');

  XA_WM_NAME := GetAtom('WM_NAME');
  XA__NET_WM_NAME := GetAtom('_NET_WM_NAME');

  SetWMName;
  GetWMName;

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
//            setFullScreen;
          end;
          XK_a: begin
            setAlpha(128);
          end;
          XK_0: begin
            MoveWindow(100, 100, 200, 200);
          end;
          XK_1: begin
            SetNormal;
          end;
          XK_2: begin
            SetDialog;
          end;
          XK_3: begin
            SetSplash;
          end;
          XK_q: begin
            setAlpha(129);
          end;
          XK_s: begin
            SetTitel;
          end;
          XK_g: begin
            GetTitel;
          end;
          XK_f: begin
            GetFetch;
          end;
          XK_t: begin
            SetStore;
          end;
        end;
      end;
      PropertyNotify: begin
        getProperty(Event.xselection.selection);
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
