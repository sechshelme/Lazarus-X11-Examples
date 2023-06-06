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
    'FOUNDRY',
    'FAMILY_NAME',
    'WEIGHT_NAME',
    'SLANT',
    'SETWIDTH_NAME',
    'ADD_STYLE_NAME',
    'SPACING',
    'CHARSET_REGISTRY',
    'CHARSET_ENCODING',
    'FACE_NAME',
    'COPYRIGHT',
    'NOTICE',
    'FONT',
    'FONT_NAME');

  ListCardinal: TStringArray = (
    'PIXEL_SIZE',
    'POINT_SIZE',
    'RESOLUTION_X',
    'RESOLUTION_Y',
    'AVERAGE_WIDTH',
    'RESOLUTION',
    'MIN_SPACE',
    'NORM_SPACE',
    'MAX_SPACE',
    'END_SPACE',
    'RELATIVE_SETWIDTH',
    'RELATIVE_WEIGHT',
    'CAP_HEIGHT',
    'SUPERSCRIPT_SIZE',
    'SUBSCRIPT_SIZE',
    'DESTINATION');

  ListInt: TStringArray = (
    'QUAD_WIDTH',
    'SUPERSCRIPT_X',
    'SUPERSCRIPT_Y',
    'SUBSCRIPT_X',
    'SUBSCRIPT_Y',
    'UNDERLINE_POSITION',
    'UNDERLINE_THICKNESS',
    'STRIKEOUT_ASCENT',
    'STRIKEOUT_DESCENT',
    'ITALIC_ANGLE',
    'X_HEIGHT',
    'WEIGHT',
    'AVG_CAPITAL_WIDTH',
    'AVG_LOWERCASE_WIDTH',
    'FIGURE_WIDTH',
    'SMALL_CAP_SIZE');

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

  procedure Print_FontInfo;
  var
    i: integer;
    font: PXFontStruct;
    font_prop_Atom: TAtom;
    fontprop: culong;
    pc, font_prop_Name: PChar;
  begin

    font := XLoadQueryFont(dis, '-bitstream-bitstream charter-medium-r-normal--0-0-0-0-p-0-adobe-standard');
    //    font := XLoadQueryFont(dis, 'rk24');
    if font = nil then begin
      WriteLn('Konnte Font nicht laden !');
    end;
    WriteLn('count: ', font^.n_properties);
    for i := 0 to font^.n_properties - 1 do begin
      font_prop_Atom := font^.properties[i].Name;
      font_prop_Name := XGetAtomName(dis, font_prop_Atom);
      fontprop := font^.properties[i].card32;
      Write(font_prop_Name, ': ');
      if Is_Atom(font_prop_Name, ListAtoms) then begin
        WriteLn(XGetAtomName(dis, fontprop));
      end else if Is_Atom(font_prop_Name, ListCardinal) then begin
        WriteLn('cardinal: ',fontprop);
      end else if Is_Atom(font_prop_Name, ListInt) then begin
        WriteLn('int: ',fontprop);
      end else begin
        WriteLn('unknow: ',fontprop );
      end;
//      WriteLn(fontprop, '  ', fontprop.ToHexString);
    end;
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
          XK_space: begin
            Print_FontInfo;
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
