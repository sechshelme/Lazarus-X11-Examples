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
  XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, XA_UTF8_STRING, targetAtom: TAtom;
  Target_List: TAtoms;
  i: integer;
  key: TKeySym;
  gc: TGC;

  // https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
  // https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html
  // https://www.wxwidgets.org/wxWidgets/src/x11/clipbrd.cpp
  // https://tronche.com/gui/x/icccm/sec-2.html
  // https://groups.google.com/a/chromium.org/g/chromium-discuss/c/_el628cw_PM

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

  procedure ShowPNG(Data: PChar; len: SizeInt);
  // http://www-i4.informatik.rwth-aachen.de/content/teaching/proseminars/sub/2002_2003_ws_docs/png.pdf
  // https://homepages.thm.de/~hg10013/Lehre/MMS/SS03/Freitag/text.htm

  // https://progbook.org/png.html

  type
    PPNGHeader = ^TPNGHeader;

    TPNGHeader = packed record
    Signatur: array[0..7] of char;
    Size,
    typ,
    Width, Height: uint32;
  end;
  var
    PNGHeader: TPNGHeader;
  begin
    PNGHeader := PPNGHeader(Data + 0)^;
    WriteLn('Signature: ', PNGHeader.Signatur);
    WriteLn('Size: ', PNGHeader.Size);
    WriteLn('type: ', PNGHeader.typ);
    WriteLn('Width: ', PNGHeader.Width);
    WriteLn('Height: ', PNGHeader.Height);
  end;


  procedure ShowBMP(Data: PChar; len: SizeInt);
  // http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/2003_w/misc/bmp_file_format/bmp_file_format.htm

  type
    PBMPHeader = ^TBMPHeader;

    TBMPHeader = packed record
    Signatur: array[0..1] of char;
    FileSize, reserved, DataOffset: uint32;
  end;

    PBMPInfoHeader = ^TBMPInfoHeader;

    TBMPInfoHeader = packed record
    Size, Width, Height: uint32;
    Planes, Bits_per_Pixel: uint16;
    Compression, ImageSize, XpixelsPerM, YpixelsPerM, Colors_Used, Important_Colors: uint32;
  end;


  var
    size: PInt32;
    w, w2, h: int32;
    headerSize, i: SizeInt;
    col: culong;
    x, y: integer;
    ofs: SizeInt;

    BMPHeader: TBMPHeader;
    BMPInfoHeader: TBMPInfoHeader;
    m: uint32;
  begin
    BMPHeader := PBMPHeader(Data + 0)^;
    WriteLn('Signature: ', BMPHeader.Signatur);
    WriteLn('FileSize: ', BMPHeader.FileSize);
    WriteLn('reserved: ', BMPHeader.reserved);
    WriteLn('DataOffset: ', BMPHeader.DataOffset);

    BMPInfoHeader := PBMPInfoHeader(Data + $0E)^;
    WriteLn('HeaderSize: ', BMPInfoHeader.Size);
    WriteLn('Width: ', BMPInfoHeader.Width);
    WriteLn('Height: ', BMPInfoHeader.Height);
    WriteLn('Planes: ', BMPInfoHeader.Planes);
    WriteLn('Bits per pixel: ', BMPInfoHeader.Bits_per_Pixel);
    WriteLn('Compression: ', BMPInfoHeader.Compression);
    WriteLn('ImageSize: ', BMPInfoHeader.ImageSize);
    WriteLn('XpixelsPerM: ', BMPInfoHeader.XpixelsPerM);
    WriteLn('YpixelsPerM: ', BMPInfoHeader.YpixelsPerM);
    WriteLn('Colors used: ', BMPInfoHeader.Colors_Used);
    WriteLn('Important colors: ', BMPInfoHeader.Important_Colors);
    WriteLn();

    w2 := BMPInfoHeader.Width * 3;
    m := BMPInfoHeader.Width mod 4;
    if m > 0 then begin
      Inc(w2, m);
    end;

    ofs := 0;
    for y := 0 to BMPInfoHeader.Height - 1 do begin
      for x := 0 to BMPInfoHeader.Width - 1 do begin
        col := PUInt32(Data + (x * 3) + ofs + BMPHeader.DataOffset)^;
        XSetForeground(dis, gc, col);
        XDrawPoint(dis, win, gc, x, BMPInfoHeader.Height - y);
      end;
      Inc(ofs, w2);
    end;

    WriteLn('Zeichen...');
    WriteLn(len, ' Bytes gespeichert.');
  end;

  procedure save(Data: PChar; len: SizeInt; path: string);
  var
    Fout: file;
    i: SizeInt;
  begin
    WriteLn('Speichere...');
    Assign(Fout, path);
    Rewrite(Fout, 1);
    BlockWrite(Fout, Data[0], len);
    Close(Fout);
    WriteLn(len, ' Bytes gespeichert.');
  end;

  function Read_Property(w: TWindow; targetAtom: TAtom): string;
  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: PAtom;
    i: integer;
    ch: char;
  begin
    Result := '';
    WriteLn();
    WriteLn('prop: ', targetAtom, '  name: ', XGetAtomName(dis, targetAtom));
    if targetAtom <> 0 then begin
      XGetWindowProperty(dis, w, XA_CLIPBOARD, 0, MaxInt, False, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);
      if ret_type = 0 then begin
        WriteLn(#10'Unbekannt !');
      end else begin
        Write('Property: ');
        WriteLn(' (', XGetAtomName(dis, ret_type), ', ', ret_format, ', ', ret_items, ') =');

        if ret_type = XA_ATOM then begin
          for i := 0 to ret_items - 1 do begin
            WriteLn('Nr: ', prop_return[i]: 5, '  Name: ', XGetAtomName(dis, prop_return[i]));
          end;
        end else if ret_type = GetAtom('INCR') then  begin
          WriteLn('Buffer zu gross !');
          WriteLn('Max Buffersize: ', prop_return[0]);
          WriteLn();
        end else if (ret_type = XA_CARDINAL) or (ret_type = XA_INTEGER) then  begin
          for i := 0 to ret_items - 1 do begin
            WriteLn(targetAtom, '------------');
            if targetAtom = GetAtom('TIMESTAMP') then begin
              Write('time: ', prop_return[i]);
            end else begin
              Write(prop_return[i]);
            end;
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
          ShowBMP(PChar(prop_return), ret_items);
          save(PChar(prop_return), ret_items, 'test.bmp');
        end else if ret_type = GetAtom('image/x-bmp') then  begin
          ShowBMP(PChar(prop_return), ret_items);
          save(PChar(prop_return), ret_items, 'test-x.bmp');
        end else if ret_type = GetAtom('image/png') then  begin
          ShowPNG(PChar(prop_return), ret_items);
          save(PChar(prop_return), ret_items, 'test.png');
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

  gc := XCreateGC(dis, win, 0, nil);

  XSelectInput(dis, win, KeyPressMask or PropertyChangeMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  //  XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, win, CurrentTime);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      SelectionNotify: begin
        targetAtom := Event.xselection.target;
        if targetAtom = 0 then begin
          WriteLn('Ungültiges Atom !');
        end else begin
          if targetAtom = XA_TARGETS then  begin
            Target_List := getTargetList(win);
            WriteLn(#10);
            for i := 0 to Length(Target_List) - 1 do begin
              if i <= 9 then begin
                WriteLn('(', i, ') ', XGetAtomName(dis, Target_List[i]));
              end else begin
                WriteLn('(', char(i + 55 + 32), ') ', XGetAtomName(dis, Target_List[i]));
              end;
            end;
            WriteLn(#10);
          end else begin
            //            Read_Property(win, XA_CLIPBOARD);
            Read_Property(win, targetAtom);
          end;
        end;
      end;
      PropertyNotify: begin
        //if Event.xproperty.atom = XA_CLIPBOARD then begin
        //  if Event.xproperty.state <> PropertyNewValue then
        //  WriteLn('------------ PropertyNotify ---------------------');
        //end;
      end;
      KeyPress: begin
        key := XLookupKeysym(@Event.xkey, 0);
        case key of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_CLIPBOARD, win, CurrentTime);
          end;
          XK_0..XK_9: begin
            i := key - XK_0;
            if Length(Target_List) > i then begin
              Write('Targets: ', XGetAtomName(dis, Target_List[i]));
              XConvertSelection(dis, XA_CLIPBOARD, Target_List[i], XA_CLIPBOARD, win, CurrentTime);
            end;
          end;
          XK_a..XK_z: begin
            i := key - XK_a + 10;
            if Length(Target_List) > i then begin
              Write('Targets: ', XGetAtomName(dis, Target_List[i]));
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
