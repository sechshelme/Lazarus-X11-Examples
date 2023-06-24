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

type
  TAtoms = array of TAtom;

var
  dis: PDisplay;
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, XA_UTF8_STRING, at: TAtom;
  Target_List: TAtoms;
  i: integer;
  key: TKeySym;

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

  // https://groups.google.com/a/chromium.org/g/chromium-discuss/c/_el628cw_PM



  function GetAtom(Name: PChar): TAtom;
  begin
    Result := XInternAtom(dis, Name, True);
    if Result = 0 then begin
      WriteLn('Atom "', Name, '" nicht gefunden !');
    end;
  end;

  function getTargetList(w: TWindow): TAtoms;
  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: PAtom;
    i: integer;
  begin
    Result := nil;
    XGetWindowProperty(dis, w, XA_CLIPBOARD, 0, 1024, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
    if ret_type = 0 then begin
      WriteLn(#10'Atom TARGETS nicht gefunden !');
    end else if ret_type = XA_ATOM then begin
      SetLength(Result, ret_items);
      for i := 0 to ret_items - 1 do begin
        Result[i] := prop_return[i];
      end;
    end;
    XFree(prop_return);
  end;

procedure save(Data: PChar; len: SizeInt; path:String);
var
  Fout: file;
  i: SizeInt;
begin
  WriteLn('Speichere...');
  Assign(Fout, path);
  Rewrite(Fout,1);
   BlockWrite(Fout, Data[0],len);
  Close(Fout);
  WriteLn(len, ' Bytes gespeichert.');
end;

procedure save1(Data: PChar; len: SizeInt; path:String);
var
  Fout: file of char;
  i: SizeInt;
begin
  WriteLn('Speichere...');
  WriteLn('len: ', len);
  Assign(Fout, path);
  Rewrite(Fout);

  for i := 0 to len - 1 do begin
    Write(Fout, Data[i]);
  end;

  //  Rewrite(Fout,1);
  //  BlockWrite(Fout, data,len);

  Close(Fout);
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
      XGetWindowProperty(dis, w, a, 0, MaxInt, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
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
        end else if (ret_type = XA_UTF8_STRING) or (ret_type = XA_STRING) or (ret_type = GetAtom('text/plain')) or (ret_type = GetAtom('TEXT')) then  begin
          for i := 0 to ret_items - 1 do begin
            if i = 0 then begin
              Write('"');
            end;
            ch := PChar(prop_return)[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(PChar(prop_return)[i]);
            end;
          end;
          WriteLn('"');
        end else if ret_type = GetAtom('MULTIPLE') then  begin
          for i := 0 to ret_items - 1 do begin
            ch := PChar(prop_return)[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(PChar(prop_return)[i]);
            end;
          end;
          WriteLn('"');
        end else if ret_type = GetAtom('image/bmp') then  begin
          save(PChar(prop_return), ret_items,'test.bmp');
        end else if ret_type = GetAtom('image/png') then  begin
          save(PChar(prop_return), ret_items,'test.png');
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

  XA_CLIPBOARD := GetAtom('CLIPBOARD');
  XA_TARGETS := GetAtom('TARGETS');
  XA_XSEL_DATA := GetAtom('XSEL_DATA');
  XA_UTF8_STRING := GetAtom('UTF8_STRING');

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
          if at = XA_TARGETS then  begin
            Target_List := getTargetList(win);
            WriteLn(#10);
            for i := 0 to Length(Target_List) - 1 do begin
              if i <= 9 then begin
                WriteLn('(', i, ') ', XGetAtomName(dis, Target_List[i]));
              end else begin
                WriteLn('(', char(i + 55 + 32), ') ', XGetAtomName(dis, Target_List[i]));
              end;
            end;
          end else begin
            WriteLn('prop: ', Event.xselection.target, '  name: ', XGetAtomName(dis, at));
            Read_Property(win, XA_CLIPBOARD);
          end;
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        key := XLookupKeysym(@Event.xkey, 0);
        case key of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_CLIPBOARD, win, CurrentTime);
          end;
          //XK_v: begin
          //  XConvertSelection(dis, XA_CLIPBOARD, XA_STRING, XA_CLIPBOARD, win, CurrentTime);
          //end;
          //XK_m: begin
          //  XConvertSelection(dis, XA_CLIPBOARD, GetAtom('text/plain'), XA_CLIPBOARD, win, CurrentTime);
          //end;
          XK_0..XK_9: begin
            i := key - XK_0;
            if Length(Target_List) > i then begin
              WriteLn(XGetAtomName(dis, Target_List[i]));
              XConvertSelection(dis, XA_CLIPBOARD, Target_List[i], XA_CLIPBOARD, win, CurrentTime);
            end;
          end;
          XK_a..XK_z: begin
            i := key - XK_a + 10;
            if Length(Target_List) > i then begin
              WriteLn(XGetAtomName(dis, Target_List[i]));
              XConvertSelection(dis, XA_CLIPBOARD, Target_List[i], XA_CLIPBOARD, win, CurrentTime);
            end;
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
