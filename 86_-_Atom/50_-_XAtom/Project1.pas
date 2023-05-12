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

  days:array of String=('Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'freitag', 'Samtag', 'Sonntag');

  // In der Konsole überprüfen mit "xlsatoms"

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XSelectInput(dis, win, KeyPressMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  SetLength(atoms,Length(days));
  XInternAtoms(dis ,PPChar(days),Length(days),False,PAtom(atoms));



  //  for i:=1 to 100 do WriteLn(XGetAtomName(dis,i));

  SetLength(atoms,200);
  for i:=0 to Length(atoms)-1 do atoms[i]:=i+1;

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
