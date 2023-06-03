//image image.png
(*
Fenster in Fullscreen schalten.
*)
//lineal
//code+
program Project1;

uses
  ctypes,
  unixtype,
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
    'WM_DELETE_WINDOW ohne XSetWMProtocols',
    'Alterntiv mit XChangeProperty');

var
  i: integer;
  evt_sucess: TStatus;
  gc: TGC;
  quit: boolean = False;
  XA_UTF8_STRING,
  XA__NET_WM_WINDOW_TYPE_DOCK, XA__NET_WM_WINDOW_TYPE,
  XA_WM_PROTOCOLS, XA_ATOM, XA_WM_DELETE_WINDOW, XA_CARDINAL,
  XA__NET_WM_STRUT_PARTIAL, XA__NET_WM_STRUT: TAtom;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html


  //  https://stackoverflow.com/questions/27927433/position-toolbar-on-reserved-desktop-space-obtained-with-net-wm-strut-and-net

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
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

  procedure SetDock;
  begin
    XChangeProperty(dis, win, XA__NET_WM_WINDOW_TYPE, XA_ATOM, 32, PropModeReplace, pbyte(@XA__NET_WM_WINDOW_TYPE_DOCK), 1);
  end;

  procedure SetStrut;
  var
    insets: array[0..11] of cardinal = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    strut: record
    left, right, top, bottom: cardinal;
      end;

    struct_partial: record
    left, right, top, bottom, left_start_y, left_end_y, right_start_y, right_end_y, top_start_x, top_end_x, bottom_start_x, bottom_end_x: cardinal
      end;


  begin
    SetDock;
    insets[2] := 200;
    insets[8] := 0;
    insets[9] := 320;

    strut.left := 300;
    strut.right := 0;
    strut.top := 0;
    strut.bottom := 0;

    struct_partial.left:=300;
    struct_partial.right:=0;
    struct_partial.top:=0;
    struct_partial.bottom:=0;
    struct_partial.left_start_y:=0;
    struct_partial.left_end_y:=0;
    struct_partial.right_start_y:=0;
    struct_partial.right_end_y:=0;
    struct_partial.top_start_x:=0;
    struct_partial.top_end_x:=0;
    struct_partial.bottom_start_x:=0;
    struct_partial.bottom_end_x:=0;

    XChangeProperty(dis, win, XA__NET_WM_STRUT, XA_CARDINAL, 32, PropModeReplace, pbyte(@strut), 4);
        XChangeProperty(dis, win, XA__NET_WM_STRUT_PARTIAL, XA_CARDINAL, 32, PropModeReplace, pbyte(@struct_partial), 12);
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  root_window := XRootWindow(dis, scr);
  win := XCreateSimpleWindow(dis, root_window, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask or PropertyChangeMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  XA_ATOM := GetAtom('ATOM');
  XA_CARDINAL := GetAtom('CARDINAL');
  XA_UTF8_STRING := GetAtom('UTF8_STRING');

  XA_WM_PROTOCOLS := GetAtom('WM_PROTOCOLS');
  XA_WM_DELETE_WINDOW := GetAtom('WM_DELETE_WINDOW');

  XA__NET_WM_STRUT := GetAtom('_NET_WM_STRUT');
  XA__NET_WM_STRUT_PARTIAL := GetAtom('_NET_WM_STRUT_PARTIAL');
  XA__NET_WM_WINDOW_TYPE := GetAtom('_NET_WM_WINDOW_TYPE');
  XA__NET_WM_WINDOW_TYPE_DOCK := GetAtom('_NET_WM_WINDOW_TYPE_DOCK');

  XChangeProperty(dis, win, XA_WM_PROTOCOLS, XA_ATOM, 32, PropModeReplace, pbyte(@XA_WM_DELETE_WINDOW), 1);
  //  XSetWMProtocols(dis, win, @XA_WM_DELETE_WINDOW, 1);

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
            SetStrut;
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
