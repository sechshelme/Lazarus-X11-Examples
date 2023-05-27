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
  cursorfont,
  SysUtils,
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
  scr, cursor: cint;
  gc: TGC;
  i: integer;
  gp: TXID;

  function XmuClientWindow(ADisplay: PDisplay; AWindow: TWindow): TWindow; cdecl; external 'Xmu';


const
  EventMask = KeyPressMask or ExposureMask or PointerMotionMask or ButtonPressMask or ButtonReleaseMask;

  function ParentWin(win: TWindow): TWindow;
  var
    root, parent: TWindow;
    children: PWindow;
    children_count: cuint;
  begin
    XQueryTree(dis, win, @root, @parent, @children, @children_count);
    Result := parent;
  end;

  function ChildWin(win: TWindow): TWindow;
  var
    root, parent: TWindow;
    children: PWindow;
    children_count: cuint;
  begin
    XQueryTree(dis, win, @root, @parent, @children, @children_count);
    if children_count > 0 then  begin
      Result := children[0];
    end else begin
      WriteLn('Kein Kind');
      Result := 0;
    end;
  end;

  procedure GetMapping;
  var
    ch: array[0..255] of byte;
    Count: cint;
  begin
    Count := XGetPointerMapping(dis, ch, Length(ch));
    WriteLn('count: ', Count);
    for i := 0 to Count - 1 do begin
      Write(ch[i], ' ');
    end;
    WriteLn(i);
  end;

  function GrabPointer(button: cint): TXID;
  var
    ev: TXEvent;
    retwin: TWindow = 0;
    pressed: integer = 0;
    retbutton: cint = -1;
  begin
    cursor := XCreateFontCursor(dis, XC_pirate);

    XSync(dis, 0);
    //  XGrabButton();
    XGrabPointer(dis, root_win, False, ButtonPressMask or ButtonReleaseMask, GrabModeSync, GrabModeAsync, 0, cursor, CurrentTime);

    while (retwin = 0) or (pressed <> 0) do begin
      XAllowEvents(dis, SyncPointer, CurrentTime);
      XWindowEvent(dis, root_win, ButtonPressMask or ButtonReleaseMask, @ev);
      case ev._type of
        ButtonPress: begin
          if retwin = 0 then begin
            retbutton := ev.xbutton.button;
            if ev.xbutton.subwindow <> 0 then begin
              retwin := ev.xbutton.subwindow;
            end else begin
              retwin := root_win;
            end;
            Inc(pressed);
          end;
        end;
        ButtonRelease: begin
          if pressed > 0 then begin
            Dec(pressed);
          end;
        end;
      end;

    end;
    XUngrabPointer(dis, CurrentTime);
    XFreeCursor(dis, cursor);
    XSync(dis, 0);

    if (button = -1) or (retbutton = button) then begin
      Result := retwin;
    end else begin
      Result := 0;
    end;
    //    XDestroyWindow(dis, Result);
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
  Subwin2 := XCreateSimpleWindow(dis, win, 250, 80, 320, 240, 0, BlackPixel(dis, scr), WhitePixel(dis, scr));

  // Border-Breite nachträglich festlegen, geht nur bei Sub-Fenster
  XSetWindowBorderWidth(dis, Subwin2, 15);

  // Es werden Events für Zeichen, Maus und Tastatur gebraucht.
  XSelectInput(dis, win, EventMask);
  XSelectInput(dis, Subwin1, EventMask);
  XSelectInput(dis, Subwin2, EventMask);

  // Fenster anzeigen
  XMapWindow(dis, win);
  XMapWindow(dis, Subwin1);
  XMapWindow(dis, Subwin2);

  WriteLn('RootWin: ', IntToHex(root_win));
  WriteLn('win:     ', IntToHex(win));
  WriteLn('Parent:  ', IntToHex(ParentWin(win)));
  WriteLn('Subwin1: ', IntToHex(Subwin1));
  WriteLn('Subwin2: ', IntToHex(Subwin2));
  WriteLn();

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
        WriteLn('press:', Event.xbutton.window);
        // Angeklicktes Fenster zuoberst
        XRaiseWindow(dis, Event.xbutton.window);
      end;

      KeyPress: begin
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_m: begin
            GetMapping;
          end;
          XK_space: begin
            gp := GrabPointer(1);
            WriteLn('win:    ', IntToHex(gp));
            WriteLn('Child: ', IntToHex(ChildWin(gp)));
            WriteLn('Parent: ', IntToHex(ParentWin(gp)));
            WriteLn('Client  ', IntToHex(XmuClientWindow(dis, gp)));
            WriteLn();
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
