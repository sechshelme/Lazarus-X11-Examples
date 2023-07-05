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

  procedure Read_Icon(w: TWindow);
  var
    ev: TXEvent;
    myTime, sec, min: TTime;

// https://cplusplus.com/reference/ctime/gmtime/

  begin
    XChangeProperty(dis, w, XA_WM_NAME, XA_STRING, 8, PropModeAppend, nil, 0);
    while True do begin
      XNextEvent(dis, @ev);
      if ev._type = PropertyNotify then begin
        myTime := ev.xproperty.time;
        sec:=myTime div 1000 mod 60;
        min:=(myTime div 1000) div 60;
        WriteLn(min,':',sec);
        exit;
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
  XSelectInput(dis, win, KeyPressMask or ExposureMask or PropertyChangeMask);
  XStoreName(dis, win, 'Icon View');
  XMapWindow(dis, win);

  gc := XCreateGC(dis, win, 0, nil);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
      end;
      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
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
