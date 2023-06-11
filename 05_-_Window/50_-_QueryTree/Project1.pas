//image image.png
(*
Es ist möglich ein Fenster innerhalb eine anderen zu erzeugen.
Bei GUI-Anwendungen ist dies in der Regel der Fall.
Jedes **Panel**, **Button**, etc. sind eigene Fenster.
Dies ist auch rekursiv möglich. ZB. Ein Button in einem Panel und dieses dann im Hauptfenster.
Dafür muss man bei **XCreateSimpleWindow** anstelle des Rootwindow, das Parent-Fenster angeben.
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
  win, Subwin1, Subwin2, root_win: TWindow;
  Event: TXEvent;
  scr: cint;
  gc: TGC;
  i: integer;

const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask;

  function CreateTree(k: integer): string;
  var
    i: integer;
  begin
    Result := '';
    for i := 0 to k do begin
      Result := Result + '-';
    end;
  end;

  procedure PrintParent(win: TWindow);
  var
    root, parent: TWindow;
    children: PWindow;
    children_count: cuint;

  begin
    parent := win;
    repeat
      WriteLn('Parent: ', parent);
      XQueryTree(dis, parent, @root, @parent, @children, @children_count);
    until parent = 0;
  end;

  procedure PrintKind(win: TWindow; k: integer);
  var
    root, parent: TWindow;
    children: PWindow;
    children_count: cuint;
    i: integer;
    tree: string;
  begin
    XQueryTree(dis, win, @root, @parent, @children, @children_count);

    if k = 0 then begin
      WriteLn('root:   ', root);
      WriteLn('parent: ', parent);
    end;
    tree := CreateTree(k);
    WriteLn(tree, 'Count Child: ', children_count);
    for i := 0 to children_count - 1 do begin
      WriteLn(tree, i: 5, '   Nr: ', children[i]);
      //      XKillClient(dis,children[i]);

      PrintKind(children[i], k + 1);
    end;
    XFree(children);
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
  gc := DefaultGC(dis, scr);

  // Erstellt das Haupt-Fenster
  root_win := RootWindow(dis, scr);
  win := XCreateSimpleWindow(dis, root_win, 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win, 'Sub-Fenster'); // Fenster-Titel, geht nur bei Haupt-Fenster

  // Zwei Subfenster
  Subwin1 := XCreateSimpleWindow(dis, win, 100, 100, 320, 240, 10, BlackPixel(dis, scr), WhitePixel(dis, scr));
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 15, BlackPixel(dis, scr), WhitePixel(dis, scr));

  WriteLn('root: ', root_win);
  WriteLn('win:  ', win);
  WriteLn('sub1: ', Subwin1);
  WriteLn('sub2: ', Subwin2);
  WriteLn();

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);

  // Ereignisschleife
  while (True) do begin
    XNextEvent(dis, @Event);

    case Event._type of
      Expose: begin
        XClearWindow(dis, win);
        XClearWindow(dis, Subwin1);
        for i := 0 to 100 do begin
          XSetForeground(dis, gc, $FF);
          XDrawArc(dis, win, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 8);
          XDrawArc(dis, Subwin1, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);

          XSetForeground(dis, gc, $FF shl 16);
          XDrawArc(dis, Subwin2, gc, random(500) - 200, random(500) - 200, 150, 150, 0, 360 * 64);
        end;
      end;
      MotionNotify: begin
      end;
      ButtonPress: begin
        // Angeklicktes Fenster zuoberst
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
            PrintKind(root_win, 0);
          end;
          XK_p: begin
            PrintParent(Subwin1);
          end;
        end;
      end;
    end;
  end;

  // Schliesst die Fenster
  XDestroyWindow(dis, Subwin2);
  XDestroyWindow(dis, Subwin1);
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
