//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
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
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, XA_UTF8_STRING, at: TAtom;

  // https://www.wxwidgets.org/wxWidgets/src/x11/clipbrd.cpp


  //
  //  static void InitX11Clipboard()
  //  {
  //      static bool isInitialised = false;
  //      if ( !isInitialised )
  //      {
  //          Display* xdisplay = wxGlobalDisplay();
  //
  //          // Get the clipboard atom
  //          XA_CLIPBOARD = XInternAtom(xdisplay, "CLIPBOARD", True);
  //          // Get UTF-8 string atom
  //          XA_UTF8_STRING = XInternAtom(xdisplay, "UTF8_STRING", True);
  //          // Get TAEGETS atom
  //          XA_TARGETS = XInternAtom(xdisplay, "TARGETS", True);
  //          XA_MULTIPLE = XInternAtom(xdisplay, "MULTIPLE", True);
  //          XA_IMAGE_BMP = XInternAtom(xdisplay, "image/bmp", True);
  //          XA_IMAGE_JPG = XInternAtom(xdisplay, "image/jpeg", True);
  //          XA_IMAGE_TIFF = XInternAtom(xdisplay, "image/tiff", True);
  //          XA_IMAGE_PNG = XInternAtom(xdisplay, "image/png", True);
  //          XA_TEXT_URI_LIST = XInternAtom(xdisplay, "text/uri-list", True);
  //          XA_TEXT_URI= XInternAtom(xdisplay, "text/uri", True);
  //          XA_TEXT_PLAIN = XInternAtom(xdisplay, "text/plain", True);
  //          XA_TEXT = XInternAtom(xdisplay, "Text", True);
  //          // already initialised
  //          isInitialised = true;
  //      }
  //  }

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
      if ret_type = 0 then begin
        WriteLn(#10'Unbekannt !');
      end else begin
        WriteLn();
        Write('Property: ', XGetAtomName(dis, a));
        WriteLn(' (', XGetAtomName(dis, ret_type), ', ', ret_format, ', ', ret_items, ') =');

        if ret_type = XA_ATOM then begin
          for i := 0 to ret_items - 1 do begin
            WriteLn('Nr: ', prop_return[i]: 5, '  Name: ', XGetAtomName(dis, prop_return[i]));
          end;
        end else if (ret_type = XA_CARDINAL) or (ret_type = XA_INTEGER) then  begin
          for i := 0 to ret_items - 1 do begin
            Write(prop_return[i]);
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if ret_type = XA_WINDOW then  begin
          for i := 0 to ret_items - 1 do begin
            Write('$', IntToHex(prop_return[i], 8));
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if (ret_type = XA_PIXMAP) or (ret_type = XA_CURSOR) or (ret_type = XA_COLORMAP) then  begin
          for i := 0 to ret_items - 1 do begin
            Write('pixmap/cursor id # $', IntToHex(prop_return[i], 8), '  ');
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if (ret_type = XA_UTF8_STRING) or (ret_type = XA_STRING) then  begin
          for i := 0 to ret_items - 1 do begin
            ch := PChar(prop_return)[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(PChar(prop_return)[i]);
            end;
          end;
          WriteLn('"');
        end else if ret_type= GetAtom('MULTIPLE') then  begin
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

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  rootWin := RootWindow(dis, scr);

  XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);
  XA_TARGETS := XInternAtom(dis, 'TARGETS', False);
  XA_XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);
  XA_UTF8_STRING := XInternAtom(dis, 'UTF8_STRING', False);

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  XSelectInput(dis, win, KeyPressMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  //  XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, win, CurrentTime);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      SelectionNotify: begin
        at := Event.xselection.target;
        if at = 0 then begin
          WriteLn('Ungültiges Atom !');
        end else begin
          WriteLn('prop: ', Event.xselection.target, '  name: ', XGetAtomName(dis, at));
          Read_Property(win, XA_CLIPBOARD);
          if Event.xselection.target = XA_TARGETS then  begin
            //          show_targets;
          end else if Event.xselection.target = XA_STRING then  begin
            //          paste_Clipboard;
          end else begin
//            WriteLn('Unbekanntes Target: ', Event.xselection.target);
          end;
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_t: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_CLIPBOARD, win, CurrentTime);
          end;
          XK_v: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_STRING, XA_CLIPBOARD, win, CurrentTime);
          end;
          XK_m: begin
            XConvertSelection(dis, XA_CLIPBOARD, GetAtom('MULTIPLE'), XA_CLIPBOARD, win, CurrentTime);
          end;
        end;
      end;
    end;
  end;

  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
