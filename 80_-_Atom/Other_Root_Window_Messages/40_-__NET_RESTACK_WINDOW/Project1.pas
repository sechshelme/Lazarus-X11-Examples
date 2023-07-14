//image image.png
(*
Hat die gleiche Funktion, wie wen man das Fenster mit [X] schliesst.
*)
//lineal
//code+
program Project1;

uses
  sysutils,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;


const
  Message: array of PChar = (
    'Drue21cke 1-4');

var
  dis: PDisplay;
  root_window: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  quit: boolean = False;
  i: cint;
  win: array[0..3] of TWindow;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  procedure Restack(win1, win2: TWindow);
  const
    EVENT_SOURCE_APPLICATION = 1;
  var
    xev: TXEvent;
  begin
    xev._type := ClientMessage;
    xev.xclient.display := dis;
    xev.xclient.window := win1;
    xev.xclient.message_type := GetAtom('_NET_RESTACK_WINDOW');
    xev.xclient.format := 32;

    xev.xclient.Data.l[0] := 2;
    xev.xclient.Data.l[1] := win2;
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

  for i := 0 to Length(win) - 1 do begin
    win[i] := XCreateSimpleWindow(dis, root_window, 10, 10, 480, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSelectInput(dis, win[i], KeyPressMask or KeyReleaseMask or ExposureMask or VisibilityChangeMask or PropertyChangeMask);
    XStoreName(dis, win[i], PChar('Mein Fenster '+IntToStr(i)));
    XMapWindow(dis, win[i]);
  end;

  gc := XCreateGC(dis, root_window, 0, nil);

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        XSetForeground(dis, gc, $004400);
        for i := 0 to Length(Message) - 1 do begin
          XDrawString(dis, Event.xexpose.window, gc, 10, 16 * i + 16, Message[i], Length(Message[i]));
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_1: begin
            Restack(win[0], win[3]);
          end;
          XK_2: begin
            Restack(win[1], win[2]);
          end;
          XK_3: begin
            Restack(win[2], win[1]);
          end;
          XK_4: begin
            Restack(win[3], win[0]);
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

for i:=0 to Length(win)-1 do  XDestroyWindow(dis, win[i]);

  XCloseDisplay(dis);
end.
//code-
