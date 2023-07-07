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
  XA_CLIPBOARD, XA_TARGETS: TAtom;
  SelectTargetAtom: TAtom = 0;
  Target_List: TAtoms;
  i: integer;
  key: TKeySym;
  gc: TGC;

var
  ClipData: record
    INCR: boolean;
    ofs: SizeInt;
    Data: array of char;
      end;

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

  const TextAtoms:TStringArray=(
  'STRING',
  'UTF8_STRING',
  'COMPOUND_TEXT',
  'text/plain',
  'text/plain;charset=utf-8',
  'text/html',
  'text/uri-list',
  'text/rtf',
  'text/ico',
  'text/richtext',

  'TEXT');


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
  // https://www.w3.org/TR/PNG-Chunks.html#:~:text=A%20valid%20PNG%20image%20must,chunks%2C%20and%20an%20IEND%20chunk.

  type
    PPNGHeader = ^TPNGHeader;

    TPNGHeader = packed record
    Signatur: array[0..7] of char;
    Size: uint32;
    typ: array [0..3] of char;
    Width, Height: uint32;
  end;

  var
    Signatur: array[0..8] of char;
    i, ofs: integer;
    size, CRC: uint32;
    typ: array [0..4] of char;
    Width, Height: uint32;
  begin
    Signatur[8] := #0;
    typ[4] := #0;

    for i := 0 to 7 do begin
      Signatur[i] := Data[i];
    end;
    ofs := 8;
    WriteLn('Signature: ', Signatur);

    while ofs < len do begin
      size := SwapEndian(PUInt32(Data + ofs)^);
      WriteLn('Size: ', size);
      Inc(ofs, 4);

      for i := 0 to 3 do begin
        typ[i] := Data[i + ofs];
      end;
      WriteLn('type: ', PChar(typ));
      Inc(ofs, 4);

      if typ = 'IHDR' then begin
        Width := SwapEndian(PUInt32(Data + ofs)^);
        WriteLn('Width: ', Width);
        Height := SwapEndian(PUInt32(Data + ofs + 4)^);
        WriteLn('Height: ', Height);
      end;
      Inc(ofs, size);

      CRC := SwapEndian(PUInt32(Data + ofs)^);
      WriteLn('CRC: $', IntToHex(CRC), 8);
      Inc(ofs, 4);

      WriteLn();
    end;

    exit;
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
    w2: int32;
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
  begin
    WriteLn('Speichere...');
    Assign(Fout, path);
    Rewrite(Fout, 1);
    BlockWrite(Fout, Data[0], len);
    Close(Fout);
    WriteLn(len, ' Bytes gespeichert.');
  end;

  function RetInAtom(ret_type: TAtom; AtomList: TStringArray): boolean;
  var
    i: integer;
  begin
    Result := False;
    for i := 0 to Length(AtomList) - 1 do begin
      if GetAtom( PChar( AtomList[i])) = ret_type then begin
        Result := True;
        Exit;
      end;
    end;
  end;

  function Read_Property(w: TWindow; targetAtom: TAtom): string;

  var
    ret_type: TAtom;
    ret_format: cint;
    ret_items, ret_bytesleft: culong;
    prop_return: PAtom;
    i: integer;
    ch: char;
  const
    INCR_Count: SizeInt = 0;
  begin
    Result := '';
    WriteLn();
    if targetAtom <> 0 then begin
      WriteLn('prop: ', targetAtom, '  name: ', XGetAtomName(dis, targetAtom));
      XGetWindowProperty(dis, w, XA_CLIPBOARD, 0, MaxInt, True, 0, @ret_type, @ret_format, @ret_items, @ret_bytesleft, @prop_return);

      if ret_items <> 0 then begin
        SetLength(ClipData.Data, ClipData.ofs + ret_items);
        for i := 0 to ret_items - 1 do begin
          ClipData.Data[ClipData.ofs + i] := PChar(prop_return)[i];
        end;
        Inc(ClipData.ofs, ret_items);
      end else begin
        ClipData.INCR := False;
      end;

      Inc(INCR_Count);

      if ret_type = 0 then begin
        WriteLn(#10'Unbekannt !');
      end else if not ClipData.INCR then begin
        Write('Property: ');
        WriteLn(' (', XGetAtomName(dis, ret_type), ', ', ret_format, ', ', ret_items, ') =');

        if ret_type = XA_ATOM then begin
          for i := 0 to ret_items - 1 do begin
            WriteLn('Nr: ', prop_return[i]: 5, '  Name: ', XGetAtomName(dis, prop_return[i]));
          end;
        end else if ret_type = GetAtom('INCR') then  begin
          INCR_Count := 0;
          ClipData.INCR := True;
          WriteLn('Buffer zu gross !');
          WriteLn('Max Buffersize: ', prop_return[0]);
          WriteLn();
        end else if RetInAtom(ret_type, ['CARDINAL', 'INTEGER']) then  begin
          for i := 0 to ret_items - 1 do begin
            WriteLn(targetAtom, '------------');
            if targetAtom = GetAtom('TIMESTAMP') then begin
              Write('TimeStamp: ', prop_return[i]);
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
        end else if RetInAtom(ret_type, ['PIXMAP', 'CURSOR', 'COLORMAP']) then  begin
          for i := 0 to ret_items - 1 do begin
            Write('pixmap/cursor id # $', IntToHex(prop_return[i], 8), '  ');
            if i <> ret_items - 1 then begin
              Write(', ');
            end;
          end;
          WriteLn();
        end else if RetInAtom(ret_type, TextAtoms) then  begin
          for i := 0 to Length(ClipData.Data) - 1 do begin
            if i = 0 then begin
              Write('"');
            end;
            ch := ClipData.Data[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(ClipData.Data[i]);
            end;
          end;
          WriteLn('"');
        end else if ret_type = GetAtom('MULTIPLE') then  begin
          for i := 0 to ret_items - 1 do begin
            ch := ClipData.Data[i];
            if (ch = #0) and (i <> ret_items - 1) then begin
              Write('", "');
            end else begin
              Write(ClipData.Data[i]);
            end;
          end;
          WriteLn('"');
        end else if ret_type = GetAtom('image/bmp') then  begin
          save(PChar(ClipData.Data), Length(ClipData.Data), 'test.bmp');
          ShowBMP(PChar(ClipData.Data), Length(ClipData.Data));
        end else if ret_type = GetAtom('image/x-bmp') then  begin
          save(PChar(ClipData.Data), Length(ClipData.Data), 'test-x.bmp');
          ShowBMP(PChar(ClipData.Data), Length(ClipData.Data));
        end else if ret_type = GetAtom('image/png') then  begin
          save(PChar(ClipData.Data), Length(ClipData.Data), 'test.png');
          ShowPNG(PChar(ClipData.Data), Length(ClipData.Data));
        end else begin
          WriteLn('Unbekanntes Formt !  (', XGetAtomName(dis, ret_type), ')');
        end;
      end;
      if ret_items = 0 then begin
        ClipData.INCR := False;
        WriteLn('INCR_Count: ', INCR_Count);
        INCR_Count := 0;
        WriteLn('Data_Count: ', Length(ClipData.Data));
      end;

      XFree(prop_return);
    end;
  end;

procedure PrintName(w: TWindow);
var
  prop: TXTextProperty;
begin
  XGetWMName(dis, w, @prop);
  WriteLn('--- Empfange Daten von Win. Nr: 0x', IntToHex(w, 8), ' Name: ', PChar(prop.Value));
end;



begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  ClipData.INCR := False;
  ClipData.Data := nil;
  ClipData.ofs := 0;

  scr := DefaultScreen(dis);
  rootWin := RootWindow(dis, scr);

  XA_CLIPBOARD := GetAtom('CLIPBOARD');
  XA_TARGETS := GetAtom('TARGETS');

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  gc := XCreateGC(dis, win, 0, nil);

  XSelectInput(dis, win, KeyPressMask or PropertyChangeMask or ExposureMask);
  XStoreName(dis, win, 'Show Targets and Data');
  XMapWindow(dis, win);

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      Expose: begin
        XDrawRectangle(dis, win, gc, 10, 10, 100, 100);
        WriteLn('exposure');
      end;
      SelectionNotify: begin
        if Event.xselection.selection = XA_CLIPBOARD then begin
          SelectTargetAtom := Event.xselection.target;
          WriteLn('------------ SelectionNotify ---------------------');
          if SelectTargetAtom = 0 then begin
            WriteLn('Ungültiges Atom !');
          end else if SelectTargetAtom = XA_TARGETS then  begin
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
            ClipData.INCR := False;
            ClipData.ofs := 0;
            ClipData.Data := nil;
            Read_Property(win, SelectTargetAtom);
            //            ClipData.INCR := False;
            ClipData.ofs := 0;
            ClipData.Data := nil;
          end;
        end;
      end;
      PropertyNotify: begin
        if Event.xproperty.atom = XA_CLIPBOARD then begin
          if Event.xproperty.state = PropertyNewValue then begin

            if ClipData.INCR then  begin
              WriteLn('------------ PropertyNotify ---------------------');
              Read_Property(win, SelectTargetAtom);
              //              WriteLn('fertig');
            end;
          end;
        end;
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
//      // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
//      SelectionRequest: begin
//        WriteLn('SelectionRequest');
//        PrintName(Event.xselectionrequest.requestor);
////        WriteClipboard;
//      end;
//      // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
//      SelectionClear: begin
//        WriteLn('SelectionClear');
//        PrintName(Event.xselectionclear.window);
////      WriteLn('Eine andere App hat Clipboard Daten');
//      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
