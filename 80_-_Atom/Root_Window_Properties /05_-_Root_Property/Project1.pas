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

  function XmuClientWindow(ADisplay: PDisplay; AWindow: TWindow): TWindow; cdecl; external 'Xmu';

const
  Props_root: TStringArray = (
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

  Props_win: TStringArray = (
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
  end_of_atoms: boolean;
  atom_List: TStringArray;


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
    if a <> 0 then begin
      XGetWindowProperty(dis, w, a, 0, 1024, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
//      XGetWindowProperty(dis, win, XA_XSEL_DATA, 0, MaxLongint div 4, False, AnyPropertyType, @XA_UTF8_STRING, @resbits, @ressize, @restail, @result1);

      if ret_type = 0 then begin
//                WriteLn(#10'Unbekannt !');
      end else begin
        WriteLn();
        Write('Property: ', XGetAtomName(dis, a));
        WriteLn(' (', XGetAtomName(dis, ret_type), ', ', ret_format, ', ', ret_items, ') =');

        if ret_type = XA_ATOM then begin
          for i := 0 to ret_items - 1 do begin
            WriteLn('Nr: ', prop_return[i]: 5, '  Name: ', XGetAtomName(dis, prop_return[i]));
          end;
        end else if (ret_type = XA_CARDINAL)or(ret_type = XA_INTEGER) then  begin
          for i := 0 to ret_items - 1 do begin
            Write(prop_return[i]);
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if ret_type = XA_WINDOW then  begin
          for i := 0 to ret_items - 1 do begin
            Write('$',IntToHex( prop_return[i],8));
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if (ret_type = XA_PIXMAP)or(ret_type = XA_CURSOR)or(ret_type = XA_COLORMAP) then  begin
          for i := 0 to ret_items - 1 do begin
            Write('pixmap/cursor id # $',IntToHex( prop_return[i],8),'  ');
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if (ret_type = XA_UTF8_STRING)or (ret_type = XA_STRING) then  begin
          for i := 0 to ret_items - 1 do begin
            ch := PChar(prop_return)[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(PChar(prop_return)[i]);
            end;
          end;
          WriteLn('"');
        end else begin
          WriteLn('Unbekanntes Formt !  (', XGetAtomName(dis, ret_type), ')');
        end;
        XFree(prop_return);
      end;
    end;
  end;

  function show_error(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    Result := 0;
    end_of_atoms := True;
  end;

  function CreateAtomList: TStringArray;
  var
    index: cint = 0;
    pc: PChar;
    old_Error_Handle: TXErrorHandler;
  begin
    Result := nil;
    end_of_atoms := False;
    old_Error_Handle := XSetErrorHandler(@show_error);
    repeat
      Inc(index);
      pc := XGetAtomName(dis, index);
      if not end_of_atoms then begin
        Insert(pc, Result, index);
      end;
      XFree(pc);
    until end_of_atoms;
    XSetErrorHandler(old_Error_Handle);
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
          XK_r: begin
            for i := 0 to Length(Props_root) - 1 do begin
              Read_Property(root_window, GetAtom(PChar(Props_root[i])));
            end;
          end;
          XK_w: begin
            w := GrabPointer;
            w := XmuClientWindow(dis, w);
            for i := 0 to Length(Props_win) - 1 do begin
              Read_Property(w, GetAtom(PChar(Props_win[i])));
            end;
          end;
          XK_Return: begin
            atom_List := CreateAtomList;
            w := GrabPointer;
            w := XmuClientWindow(dis, w);
            for i := 0 to Length(atom_List) - 1 do begin
              Read_Property(w, GetAtom(PChar(atom_List[i])));
            end;
          end;
          XK_space: begin
            atom_List := CreateAtomList;
            for i := 0 to Length(atom_List) - 1 do begin
              Read_Property(root_window, GetAtom(PChar(atom_List[i])));
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
