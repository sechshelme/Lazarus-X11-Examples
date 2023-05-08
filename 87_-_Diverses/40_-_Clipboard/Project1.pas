//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux

program Project1;

uses
  SysUtils,
  heaptrc,
  BaseUnix,
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

const
  Mask = KeyPressMask or ExposureMask;

var
  AtomPara: TAtomPara;
  dis: PDisplay;
  win: TWindow;

procedure wait;
var
  rem, Req: timespec;
begin
  Req.tv_nsec := 10000000;
  Req.tv_sec := 3;
  fpNanoSleep(@Req, @rem);
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
  const
    XA_ATOM = 4;
    XA_STRING = 31;
  var
    scr: cint;
    Event: TXEvent;
    ClipboardString: string;
    gc: TGC;

    // Paste
    ressize, restail: culong;
    resbits: cint;
    targetFormat: TAtom;
    res: PChar;

    // Copy
    xsr: PXSelectionRequestEvent;
    ev: TXSelectionEvent;
    R: cint;


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

      WriteLn('string ', XInternAtom(dis, 'STRING', True));

      WriteLn(ClipboardID);
      WriteLn(FormatID);
      WriteLn(Xsel_dataID);

      WriteLn(MaxUIntValue);
      WriteLn(not PtrUInt(0));
      WriteLn(MaxInt * MaxInt);
    end;

    scr := DefaultScreen(dis);
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XStoreName(dis, win, 'Mein Fenster');
    gc := XCreateGC(dis, win, 0, nil);
    XSelectInput(dis, win, Mask);
    XMapWindow(dis, win);


    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      case Event._type of
        Expose: begin
          XDrawRectangle(dis, win, gc, 20, 20, Event.xexpose.Width - 40, Event.xexpose.Height - 40);
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_v: begin
              WriteLn('Auslesen einleiten');
              with AtomPara do begin
                XConvertSelection(dis, ClipboardID, FormatID, Xsel_dataID, win, CurrentTime);
              end;
            end;
            XK_c: begin
              Writeln('Daten ready für Clipboard');
              // Ein Pseudoinhalt fürs Clipboard
              WriteStr(ClipboardString, 'Hello World !'#10'Hallo Welt !'#10, DateTimeToStr(Now));

              XSetSelectionOwner(dis, AtomPara.ClipboardID, win, CurrentTime);
              if XGetSelectionOwner(dis, AtomPara.ClipboardID) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
          end;
        end;
        // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
        SelectionRequest: begin
//          wait;
          WriteLn('SelectionRequest');
          if event.xselectionrequest.selection = AtomPara.ClipboardID then begin
            WriteLn('Daten stehen im Clipboard bereit');
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
            end else if (ev.target = XA_STRING) or (ev.target = AtomPara.text_atomID) then begin
              R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));
            end else if ev.target = AtomPara.FormatID then  begin
              R := XChangeProperty(ev.display, ev.requestor, ev._property, AtomPara.FormatID, 8, PropModeReplace, pbyte(PChar(ClipboardString)), Length(ClipboardString));
            end else begin
              ev._property := None;
            end;
            if (R and 2) = 0 then begin
              XSendEvent(dis, ev.requestor, 0, 0, @ev);
            end;
          end;
        end;
        // Wird ausgelöst, sobald eine andere App Daten fürs Chloboard hat.
        SelectionClear: begin
          WriteLn('Eine andere App hat Chliboard Daten');
          ClipboardString:='';
        end;
        // Daten vom Clipboard stehen bereit zur Abholung
        SelectionNotify: begin
          WriteLn('SelectionNotify');
          Writeln('Clipboard auslesen');
          if Event.xselection._property <> 0 then begin
            with AtomPara do begin
              XGetWindowProperty(dis, win, Xsel_dataID, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
            if FormatID = targetFormat then begin
              WriteLn('io');
              //              Result := res;
            end else begin
              WriteLn('error');
              //              Result := '';
            end;
            end;
            WriteLn('Buffer-Size: ', ressize);
            WriteLn('------ Inhalt vom Clipboard ----------');
            WriteLn(res);
            WriteLn('--------------------------------------');
            with Event.xselection do begin
              XDeleteProperty(display, requestor, _property);
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

