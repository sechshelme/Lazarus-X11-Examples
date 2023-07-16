program Project1;

// https://stackoverflow.com/questions/11336596/xchangeproperty-always-fails

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
  win: TWindow;
  Event: TXEvent;
  scr: cint;

  procedure change_property(dis: PDisplay; win: TWindow; atom: PChar);
  var
    my_atom: TAtom;
    some_text: string;
  begin
    my_atom := XInternAtom(dis, atom, False);
    if my_atom = 0 then begin
      WriteLn('### failed to create atom with name; ', atom);
    end;
    some_text := 'Mein Atom: ' + atom;

    XChangeProperty(dis, win, my_atom, XA_STRING, 8, PropModeReplace, pbyte(PChar(some_text)), Length(some_text));
  end;

  procedure read_property(dis: PDisplay; win: TWindow; atom: PChar);
  var
    my_atom, _type: TAtom;
    nitems, format: cint;
    after: culong;
    Data: PChar = nil;
  begin
    my_atom := XInternAtom(dis, atom, False);
    if my_atom = 0 then begin
      WriteLn('### failed to create atom with name PERSONAL_PROPERTY');
    end;

    XGetWindowProperty(dis, win, my_atom, 0, 1024, False, 0, @_type, @format, @nitems, @after, @Data);

    if Data <> nil then begin
      WriteLn('prop: ', Data);
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
  XSelectInput(dis, win, KeyPressMask);
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
          XK_space: begin
            WriteLn('window; ', win);
            change_property(dis, win, 'MyAtom1');
            change_property(dis, win, 'MyAtom2');
            change_property(dis, win, 'MyAtom3');
            XFlush(dis);
          end;
          XK_Return: begin
            WriteLn('window; ', win);
            read_property(dis, win, 'MyAtom1');
            read_property(dis, win, 'MyAtom2');
            read_property(dis, win, 'MyAtom3');
            XFlush(dis);
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
