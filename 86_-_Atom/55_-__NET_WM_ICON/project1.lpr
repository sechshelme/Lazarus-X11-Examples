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

  procedure Read_Icon(window: TWindow);
  const
    bo = 4;
  var
    XA__NET_WM_ICON, type_: TAtom;
    format: cint;
    nitems, after: culong;
    //    Data: Pcuchar;
    IconData: pclong;
    ch: PChar;
    x, y: integer;
    Count: culong = 0;
    ofs: culong = 0;
    h, w: clong;

  begin
    XA__NET_WM_ICON := XInternAtom(dis, '_NET_WM_ICON', True);
    //
    //    XGetWindowProperty(dis, w, XA__NET_WM_ICON, 0, 1, False, AnyPropertyType, @type_, @format, @nitems, @after, @IconData);
    //    WriteLn('w: ',IconData^);
    //    XGetWindowProperty(dis, w, XA__NET_WM_ICON, 1, 1, False, AnyPropertyType, @type_, @format, @nitems, @after, @IconData);
    //    WriteLn('h: ',IconData^);
    //


    //    XGetWindowProperty(dis, w, XA__NET_WM_ICON, 0, MaxInt, False, 0, @type_, @format, @nitems, @after, @Data);
    XGetWindowProperty(dis, window, XA__NET_WM_ICON, 0, MaxInt, False, XA_CARDINAL, @type_, @format, @nitems, @after, @IconData);
    if type_ = 0 then begin
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
          for x := 0 to w - 1 do begin
            for y := 0 to h - 1 do begin
              XSetForeground(dis, gc, IconData[x + y * w + ofs]);
              XFillRectangle(dis, win, gc, x * bo, y * bo, bo, bo);
            end;
          end;
          Inc(ofs, w * h);
          Inc(Count);
        end;
        WriteLn('count: ', Count);
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

  win := XCreateSimpleWindow(dis, root_win, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        //        XDrawRectangle(dis, win, gc, 10, 10, 100, 100);
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_Return: begin
            //            w := GrabPointer;
            //            w := XmuClientWindow(dis, w);
            Write_Icon(win);
          end;
          XK_space: begin
            w := GrabPointer;
            w := XmuClientWindow(dis, w);
            Read_Icon(w);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
