//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)
//lineal
//code+

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux

program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

  function PrintSelection(dis: PDisplay; win: TWindow; bufname, fmtname: PChar): boolean;
  var
    bufid, fmtid, propid, incrid: TAtom;
    event: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    result1: PChar;
  begin
    bufid := XInternAtom(dis, bufname, False);
    fmtid := XInternAtom(dis, fmtname, False);
    propid := XInternAtom(dis, 'XSEL_DATA', False);
    incrid := XInternAtom(dis, 'INCR', False);

    WriteLn(bufid);
    WriteLn(fmtid);
    WriteLn(propid);
    WriteLn(incrid);

    XConvertSelection(dis, bufid, fmtid, propid, win, CurrentTime);
    repeat
      XNextEvent(dis, @event);
    until not ((event._type <> SelectionNotify) or (event.xselection.selection <> bufid));

    WriteLn(event.xselection._property);
    if event.xselection._property <> 0 then begin

      XGetWindowProperty(dis, win, propid, 0, MaxLongint div 4, False, AnyPropertyType, @fmtid, @resbits, @ressize, @restail, @result1);

      WriteLn('ressize: ', ressize);
      if fmtid = incrid then begin
        WriteLn('Buffer is too large and INCR reading is not implemented yet.');
      end else begin
        WriteLn(result1);
      end;

      XFree(result1);
      Result := True;
      Exit;
    end;
    Result := False;

  end;

var
  dis: PDisplay;
  win: TWindow;
  scr: cint;
  res: boolean;

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

  res :=
    PrintSelection(dis, win, 'CLIPBOARD', 'UTF8_STRING') or
    PrintSelection(dis, win, 'CLIPBOARD', 'STRING');

  // Wählt die gewünschten Ereignisse aus
  // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
  XSelectInput(dis, win, KeyPressMask);

  // Fenster Titel festlegen
  XStoreName(dis, win, 'Mein Fenster');

  // Fenster anzeigen
  XMapWindow(dis, win);


  //// Ereignisschleife
  //while (True) do begin
  //  XNextEvent(dis, @Event);
  //  case Event._type of
  //    KeyPress: begin
  //      // Beendet das Programm bei [ESC]
  //      if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
  //        Break;
  //      end;
  //    end;
  //  end;
  //end;
  //
  // Schliesst das Fenster
  XDestroyWindow(dis, win);

  // Schliesst Verbindung zum Server
  XCloseDisplay(dis);
end.
//code-
