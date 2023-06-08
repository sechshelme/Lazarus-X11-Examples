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
  x;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;

  // https://www.x.org/releases/X11R7.7/doc/xorg-docs/xlfd/xlfd.html

const
  ListAtoms: TStringArray = (
    'FONT_NAME',
    'FOUNDRY',
    'FAMILY_NAME',
    'WEIGHT_NAME',
    'SLANT',
    'SETWIDTH_NAME',
    'ADD_STYLE_NAME',
    'SPACING',
    'CHARSET_REGISTRY',
    'CHARSET_ENCODING',
    'FONT',
    'FACE_NAME',
    'FULL_NAME',
    'COPYRIGHT',
    'NOTICE',
    'FONT_TYPE',
    'FONT_VERSION',
    'RASTERIZER_NAME',
    'RASTERIZER_VERSION',
    '_ADOBE_POSTSCRIPT_FONTNAME',

    'CHARSET_COLLECTIONS',
    'CLASSIFICATION',
    'DEVICE_FONT_NAME',
    'FONTNAME_REGISTRY',
    'MONOSPACED',
    'QUALITY',
    'RELATIVE_SET',
    'STYLE');

  function Is_Atom(Src: string; list: TStringArray): boolean;
  var
    i: integer;
    s: string;
  begin
    Result := False;
    for i := 0 to Length(list) - 1 do begin
      s := string(Src);
      if list[i] = s then begin
        Result := True;
        Exit;
      end;
    end;
  end;



  function IngnoreError(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    Result := 0;
  end;

  procedure PrintProperty(prop: PXFontProp);
  var
    oldhandler: TXErrorHandler;
    atom, Value: PChar;
    nosuch: string;
    i: integer;
  begin
    oldhandler := XSetErrorHandler(@IngnoreError);

    atom := XGetAtomName(dis, prop^.Name);
    if atom = nil then begin
      WriteStr(nosuch, 'No such atom = ', prop^.Name);
      atom := PChar(nosuch);
    end;
    Write('      ', atom);
    for i := StrLen(atom) to 25 do begin
      Write(' ');
    end;
    Write(' ');

    if Is_Atom(atom, ListAtoms) then begin
      Value := XGetAtomName(dis, prop^.card32);
      if Value = nil then begin
        WriteLn(prop^.card32, '(expected string value)');
      end else begin
        WriteLn(Value);
        XFree(Value);
      end;
    end else begin
      WriteLn(prop^.card32);
    end;
    XSetErrorHandler(oldhandler);
  end;

  procedure ComputeFontType(fs: PXFontStruct);
  var
    awatom: TAtom;
    i: integer;
    char_cell: boolean = True;
    reason: PChar = nil;
    cs: PXCharStruct;
    s: string;
  begin
    awatom := XInternAtom(dis, 'AVERAGE_WIDTH', True);
    Write('  font type:'#9#9);
    if fs^.min_bounds.Width <> fs^.max_bounds.Width then begin
      WriteLn('Proportional (min and max widths not equal)');
      Exit;
    end;
    if awatom <> 0 then begin
      for i := 0 to fs^.n_properties - 1 do begin
        if (fs^.properties[i].Name = awatom) and (fs^.max_bounds.Width * 10 <> fs^.properties[i].card32) then begin
          char_cell := False;
          reason := 'font width not equal to AVERAGE_WIDTH';
          Break;
        end;
      end;
    end;

    if fs^.per_char <> nil then begin
      cs := fs^.per_char;
      for i := fs^.min_char_or_byte2 to fs^.max_char_or_byte2 do begin
        if cs^.Width = 0 then begin
          Continue;
        end;
        if cs^.Width <> fs^.max_bounds.Width then begin
          WriteLn('Proportional (characters not all the same width)');
          Exit;
        end;
        if char_cell then begin
          if cs^.Width < 0 then begin
            if not ((cs^.Width <= cs^.lbearing) and (cs^.lbearing <= cs^.rbearing) and (cs^.rbearing <= 0)) then begin
              char_cell := False;
              reason := 'ink outside bounding box';
            end;
          end else if not ((0 <= cs^.lbearing) and (cs^.lbearing <= cs^.rbearing) and (cs^.rbearing <= cs^.Width)) then begin
            char_cell := False;
            reason := 'ink outside bounding box';
          end;
          if not ((cs^.ascent <= fs^.ascent) and (cs^.descent <= fs^.descent)) then begin
            char_cell := False;
            reason := 'characters not all same ascent or descent';
          end;
        end;

        Inc(cs);
      end;
      if char_cell then begin
        s := 'Character Cell';
      end else begin
        s := 'Monospaced';
      end;
      Write(s);
      if reason <> nil then begin
        Write(' (', reason, ')');
      end;
      WriteLn();
    end;
  end;

  procedure PrintBounds(_what: PChar; ptr: PXCharStruct);
  var
    p: PXCharStruct;
  begin
    p := ptr;
    WriteLn(#9, _what: 3, #9#9, p^.Width: 4, '  ', p^.lbearing: 4, '  ', p^.rbearing: 4, '  ', p^.ascent: 4, '  ', p^.descent: 4, '  $', IntToHex(p^.attributes, 4));
  end;

  procedure do_query_font(Name: PChar);
  const
    bounds_metrics_title: PChar = 'width left  right  asc  desc   attr   keysym';
  var
    i: integer;
    info: PXFontStruct;
    s: string;
  begin
    if Name = nil then begin
      exit;
    end;
    info := XLoadQueryFont(dis, Name);

    if info = nil then  begin
      WriteLn('Font nicht gefunden');
    end;

    WriteLn('name: ', Name);
    if info^.direction = FontLeftToRight then begin
      s := 'left to right';
    end else begin
      s := 'right to left';
    end;
    WriteLn('  direction:'#9#9, s);
    WriteLn('  indexing:'#9#9, ((info^.min_byte1 = 0) and (info^.max_byte1 = 0)));
    WriteLn('rows:'#9#9#9'$', IntToHex(info^.min_byte1, 2), ' thru $', IntToHex(info^.max_byte1, 2), ' (', info^.min_byte1, ' thur ', info^.max_byte1, ')');
    WriteLn('columns:'#9#9'$', IntToHex(info^.min_char_or_byte2, 2), ' thru $', IntToHex(info^.max_char_or_byte2, 2), ' (', info^.min_char_or_byte2, ' thur ', info^.max_char_or_byte2, ')');
    if info^.all_chars_exist <> 0 then begin
      s := 'yes';
    end else begin
      s := 'no';
    end;
    WriteLn('  all chars_exits'#9, s);
    WriteLn('  default char:'#9#9'$', IntToHex(info^.default_char, 4), ' (', info^.default_char, ')');
    WriteLn('  ascent:'#9#9, info^.ascent);
    WriteLn('  descent:'#9#9, info^.descent);
    ComputeFontType(info);
    WriteLn('  bounds:'#9#9, bounds_metrics_title);

    PrintBounds('min', @info^.min_bounds);
    PrintBounds('max', @info^.max_bounds);

    WriteLn('  properties: ', info^.n_properties);
    for i := 0 to info^.n_properties - 1 do begin
      PrintProperty(@info^.properties[i]);
    end;
    XFreeFontInfo(nil, info, 1);
  end;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  // Erstellt das Fenster
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
  XSelectInput(dis, win, KeyPressMask);

  // Fenster Titel festlegen
  XStoreName(dis, win, 'Mein Fenster');

  // Fenster anzeigen
  XMapWindow(dis, win);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_1: begin
            do_query_font('-bitstream-bitstream charter-medium-r-normal--0-0-0-0-p-0-adobe-standard');
          end;
          XK_2: begin
            do_query_font('rk24');
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
