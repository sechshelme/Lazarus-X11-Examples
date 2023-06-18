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
  end_of_atoms: boolean = False;
  atomList: TStringArray;

const
  Mask = ExposureMask or ButtonPressMask or KeyPressMask or PropertyChangeMask;

  // In der Konsole überprüfen mit "xlsatoms"

  procedure Write_New_Atoms;
  const
    days: array of string = ('Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samtag', 'Sonntag');
  var
    atoms: PAtom = nil;
  begin
    Getmem(atoms, Length(days) * SizeOf(TAtom));
    XInternAtoms(dis, PPChar(days), Length(days), False, atoms);
    Freemem(atoms);
  end;

  function show_error(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    Result := 0;
    end_of_atoms := True;
  end;

  function CreateAtomList: TStringArray;
  var
    index: cint = 0;
    pc: PChar;
    old_Error_Handle: TXErrorHandler;
  begin
    Result := nil;
    end_of_atoms := False;
    old_Error_Handle := XSetErrorHandler(@show_error);
    repeat
      Inc(index);
      pc := XGetAtomName(dis, index);
      if not end_of_atoms then begin
        Insert(pc, Result, index);
      end;
      XFree(pc);
    until end_of_atoms;
    XSetErrorHandler(old_Error_Handle);
  end;

  procedure ShowAtoms(const sa: TStringArray);
  var
    i: integer;
  begin
    WriteLn('Atome:', Length(sa));
    for i := 0 to Length(sa) - 1 do begin
      WriteLn(sa[i]);
    end;
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
          XK_w: begin
            Write_New_Atoms;
          end;
          XK_s: begin
            // Alle Atome listen
            atomList := CreateAtomList;
            ShowAtoms(atomList);
          end;
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
