//image image.png
(*
Siehe auch _NET_REQUEST_FRAME_EXTENTS, wen die Grösse ermittelt werden soll,
bevor das Fenster angezeigt wird.
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
  xatom,
  cursorfont,
  x;

const
  Props_root: array of PChar = (
    '_NET_SUPPORTED',
    '_NET_CLIENT_LIST',
    '_NET_NUMBER_OF_DESKTOPS',
    '_NET_DESKTOP_GEOMETRY',
    '_NET_DESKTOP_VIEWPORT',
    '_NET_CURRENT_DESKTOP',
    '_NET_DESKTOP_NAMES',
    '_NET_ACTIVE_WINDOW',
    '_NET_WORKAREA',
    '_NET_SUPPORTING_WM_CHECK',
    '_NET_VIRTUAL_ROOTS',
    '_NET_DESKTOP_LAYOUT',
    '_NET_SHOWING_DESKTOP');

  Props_win: array of PChar = (
  '_NET_WM_NAME',
  '_NET_WM_VISIBLE_NAME',
  '_NET_WM_ICON_NAME',
  '_NET_WM_VISIBLE_ICON_NAME',
  '_NET_WM_DESKTOP',
  '_NET_WM_WINDOW_TYPE',
  '_NET_WM_STATE',
  '_NET_WM_ALLOWED_ACTIONS',
  '_NET_WM_STRUT',
  '_NET_WM_STRUT_PARTIAL',
  '_NET_WM_ICON_GEOMETRY',
  '_NET_WM_ICON',
  '_NET_WM_PID',
  '_NET_WM_HANDLED_ICONS',
  '_NET_WM_USER_TIME',
  '_NET_WM_USER_TIME_WINDOW',
  '_NET_FRAME_EXTENTS',
  '_NET_WM_OPAQUE_REGION',
  '_NET_WM_BYPASS_COMPOSITOR');

var
  dis: PDisplay;
  root_window: TWindow;
  Event: TXEvent;
  scr: cint;
  quit: boolean = False;
  win: TWindow;
  i: integer;
  XA_UTF8_STRING: TAtom;
  w: TXID;

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GrabPointer: TXID;
  var
    ev: TXEvent;
    cursor: TCursor;
  begin
    cursor := XCreateFontCursor(dis, XC_pirate);
    Result := 0;

    XGrabPointer(dis, root_window, False, ButtonPressMask, GrabModeSync, GrabModeAsync, 0, cursor, CurrentTime);

    XAllowEvents(dis, SyncPointer, CurrentTime);
    XWindowEvent(dis, root_window, ButtonPressMask, @ev);
    Result := ev.xbutton.subwindow;

    XUngrabPointer(dis, CurrentTime);

    XFreeCursor(dis, cursor);
  end;

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  function Read_Property(w: TWindow; a: TAtom): string;
  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: PAtom;
    i: integer;
    ch: char;
  begin
    Result := '';
    //    atom := GetAtom('_NET_SUPPORTED');
    if a <> 0 then begin
      XGetWindowProperty(dis, w, a, 0, 1024, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
      Write('Property: ', XGetAtomName(dis, a));

      if ret_type = 0 then begin
        WriteLn(#10'Unbekannt !');
      end else begin
        WriteLn(' (', XGetAtomName(dis, ret_type), ', ', ret_format, ', ', ret_items, ') =');
      end;

      if ret_type = XA_ATOM then begin
        for i := 0 to ret_items - 1 do begin
          WriteLn('Nr: ', prop_return[i]: 5, '  Name: ', XGetAtomName(dis, prop_return[i]));
        end;
      end else if ret_type = XA_CARDINAL then  begin
        for i := 0 to ret_items - 1 do begin
          Write(prop_return[i]: 5);
          if i <> ret_items - 1 then begin
            Write(', ');
          end;
        end;
        WriteLn();
      end else if ret_type = XA_WINDOW then  begin
        for i := 0 to ret_items - 1 do begin
          WriteLn('Window: ', prop_return[i]: 10, ' ');
        end;
      end else if ret_type = XA_UTF8_STRING then  begin
        for i := 0 to ret_items - 1 do begin
          ch := PChar(prop_return)[i];
          if (ch = #0) and (i <> ret_items - 1) then begin
            Write('", "');
          end else begin
            Write(PChar(prop_return)[i]);
          end;
        end;
        WriteLn('"');
      end;
      WriteLn();
    end;
  end;

  procedure Draw(size: string);
  const
    msg: PChar = 'Press <space>';
  var
    gc: TGC;
  begin
    gc := XCreateGC(dis, root_window, 0, nil);

    XSetForeground(dis, gc, $008800);
    XDrawString(dis, Event.xexpose.window, gc, 10, 16, msg, Length(msg));
    XSetForeground(dis, gc, $000000);
    XDrawString(dis, Event.xexpose.window, gc, 10, 32, PChar(size), Length(size));
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
  XSelectInput(dis, win, KeyPressMask or KeyReleaseMask);
  XMapWindow(dis, win);

  XA_UTF8_STRING := GetAtom('UTF8_STRING');

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_space: begin
            for i := 0 to Length(Props_root) - 1 do begin
              Read_Property(root_window, GetAtom(Props_root[i]));
            end;
          end;
          XK_w: begin
            w:=GrabPointer;
            for i := 0 to Length(Props_root) - 1 do begin
              Read_Property(w, GetAtom(Props_win[i]));
            end;
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
