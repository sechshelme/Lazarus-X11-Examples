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
  '(0) _NET_WM_MOVERESIZE_SIZE_TOPLEFT',
  '(1) _NET_WM_MOVERESIZE_SIZE_TOP',
  '(2) _NET_WM_MOVERESIZE_SIZE_TOPRIGHT',
  '(3) _NET_WM_MOVERESIZE_SIZE_RIGHT',
  '(4) _NET_WM_MOVERESIZE_SIZE_BOTTOMRIGHT',
  '(5) _NET_WM_MOVERESIZE_SIZE_BOTTOM',
  '(6) _NET_WM_MOVERESIZE_SIZE_BOTTOMLEFT',
  '(7) _NET_WM_MOVERESIZE_SIZE_LEFT',
  '(8) _NET_WM_MOVERESIZE_MOVE',
  '(9) _NET_WM_MOVERESIZE_SIZE_KEYBOARD',
  '(0) _NET_WM_MOVERESIZE_MOVE_KEYBOARD',
  '(a) _NET_WM_MOVERESIZE_CANCEL');

  _NET_WM_MOVERESIZE_SIZE_TOPLEFT = 0;
  _NET_WM_MOVERESIZE_SIZE_TOP = 1;
  _NET_WM_MOVERESIZE_SIZE_TOPRIGHT = 2;
  _NET_WM_MOVERESIZE_SIZE_RIGHT = 3;
  _NET_WM_MOVERESIZE_SIZE_BOTTOMRIGHT = 4;
  _NET_WM_MOVERESIZE_SIZE_BOTTOM = 5;
  _NET_WM_MOVERESIZE_SIZE_BOTTOMLEFT = 6;
  _NET_WM_MOVERESIZE_SIZE_LEFT = 7;
  _NET_WM_MOVERESIZE_MOVE = 8;
  _NET_WM_MOVERESIZE_SIZE_KEYBOARD = 9;
  _NET_WM_MOVERESIZE_MOVE_KEYBOARD = 10;
  _NET_WM_MOVERESIZE_CANCEL = 11;

var
  gc: TGC;
  quit: boolean = False;
  i: cint;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure MoveResize(x_root, y_root, direction: clong);
  const
    EVENT_SOURCE_APPLICATION = 1;
  var
    xev: TXEvent;
    button:clong=$FFFFFFFF;
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win;
    xev.xclient.message_type := GetAtom('_NET_WM_MOVERESIZE');
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := x_root;
    xev.xclient.Data.l[1] := y_root;
    xev.xclient.Data.l[2] := direction;
    xev.xclient.Data.l[3] := button;
    xev.xclient.Data.l[4] := EVENT_SOURCE_APPLICATION;

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
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_TOPLEFT);
          end;
          XK_2: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_TOP);
          end;
          XK_3: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_TOPRIGHT);
          end;
          XK_4: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_RIGHT);
          end;
          XK_5: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_BOTTOMRIGHT);
          end;
          XK_6: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_BOTTOM);
          end;
          XK_7: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_BOTTOMLEFT);
          end;
          XK_8: begin
            MoveResize(100, 100,_NET_WM_MOVERESIZE_SIZE_LEFT);
          end;
          XK_9: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_SIZE_KEYBOARD);
          end;
          XK_0: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_MOVE_KEYBOARD);
          end;
          XK_a: begin
            MoveResize(0, 0,_NET_WM_MOVERESIZE_CANCEL);
          end;
        end;
      end;
      PropertyNotify: begin
        WriteLn('PropertyNotify');
      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
      end;
    end;
  end;

  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
