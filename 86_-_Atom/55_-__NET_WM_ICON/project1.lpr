//image image.png
(*
Icon erzeuugen
*)
//lineal
//code+
program project1;

uses
  cursorfont,
  xatom,
  ctypes,
  unixtype,
  xlib,
  xutil,
  keysym,
  x,
  IconData;

  function XmuClientWindow(ADisplay: PDisplay; AWindow: TWindow): TWindow; cdecl; external 'Xmu';


  // https://stackoverflow.com/questions/10699927/xlib-argb-window-icon
  // https://github.com/xeyownt/xseticon/tree/master
  // https://forums.wxwidgets.org/viewtopic.php?t=45745

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  w, root_win: TWindow;
  gc: TGC;
  icon: array of record
    Width, Height: culong;
    Data: array of culong;
    end;
  Icon_index: integer = -1;
  len: SizeInt;


  function GrabPointer: TXID;
  var
    ev: TXEvent;
    cursor: TCursor;
  begin
    cursor := XCreateFontCursor(dis, XC_pirate);
    Result := 0;

    XGrabPointer(dis, root_win, False, ButtonPressMask, GrabModeSync, GrabModeAsync, 0, cursor, CurrentTime);

    XAllowEvents(dis, SyncPointer, CurrentTime);
    XWindowEvent(dis, root_win, ButtonPressMask, @ev);
    Result := ev.xbutton.subwindow;

    XUngrabPointer(dis, CurrentTime);

    XFreeCursor(dis, cursor);
  end;

  procedure Write_Icon(win: TWindow);

  var
    XA__NET_WM_ICON, XA_CARDINAL: TAtom;
    len: integer;
  begin
    XA__NET_WM_ICON := XInternAtom(dis, '_NET_WM_ICON', True);
    XA_CARDINAL := XInternAtom(dis, 'CARDINAL', True);
    len := 2 + 16 * 16 + 2 + 32 * 32;
    XChangeProperty(dis, win, XA__NET_WM_ICON, XA_CARDINAL, 32, PropModePrepend, @Icons, len);
  end;

  procedure DrawIcon;
  const
    bo = 4;
  var
    x, y: integer;
    col, a: uint32;
    rgb: record
    case byte of
      0: (r, g, b, a: byte);
      1: (rgba: uint32);
      end;

  begin
    if Icon_index >= 0 then begin
      XClearWindow(dis, win);
      for x := 0 to icon[Icon_index].Width - 1 do begin
        for y := 0 to icon[Icon_index].Height - 1 do begin
          col := icon[Icon_index].Data[x + y * icon[Icon_index].Width];
          rgb.rgba := col;
          rgb.r := rgb.r * rgb.a div 255;
          rgb.g := rgb.g * rgb.a div 255;
          rgb.b := rgb.b * rgb.a div 255;
          XSetForeground(dis, gc, rgb.rgba and $FFFFFF);
          XFillRectangle(dis, win, gc, x * bo, y * bo, bo, bo);
        end;
      end;
    end;
  end;

  procedure Read_Icon(window: TWindow);
  var
    XA__NET_WM_ICON, type_: TAtom;
    format: cint;
    nitems, after: culong;
    IconData: pclong;
    ch: PChar;
    Count: culong = 0;
    ofs: culong = 0;
    h, w: clong;
    len: SizeInt;

  begin
    XA__NET_WM_ICON := XInternAtom(dis, '_NET_WM_ICON', True);
    SetLength(icon, 0);
    XGetWindowProperty(dis, window, XA__NET_WM_ICON, 0, MaxInt, False, XA_CARDINAL, @type_, @format, @nitems, @after, @IconData);
    if type_ = 0 then begin
      Icon_index := -1;
      WriteLn('Kein Icon');
    end else begin
      ch := XGetAtomName(dis, type_);
      WriteLn(ch);
      WriteLn('items: ', nitems);
      if nitems = 0 then begin
        WriteLn('Keine Daten');
      end else begin
        while ofs < nitems do begin
          WriteLn('format: ', format);
          w := IconData[ofs];
          Inc(ofs);
          h := IconData[ofs];
          Inc(ofs);
          WriteLn(w);
          WriteLn(h);

          len := Length(icon);
          SetLength(icon, len + 1);
          icon[len].Width := w;
          icon[len].Height := h;
          SetLength(icon[len].Data, w * h);
          Move(IconData[ofs], icon[len].Data[0], w * h * SizeOf(culong));

          Icon_index := 0;
          DrawIcon;

          Inc(ofs, w * h);
          Inc(Count);
        end;
        WriteLn('Icon count: ', Count);
      end;
    end;
  end;


begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  root_win := RootWindow(dis, scr);

  win := XCreateSimpleWindow(dis, root_win, 10, 10, 520, 520, 1, $FFFFFF, 0);
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XStoreName(dis, win, 'Icon View');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        DrawIcon();
      end;
      KeyPress: begin
        len := Length(icon);
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_Return: begin
            Write_Icon(win);
          end;
          XK_space: begin
            w := GrabPointer;
            w := XmuClientWindow(dis, w);
            Read_Icon(w);
          end;
          XK_Up: begin
            if len > 0 then begin
              Inc(Icon_index);
              if Icon_index >= len then begin
                Icon_index := 0;
              end;
            end;
            DrawIcon;
          end;
          XK_Down: begin
            if len > 0 then begin
              Dec(Icon_index);
              if Icon_index < 0 then begin
                Icon_index := len - 1;
              end;
            end;
            DrawIcon;
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
