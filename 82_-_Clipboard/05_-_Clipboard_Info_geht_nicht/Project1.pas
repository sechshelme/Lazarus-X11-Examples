program Project1;

uses
  Math,
  SysUtils,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

const
  clBlack = 30;
  clRed = 31;
  clGreen = 32;
  clYellow = 33;
  clBlurw = 34;
  clMagenta = 35;
  clCyan = 36;
  clWhite = 37;
  clBrightBlack = 90;
  clBrightRed = 91;
  clBrightGree = 92;
  clBrightYellow = 93;
  clBrightBlue = 94;
  clBrightMagenta = 95;
  clBrightCyan = 96;
  clBrightWhite = 97;

  procedure SetFGColor(c: byte);
  begin
    Write(#27'[', Ord(c), 'm');
  end;

  procedure SetBGColor(c: byte);
  begin
    Write(#27'[', Ord(c + 10), 'm');
  end;

  procedure SetFGNormalColor;
  begin
    Write(#27'[0m');
    //  SetFGColor(clBrightWhite);
  end;


type
  TAtoms = array of TAtom;

var
  dis: PDisplay;
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  XA_CLIPBOARD, XA_TARGETS: TAtom;
  SelectTargetAtom: TAtom = 0;
  Target_List: TAtoms=nil;
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

  procedure ShowHTML(Data: PChar; len: SizeInt);
  var
    ch: char;
    noPrint: integer = 0;
  begin
    SetFGColor(clBrightBlue);
    Write('"');
    for i := 0 to len - 1 do begin
      ch := Data[i];
      if ch = '<' then begin
        Inc(noPrint);
      end;
      if noPrint = 0 then  begin
        Write(ch);
      end;
      if ch = '>' then begin
        Dec(noPrint);
      end;
      //      Write(noPrint,'  ');
    end;
    WriteLn('"');
    SetFGNormalColor;
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
      if GetAtom(PChar(AtomList[i])) = ret_type then begin
        Result := True;
        Exit;
      end;
    end;
  end;

  function StringInAtom(ret_type: TAtom): boolean;
  const
    StringAtoms: TStringArray = (
      'STRING',
      'UTF8_STRING',
      'COMPOUND_TEXT',
      'TEXT');
  var
    i: integer;
  begin
    Result := False;
    for i := 0 to Length(StringAtoms) - 1 do begin
      if GetAtom(PChar(StringAtoms[i])) = ret_type then begin
        Result := True;
        Exit;
      end;
    end;
    if pos('text/', XGetAtomName(dis, ret_type)) = 1 then begin
      Result := True;
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

        if RetInAtom(ret_type, ['ATOM', 'ATOM_PAIR']) then begin
          for i := 0 to ret_items - 1 do begin
            Write('Nr: ', prop_return[i]: 5);
            if prop_return[i] <> 0 then  begin
              WriteLn('  Name: ', XGetAtomName(dis, prop_return[i]));
            end else begin
              WriteLn();
            end;
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
        end else if RetInAtom(ret_type, ['text/html']) then  begin
          ShowHTML(PChar(ClipData.Data), Length(ClipData.Data));
        end else if StringInAtom(ret_type) then  begin
          SetFGColor(clCyan);
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
          SetFGNormalColor;
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

  // -------------- Senden ----------------

  function CreatBuffer: string;
  const
    size: SizeInt = 1000 * 1000 * 10 - 1;
    //    size: SizeInt = 1000;
  var
    i: integer;
  begin
    SetLength(Result, size);
    for i := 1 to size do begin
      if i mod 90 = 0 then begin
        Result[i] := #10;
      end else if i mod 9 = 0 then begin
        Result[i] := '-';
      end else begin
        Result[i] := char(Random(10) + 48);
      end;
    end;
  end;

const
  HANDLE_OK = 0;
  HANDLE_INCOMPLETE = 1 shl 1;

type
  THandleResult = cint;

  TINCR_State = (S_NULL = 0, S_INCR_1 = 1, S_INCR_2 = 2);

const
    max_req = 4000;
//  max_req = 1000 * 1000;

type
  TIncrTrack = record
    incr_counter: cint;

    state: TINCR_State;
    display: PDisplay;
    requestor: TWindow;
    _property, selection: TAtom;
    target: TAtom;
    format: cint;
    Data: PChar;
    nelements, offset, chunk, max_elements: cint;
  end;

var
  XA_INCR, XA_UTF8_STRING, XA_TextPlain: TAtom;
  supported_targets: array of TAtom = nil;
  it: TIncrTrack;

  function change_property(display: PDisplay; requestor: TWindow; _property, target: TAtom; format, mode: cint; Data: PChar; nelements: cint; selection: TAtom): THandleResult;
  var
    ev: TXSelectionEvent;
    nr_bytes: clong;
  begin
    nr_bytes := nelements * format div 8;
    if nr_bytes <= max_req then begin
      XChangeProperty(display, requestor, _property, target, format, mode, pbyte(Data), nelements);
      Result := HANDLE_OK;
      Exit;
    end;

    ev._type := SelectionNotify;
    ev.display := display;
    ev.requestor := requestor;
    ev.selection := selection;
    ev.time := CurrentTime;
    ev.target := target;
    ev._property := _property;

    WriteLn('Schreibe Stringlänge: ', nr_bytes);

    XSelectInput(ev.display, ev.requestor, PropertyChangeMask);
    XChangeProperty(ev.display, ev.requestor, ev._property, XA_INCR, 32, PropModeReplace, pbyte(@nr_bytes), 1);

    XSendEvent(display, requestor, False, 0, @ev);

    it.incr_counter := 0;

    it.state := S_INCR_1;
    it.display := display;
    it.requestor := requestor;
    it._property := _property;
    it.selection := selection;
    it.target := target;
    it.format := format;
    it.Data := Data;
    it.nelements := nelements;
    it.offset := 0;
    it.max_elements := max_req * 8 div format;
    it.chunk := min(it.max_elements, it.nelements - it.offset);

    Result := HANDLE_INCOMPLETE;
  end;

  function continue_incr: THandleResult;
  begin
    Inc(it.incr_counter);
    WriteLn('INCR-Count: ', it.incr_counter, '  State: ', it.state);
    Result := HANDLE_OK;
    if it.state = S_INCR_1 then begin
      XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeReplace, pbyte(it.Data), it.chunk);
      it.offset += it.chunk;
      it.state := S_INCR_2;
      Result := HANDLE_INCOMPLETE;
    end else if it.state = S_INCR_2 then begin
      it.chunk := min(it.max_elements, it.nelements - it.offset);
      if it.chunk <= 0 then begin
        XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeAppend, nil, 0);
        it.state := S_NULL;
        Result := HANDLE_OK;
      end else begin
        XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeAppend, pbyte(it.Data + it.offset), it.chunk);
        it.offset += it.chunk;
        Result := HANDLE_INCOMPLETE;
      end;
    end;
  end;

  procedure handle_selection_request(const event: TXEvent);
  var
    ev: TXSelectionEvent;
    hr: THandleResult = HANDLE_OK;
  begin
    ev._type := SelectionNotify;
    ev.display := event.xselectionrequest.display;
    ev.requestor := event.xselectionrequest.requestor;
    ev.selection := event.xselectionrequest.selection;
    ev.time := event.xselectionrequest.time;
    ev.target := event.xselectionrequest.target;
    ev._property := event.xselectionrequest._property;

    WriteLn('Atom: ', XGetAtomName(ev.display, ev.target));

    if ev.target = XA_TARGETS then begin
      hr := HANDLE_OK;
      XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, pbyte(supported_targets), Length(supported_targets));
    end else if (ev.target = XA_UTF8_STRING) or (ev.target = XA_STRING) or (ev.target = XA_TextPlain) then  begin
      hr := change_property(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, it.Data, StrLen(it.Data), ev.selection);
    end else begin
      ev._property := None;
    end;

    if (hr and HANDLE_INCOMPLETE) = 0 then begin
      XSendEvent(dis, ev.requestor, False, 0, @ev);
      XSync(dis, False);
    end;
  end;

  // -------------- Schleife ----------------

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

  // --- senden ---
//  XA_TARGETS := XInternAtom(display, 'TARGETS', False);
  XA_INCR := XInternAtom(dis, 'INCR', False);
  XA_UTF8_STRING := XInternAtom(dis, 'UTF8_STRING', False);
  XA_TextPlain := XInternAtom(dis, 'text/plain', False);
//  XA_CLIPBOARD := XInternAtom(display, 'CLIPBOARD', False);

supported_targets := [XA_TARGETS, XA_INCR, XA_STRING, XA_UTF8_STRING, XA_TextPlain];


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
      KeyPress: begin
        key := XLookupKeysym(@Event.xkey, 0);
        case key of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_CLIPBOARD, win, CurrentTime);
          end;
          XK_Return: begin
            XSetSelectionOwner(dis, XA_CLIPBOARD, win, 0);
            XGetSelectionOwner(dis, XA_CLIPBOARD);
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
      SelectionNotify: begin
        if Event.xselection.selection = XA_CLIPBOARD then begin
          SelectTargetAtom := Event.xselection.target;
          WriteLn('------------ SelectionNotify ---------------------');
          if SelectTargetAtom = 0 then begin
            WriteLn('Ungültiges Atom [NULL] !');
          end else if SelectTargetAtom = XA_TARGETS then  begin
            Target_List := getTargetList(win);
            WriteLn(#10);
            for i := 0 to Length(Target_List) - 1 do begin
              SetFGColor(clBrightYellow);
              if i <= 9 then begin
                WriteLn('(', i, ') ', XGetAtomName(dis, Target_List[i]));
              end else begin
                WriteLn('(', char(i + 55 + 32), ') ', XGetAtomName(dis, Target_List[i]));
              end;
              SetFGNormalColor;
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

      //  --- empfangen ---
            if ClipData.INCR then  begin
              WriteLn('------------ PropertyNotify ---------------------');
              Read_Property(win, SelectTargetAtom);
              //              WriteLn('fertig');
            end;
          end;
//  --- senden ---
          if event.xproperty.state = PropertyDelete then begin
            WriteLn('PropertyNotify 2');
            if it.state=S_NULL then            continue_incr;
          end;
        end;
      end;
      //      // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
      SelectionRequest: begin
        WriteLn('SelectionRequest');
        if event.xselectionrequest.selection = XA_CLIPBOARD then begin
          it.Data := PChar(CreatBuffer);
          handle_selection_request(event);
        end;
      end;
      //      // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
      SelectionClear: begin
        WriteLn('SelectionClear');
        if event.xselectionclear.selection = XA_CLIPBOARD then begin
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
