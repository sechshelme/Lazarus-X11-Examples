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

  function Read_WorkArea(w:TWindow): string;
  var
    XA__NET_SUPPORTED: TAtom;
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: PAtom;
    i: integer;
  begin
    Result := '';
    XA__NET_SUPPORTED := GetAtom('_NET_SUPPORTED');
    if XA__NET_SUPPORTED <> 0 then begin
      XGetWindowProperty(dis, w, XA__NET_SUPPORTED, 0, 1024, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);

      WriteLn(ret_type);
      WriteLn(ret_format);
      WriteLn(ret_items);
      WriteLn(ret_bytesleft);

      if ret_type = XA_ATOM then begin
        for i := 0 to ret_items - 1 do begin
          WriteLn('Nr: ',prop_return[i]:5, '  Name: ', XGetAtomName(dis,prop_return[i] ));
        end;
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
            size_Str := Read_WorkArea(root_window);
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
