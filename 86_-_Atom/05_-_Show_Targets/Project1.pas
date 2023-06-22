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
  xatom,
  x;

var
  dis: PDisplay;
  win, rootWin: TWindow;
  Event: TXEvent;
  scr: cint;
  XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA: TAtom;

procedure show_targets;
var
  targetFormat: TAtom;
  resbits: cint;
  resize, restail: culong;
  res: PAtom;
  i: integer;
  an: PChar;
begin
  XGetWindowProperty(dis, win, XA_XSEL_DATA, 0, 1024 * 8, False, 0, @targetFormat, @resbits, @resize, @restail, @res);
  WriteLn('Targets:');
  for i := 0 to resize - 1 do begin
    an := XGetAtomName(dis, res[i]);
    if an <> nil then begin
      WriteLn('   ', an);
      XFree(an);
    end;
  end;
  XFree(res);
  XDeleteProperty(dis, win, XA_XSEL_DATA);
end;

procedure paste_Clipboard;
var
  targetFormat: TAtom;
  resbits: cint;
  resize, restail: culong;
  res: PChar;
  i: integer;
  an: PChar;
begin
  XGetWindowProperty(dis, win, XA_XSEL_DATA, 0, 1024 * 8, False, 0, @targetFormat, @resbits, @resize, @restail, @res);
  WriteLn('Size:', resize);
  WriteLn('--- Clipboard-Data -----------------');
  WriteLn(res);
  WriteLn('------------------------------------');
  XFree(res);
  XDeleteProperty(dis, win, XA_XSEL_DATA);
end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  rootWin := RootWindow(dis, scr);

  XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);
  XA_TARGETS := XInternAtom(dis, 'TARGETS', False);
  XA_XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);

  win := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

  XSelectInput(dis, win, KeyPressMask);
  XStoreName(dis, win, 'Mein Fenster');
  XMapWindow(dis, win);

  //  XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, win, CurrentTime);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      SelectionNotify: begin
        WriteLn('prop: ',Event.xselection.target, '  name: ', XGetAtomName(dis, Event.xselection.target));
        if Event.xselection.target = XA_TARGETS then  begin
          show_targets;
        end else
        if Event.xselection.target = XA_STRING then  begin
          paste_Clipboard;
        end;
      end;
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_t: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_TARGETS, XA_XSEL_DATA, win, CurrentTime);
          end;
          XK_v: begin
            XConvertSelection(dis, XA_CLIPBOARD, XA_STRING, XA_XSEL_DATA, win, CurrentTime);
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
