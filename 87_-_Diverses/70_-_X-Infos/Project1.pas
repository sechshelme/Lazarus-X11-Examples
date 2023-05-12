//image image.png
(*
Mögliche Listen
*)
//lineal
//code+
program Project1;

uses
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

  procedure PrintPixmapFormats;
  var
    pf: PXPixmapFormatValues;
    i, cnt: cint;
  begin
    pf := XListPixmapFormats(dis, @cnt);
    WriteLn('Pixmap Format:');
    WriteLn(' No | Depth | Bit per Pixel | scaline pad');
    for i := 0 to cnt - 1 do begin
      with pf[i] do begin
        WriteLn(i: 3, ' | ', depth: 4, '  |', bits_per_pixel: 13, '  |', scanline_pad: 10);
      end;
    end;
    WriteLn();
  end;

  procedure PrintDepths;
  var
    depths: pcint;
    i, cnt: cint;
  begin
    WriteLn('Depths:');
    WriteLn(' No | Depth');
    depths := XListDepths(dis, scr, @cnt);
    for i := 0 to cnt - 1 do begin
      WriteLn(i: 3, ' | ', depths[i]: 4);
    end;
    WriteLn();
  end;

  procedure PrintExtensions;
  var
    ext: PPChar;
    i, cnt: cint;
  begin
    ext := XListExtensions(dis, @cnt);
    WriteLn('Extensions:');
    for i := 0 to cnt - 1 do begin
      Write(ext[i]);
      if i < cnt - 1 then begin
        Write(' / ');
      end;
    end;
    WriteLn();
    WriteLn();
  end;

  procedure PrintFonts;
  var
    fnt: PPChar;
    i, cnt: cint;
  begin
    fnt := XListFonts(dis, '*', 1000, @cnt);
    WriteLn('Fonts:');
    for i := 0 to cnt - 1 do begin
      WriteLn(i: 5, ' | ', fnt[i]);
    end;
    WriteLn();
  end;

  procedure PrintFontWithInfo;
  var
    fnt: PPChar;
    i, cnt: cint;
    xfs: PXFontStruct;
  begin
    fnt := XListFontsWithInfo(dis, '*', 1000, @cnt, @xfs);
    for i := 0 to cnt - 1 do begin
      WriteLn(fnt[i]);
      with xfs[i] do begin
        WriteLn(ascent);
      end;
    end;
    WriteLn();
  end;

  procedure PrintHosts;
  var
    hosts: PXHostAddress;
    i, cnt: cint;
    state: TBool;
  begin
    hosts := XListHosts(dis, @cnt, @state);
    WriteLn('Hosts Count: ', cnt);
    for i := 0 to cnt - 1 do begin
      WriteLn(hosts[i].address);
    end;
  end;

  procedure PrintColorMaps;
  var
    i, cnt: cint;
    colmaps: PColormap;
  begin
    colmaps := XListInstalledColormaps(dis, win, @cnt);
    WriteLn('Colormaps: ', cnt);
    for i := 0 to cnt - 1 do begin
      WriteLn('ID: ', colmaps[i]);
    end;
    WriteLn();
  end;

  procedure PrintPropertys;
  var
    atoms: PAtom;
    i, cnt: cint;
  begin
    atoms := XListProperties(dis, win, @cnt);
    WriteLn('Propertys: ', cnt);
    for i := 0 to cnt - 1 do begin
      WriteLn('ID: ', atoms[i], '   ', XGetAtomName(dis, atoms[i]));
    end;
    WriteLn();
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

  PrintPixmapFormats;
  PrintDepths;
  PrintExtensions;
  //  PrintFonts;
  //   PrintFontWithInfo;
  PrintHosts;
  PrintColorMaps;
  PrintPropertys;

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
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
