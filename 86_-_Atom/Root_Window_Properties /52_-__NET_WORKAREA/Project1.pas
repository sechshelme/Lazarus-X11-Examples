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
  x;

var
  dis: PDisplay;
  root_window: TWindow;
  Event: TXEvent;
  scr: cint;
  quit: boolean = False;
  win: TWindow;
  size_Str: string = '';

  //  https://specifications.freedesktop.org/wm-spec/1.3/ar01s05.html
  //  https://specifications.freedesktop.org/wm-spec/1.4/ar01s06.html

  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  function Read_WorkArea: string;
  var
    XA__NET_WORKAREA: TAtom;
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: pculong;
    i: integer;
  begin
    Result := '';
    XA__NET_WORKAREA := GetAtom('_NET_WORKAREA');
    if XA__NET_WORKAREA <> 0 then begin
      XGetWindowProperty(dis, root_window, XA__NET_WORKAREA, 0, 1024, False, XA_CARDINAL, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
      WriteLn(ret_items);
      if (ret_type = XA_CARDINAL) and (ret_format = 32) then begin
        WriteStr(Result, 'Frame Extents:  x: ', prop_return[0], ', y: ', prop_return[1], ', width: ', prop_return[2], ', height: ', prop_return[3]);
        for i := 0 to ret_items - 1 do begin
          Write(prop_return[i], '  ');
        end;
        Write(#10);
      end;
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

  while not quit do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        Draw(size_Str);
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            quit := True;
          end;
          XK_space: begin
            size_Str := Read_WorkArea;
            Draw(size_Str);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
