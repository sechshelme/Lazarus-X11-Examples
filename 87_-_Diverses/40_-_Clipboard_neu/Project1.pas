//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux

program Project1;

uses
  sysutils,
  heaptrc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

type
  TAtomPara = record
    ClipboardID, FormatID, Xsel_dataID,
    targets_atomID, text_atomID: TAtom;
  end;

var
  AtomPara: TAtomPara;
  dis: PDisplay;
  win: TWindow;

  procedure CopyClipboard(s: string);
  const
    XA_ATOM = 4;
    XA_STRING = 31;
  var
    event: TXEvent;
    xsr: PXSelectionRequestEvent;
    ev: TXSelectionEvent;
    R: cint;
    i: integer = 0;
  begin
    XSetSelectionOwner(dis, AtomPara.ClipboardID, win, CurrentTime);
    if XGetSelectionOwner(dis, AtomPara.ClipboardID) <> win then begin
      WriteLn('Fehler');
      Exit;
    end;

    while True do begin
      XNextEvent(dis, @event);
      case event._type of
        SelectionRequest: begin
          if event.xselectionrequest.selection = AtomPara.ClipboardID then begin
            xsr := @event.xselectionrequest;
            ev._type := SelectionNotify;
            ev.display := xsr^.display;
            ev.requestor := xsr^.requestor;
            ev.selection := xsr^.selection;
            ev.time := xsr^.time;
            ev.target := xsr^.target;
            ev._property := xsr^._property;
            ev.serial := 0;
            ev.send_event := 0;
            if ev.target = AtomPara.targets_atomID then begin
              R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, @AtomPara.FormatID, 1);
              WriteLn('-1-');
            end else if (ev.target = XA_STRING) or (ev.target = AtomPara.text_atomID) then begin
              R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, pbyte(s), Length(s));
              WriteLn('-2-');
            end else if ev.target = AtomPara.FormatID then  begin
              R := XChangeProperty(ev.display, ev.requestor, ev._property, AtomPara.FormatID, 8, PropModeReplace, pbyte(PChar(s)), Length(s));
              WriteLn('-3-');
//              Exit;
            end else begin
              ev._property := None;
              WriteLn('-4-');
            end;
            if (R and 2) = 0 then begin
              XSendEvent(dis, ev.requestor, 0, 0, @ev);
              WriteLn('R');
//              Exit;
            end;
          end;
        end;
        SelectionClear: begin
          WriteLn('exit');
          Exit;
        end;

      end;
      Inc(i);
      if i>=13 then Exit;
      WriteLn(i);

    end;
  end;


  function PasteClipboard: string;
  var
    ev: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    targetFormat: TAtom;
    res: PChar;
    //    result1: PChar;
  begin
    Result := '';
    with AtomPara do begin
      XConvertSelection(dis, ClipboardID, FormatID, Xsel_dataID, win, CurrentTime);
      XNextEvent(dis, @ev);

      if ev._type = SelectionNotify then begin
        WriteLn('bcbcb', ev.xselection._property);
        if ev.xselection._property <> 0 then begin

          XGetWindowProperty(dis, win, Xsel_dataID, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
          if FormatID = targetFormat then begin
            WriteLn('io');
            Result := res;
          end else begin
            WriteLn('error');
            Result := '';
          end;

          WriteLn('Buffer-Size: ', ressize);
          with ev.xselection do begin
            XDeleteProperty(display, requestor, _property);
          end;
        end;
      end else begin
        WriteLn('Falsches Event');
      end;
    end;
  end;

  procedure Main;
  var
    scr: cint;
    Event: TXEvent;
    s: string;

  begin
    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    with AtomPara do begin
      targets_atomID := XInternAtom(dis, 'TARGETS', False);
      text_atomID := XInternAtom(dis, 'TEXT', False);


      ClipboardID := XInternAtom(dis, 'CLIPBOARD', False);
      FormatID := XInternAtom(dis, 'UTF8_STRING', True);
      WriteLn(FormatID);
      if FormatID = 0 then begin
        //        FormatID:=XA_STRING;
        FormatID := XInternAtom(dis, 'STRING', True);
      end;

//      FormatID:=31;

      Xsel_dataID := XInternAtom(dis, 'XSEL_DATA', False);

      WriteLn('string ',XInternAtom(dis, 'STRING', True));

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
            XK_c: begin

//              WriteStr(s,'{Hello World !'#10'Hallo Welt !}   ',Now:10:4);
              WriteStr(s,'{Hello World !'#10'Hallo Welt !}   ',Now:10:4);
              WriteLn(s);
              CopyClipboard(s);
            end;
          end;
        end;
      end;
    end;

    XDestroyWindow(dis, win);

    XCloseDisplay(dis);
  end;

begin
  Main;
end.
