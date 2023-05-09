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
  atomID: TAtom;
  i: integer;
  res: array of PChar;

  atoms: array of TAtom;

  days: array of string = ('Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'freitag', 'Samtag', 'Sonntag');

const
  Mask = ExposureMask or ButtonPressMask or KeyPressMask or PropertyChangeMask;

  // In der Konsole überprüfen mit "xlsatoms"

  procedure Show__NET_FRAME_EXTENTS;
  var
    a, t: TAtom;
    f: cint;
    n, b: culong;
    Data: Pcuchar;
    extens: pclong;
    pc: PChar='                                           ';
  begin
    // _NET_FRAME_EXTENTS, left, right, top, bottom, CARDINAL[4]/32
    a := XInternAtom(dis, '_NET_FRAME_EXTENTS', True);
    XGetWindowProperty(dis, win, a, 0, 4, False, AnyPropertyType, @t, @f, @n, @b, @Data);
    WriteLn('_NET_FRAME_EXTENTS   Nr: ', a);
    extens := pclong(Data);
    WriteLn('Format: ', f);
    WriteLn('elemente: ',n);
    WriteLn('typ: ',t);
    WriteLn('Got frame extents: left ', extens[0], ' right ', extens[1], ' top ', extens[2], ' botom ', extens[3]);
    WriteLn();

    // _NET_FRAME_EXTENTS, left, right, top, bottom, CARDINAL[4]/32
    a := XInternAtom(dis, '_NET_WM_NAME', True);
    XGetWindowProperty(dis, win, a, 0, 4, False, AnyPropertyType, @t, @f, @n, @b, @Data);
    WriteLn('_NET_WM_NAME   Nr: ', a);
    pc := PChar(Data);
    WriteLn(StrLen(pc));
    WriteLn('Format: ', f);
    WriteLn('elemente: ',n);
    WriteLn('typ: ',t);
    WriteLn('Name: ', pc);
    WriteLn();

  end;


begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, Mask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  SetLength(atoms, Length(days));
  XInternAtoms(dis, PPChar(days), Length(days), False, PAtom(atoms));



  //  for i:=1 to 100 do WriteLn(XGetAtomName(dis,i));

  SetLength(atoms, 200);
  for i := 0 to Length(atoms) - 1 do begin
    atoms[i] := i + 1;
  end;

  //Getmem(res, Length(atoms)*SizeOf(TAtom));
  SetLength(res, Length(atoms));
  XGetAtomNames(dis, PAtom(atoms), Length(atoms), PPChar(res));
  for i := 0 to Length(atoms) - 1 do begin
    WriteLn(res[i]);
  end;

  //  atomID := XInternAtom(dis, 'blabla', False);
  //  WriteLn(atomID);




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
            Show__NET_FRAME_EXTENTS;
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
