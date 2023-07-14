// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux

program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

  function printf(str: PChar): cint; varargs cdecl; external 'c';

var
  XA_CLIPBOARD, XA_UTF8_STRING, XA_INCR: TAtom;

  function PrintClipboard(dis: PDisplay; win: TWindow): boolean;
  var
    event: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    result1: PChar;
    INCR_Count: SizeInt = 0;
  begin
    XConvertSelection(dis, XA_CLIPBOARD, XA_UTF8_STRING, XA_CLIPBOARD, win, CurrentTime);
    repeat
      XNextEvent(dis, @event);
    until not ((event._type <> SelectionNotify) or (event.xselection.selection <> XA_CLIPBOARD));

    WriteLn('prop: ', event.xselection._property);
    if event.xselection._property <> 0 then begin

      XGetWindowProperty(dis, win, XA_CLIPBOARD, 0, MaxLongint div 4, True, AnyPropertyType, @XA_UTF8_STRING, @resbits, @ressize, @restail, @result1);

      WriteLn('ressize: ', ressize);
      if XA_UTF8_STRING = XA_INCR then begin
        repeat
          repeat
            Write('-');
            XNextEvent(dis, @event);
          until not ((event._type <> PropertyNotify) or (event.xproperty.atom <> XA_CLIPBOARD) or (event.xproperty.state <> PropertyNewValue));
          XGetWindowProperty(dis, win, XA_CLIPBOARD, 0, MaxLongint div 4, True, AnyPropertyType, @XA_UTF8_STRING, @resbits, @ressize, @restail, @result1);
          Inc(INCR_Count);
          printf('%.*s', cint(ressize), result1);
          XFree(result1);
        until not (ressize > 0);
      end else begin
        printf('%.*s', cint(ressize), result1);
        XFree(result1);
      end;

      printf(#10);
      Result := True;

      WriteLn('INCR-Count: ', INCR_Count);
      Exit;
    end;
    Result := False;
  end;

var
  dis: PDisplay;
  win: TWindow;
  scr: cint;
  Event: TXEvent;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', True);
  XA_UTF8_STRING := XInternAtom(dis, 'UTF8_STRING', True);
  if XA_UTF8_STRING = 0 then begin
    XA_UTF8_STRING := XInternAtom(dis, 'STRING', True);
  end;
  XA_INCR := XInternAtom(dis, 'INCR', True);

  scr := DefaultScreen(dis);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or PropertyChangeMask);
  XStoreName(dis, win, 'Clipboard');
  XMapWindow(dis, win);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_v: begin
            PrintClipboard(dis, win);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
