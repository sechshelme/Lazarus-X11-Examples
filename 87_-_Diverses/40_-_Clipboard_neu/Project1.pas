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
  heaptrc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

type
  TAtomPara = record
    ClipboardID, FormatID, Xsel_dataID: TAtom;
  end;

var
  AtomPara: TAtomPara;
  dis: PDisplay;
  win: TWindow;
  s: string;

  function PasteClipboard: String;
  var
    event: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    targetFormat: TAtom;
    res: PChar;
    //    result1: PChar;
  begin
    with AtomPara do begin
      XConvertSelection(dis, ClipboardID, FormatID, Xsel_dataID, win, CurrentTime);
      XNextEvent(dis, @event);

      if event._type = SelectionNotify then begin
        WriteLn(event.xselection._property);
        if event.xselection._property <> 0 then begin

          XGetWindowProperty(dis, win, Xsel_dataID, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
          if FormatID = targetFormat then begin
            WriteLn('io');
            Result := res;
          end else begin
            WriteLn('error');
            Result:='';
          end;

          WriteLn('Buffer-Size: ', ressize);
          with event.xselection do begin
            XDeleteProperty(display, requestor, _property);
          end;
        end;
      end else begin
        WriteLn('Falsches Event');
      end;
    end;
  end;

var
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
    ClipboardID := XInternAtom(dis, 'CLIPBOARD', True);
    FormatID := XInternAtom(dis, 'UTF8_STRING', True);
    WriteLn(FormatID);
    if FormatID = 0 then begin
      FormatID := XInternAtom(dis, 'STRING', True);
    end;
    Xsel_dataID := XInternAtom(dis, 'XSEL_DATA', True);

    WriteLn(ClipboardID);
    WriteLn(FormatID);
    WriteLn(Xsel_dataID);

    WriteLn(MaxUIntValue);
    WriteLn(not PtrUInt(0));
    WriteLn(MaxInt * MaxInt);
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
          XK_v: begin
            s := PasteClipboard;
            WriteLn(s);
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
