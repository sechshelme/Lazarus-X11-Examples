//image image.png
(*
Prüft, mit **XPointInRegion(Region, x, y)**, ob die Maus in der Region ist.
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

  procedure ModalShowX11Window(AMsg: string);
  var
    dis: PDisplay;
    win: TWindow;
    Event: TXEvent;
    msg: PChar;
    scr: cint;
    gc: TGC;
    x: cint = 0;
    y: cint = 0;

  begin
    msg := PChar(AMsg);

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if (dis = nil) then begin
      WriteLn('[ModalShowX11Window] Kann nicht das Display öffnen');
      exit;
    end;

    scr := DefaultScreen(dis);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 200, 200, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // winählt die gewünschten Ereignisse aus
//    XSelectInput(dis, win, ExposureMask or KeyPressMask or ButtonPressMask);
    XSelectInput(dis, win, ExposureMask or KeyPressMask or ButtonPressMask or PointerMotionMask or  StructureNotifyMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
    gc:=DefaultGC(dis, scr);

    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: // Zeichnet ein Rechteck (Quadrat) und gibt einen Text aus
        begin
//          XFillRectangle(dis, win, DefaultGC(dis, scr), 20, 20, 10, 10);
//          XDrawString(dis, win, DefaultGC(dis, scr), 50, 50, msg, strlen(msg));
        end;
        KeyPress: begin
          WriteLn(XKeysymToString(XLookupKeysym(@Event.xkey, 0)));
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then // Beendet das Programm bei [ESC]
          begin
            Break;
          end;
        end;
        ConfigureNotify: begin
          x := Event.xconfigure.Width;
          y := Event.xconfigure.Height;
        end;
        ButtonPress:
        begin
          x:=Event.xbutton.x; y:= Event.xbutton.y;
          XDrawLine(dis, win, gc,100,100,x,y);
          WriteLn('xroot=', Event.xbutton.x_root, ' yroot=', Event.xbutton.y_root);
          WriteLn('state=', Event.xbutton.state, ' button=', Event.xbutton.button);
        end;
        MotionNotify:
        begin
          x:=Event.xbutton.x; y:= Event.xbutton.y;
          XDrawLine(dis, win, gc,100,100,x,y);
          WriteLn('xroot=', Event.xbutton.x_root, ' yroot=', Event.xbutton.y_root);
          WriteLn('state=', Event.xbutton.state, ' button=', Event.xbutton.button);
        end;
      end;

    end;

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
  end;

begin
  ModalShowX11Window('Meine Nachricht');
end.
