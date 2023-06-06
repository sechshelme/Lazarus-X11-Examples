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
  sysutils,
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

  procedure Print_FontInfo;
  var
    i: integer;
    font: PXFontStruct;
    font_name: TAtom;
    fontprop: culong;
    pc: PChar;
  begin


    font := XLoadQueryFont(dis, '-bitstream-bitstream charter-medium-r-normal--0-0-0-0-p-0-adobe-standard');
//    font := XLoadQueryFont(dis, 'rk24');
    if font = nil then begin
      WriteLn('Konnte Font nicht laden !');
    end;
    WriteLn('count: ', font^.n_properties);
    for i := 0 to font^.n_properties - 1 do begin
      font_name:=font^.properties[i].Name;
      fontprop:=font^.properties[i].card32;
      Write(XGetAtomName(dis, font_name),': ');
      WriteLn(fontprop,'  ',fontprop.ToHexString);
    end;

//    fontprop:=font^.properties[0].card32;

//         pc:=PChar(@fontprop);
//   WriteLn(pc);

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
