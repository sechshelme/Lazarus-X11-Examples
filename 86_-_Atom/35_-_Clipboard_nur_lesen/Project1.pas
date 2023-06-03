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

type
  TAtomPara = record
    XA_CLIPBOARD, XA_UTF8_STRING, XA_XSEL_DATA, XA_INCR: TAtom;
  end;

var
  AtomPara: TAtomPara;


  function PrintClipboard(dis: PDisplay; win: TWindow): boolean;
  var
    event: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    result1: PChar;
  begin
    with AtomPara do begin
      XConvertSelection(dis, XA_CLIPBOARD, XA_UTF8_STRING, XA_XSEL_DATA, win, CurrentTime);
      repeat
        XNextEvent(dis, @event);
      until not ((event._type <> SelectionNotify) or (event.xselection.selection <> XA_CLIPBOARD));

      WriteLn('prop: ',event.xselection._property);
      if event.xselection._property <> 0 then begin

        XGetWindowProperty(dis, win, XA_XSEL_DATA, 0, MaxLongint div 4, False, AnyPropertyType, @XA_UTF8_STRING, @resbits, @ressize, @restail, @result1);

        WriteLn('ressize: ', ressize);
        if XA_UTF8_STRING = XA_INCR then begin
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
  end;

var
  dis: PDisplay;
  win: TWindow;
  scr: cint;
  Event: TXEvent;

begin
  // Erstellt die Verbindung zum Server
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;

  with AtomPara do begin
    XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', True);
    XA_UTF8_STRING := XInternAtom(dis, 'UTF8_STRING', True);
    WriteLn(XA_UTF8_STRING);
    if XA_UTF8_STRING = 0 then begin
      XA_UTF8_STRING := XInternAtom(dis, 'STRING', True);
    end;
    XA_XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);
    XA_INCR := XInternAtom(dis, 'INCR', True);

    WriteLn(XA_CLIPBOARD);
    WriteLn(XA_UTF8_STRING);
    WriteLn(XA_XSEL_DATA);
    WriteLn(XA_INCR);
  end;


  // Erstellt das Fenster
  scr := DefaultScreen(dis);
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
          XK_v:  PrintClipboard(dis, win);
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
