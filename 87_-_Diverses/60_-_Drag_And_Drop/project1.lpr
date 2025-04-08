//image image.png
(*
Icon erzeuugen
*)
//lineal
//code+
program project1;

{$modeswitch arrayoperators on}

uses
  ctypes,
  SysUtils,
  unixtype,
  xatom,
  xlib,
  xutil,
  keysym,
  x;

const
  LONG_MAX = 9223372036854775807;

  // https://www.perplexity.ai/search/wie-mache-ich-drag-und-drop-mi-Bmf1o0QvTuKjlSG0LUiNFw


var
  dis: PDisplay;
  win: TWindow;
  gc: TGC;
  Event, notify_event, reply: TXEvent;
  scr, actualFormat, status: cint;
  XdndAware, XdndEnter, XdndPosition, XdndDrop, XdndFinished,
  XdndSelection, text_uri_list, selection_target, actualType,
  XdndActionCopy: TAtom;
  version: uint64;
  source_window: TWindow;
  selection_notify_received: integer;
  nitems, bytesAfter: culong;
  Data: Pcuchar;

  TextList: string = '';

  procedure Ausgabe;
  var
    i: integer;
    sa: TStringArray = nil;
  const
    Titel = 'Pfade:';
  begin
    XClearWindow(dis, win);
    XDrawString(dis, win, gc, 10, 16, Titel, Length(Titel));

    sa := TextList.Split(#10);

    for i := 0 to Length(sa) - 1 do begin
      XDrawString(dis, win, gc, 10, i * 16 + 16 + 20, PChar(sa[i]), Length(sa[i]));
    end;
  end;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 640, 480, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  gc := XCreateGC(dis, win, 0, nil);

  XSelectInput(dis, win, KeyPressMask or ExposureMask or StructureNotifyMask);
  XStoreName(dis, win, 'Drag&Drop');

  XdndAware := XInternAtom(dis, 'XdndAware', False);
  XdndEnter := XInternAtom(dis, 'XdndEnter', False);
  XdndPosition := XInternAtom(dis, 'XdndPosition', False);
  XdndDrop := XInternAtom(dis, 'XdndDrop', False);
  XdndFinished := XInternAtom(dis, 'XdndFinished', False);
  XdndSelection := XInternAtom(dis, 'XdndSelection', False); // Auswahl für Drag-and-Drop
  XdndActionCopy := XInternAtom(dis, 'XdndActionCopy', False);
  text_uri_list := XInternAtom(dis, 'text/uri-list', False);

  // Fenster als XDND-fähig markieren
  version := 5;
  XChangeProperty(dis, win, XdndAware, XA_ATOM, 32, PropModeReplace, @version, 1);

  XMapWindow(dis, win);
  WriteLn('Fenster bereit für Drag-and-Drop...');

  while (True) do begin
    XNextEvent(dis, @Event);
    WriteLn('Event: ', Event._type);
    case Event._type of
      KeyPress: begin
        // Beendet das Programm bei [ESC]
        case XLookupKeysym(@Event.xkey, 0) of
          XK_Escape: begin
            Break;
          end;
          XK_space: begin
          end;
        end;
      end;
      Expose: begin
        Ausgabe;
      end;
      ClientMessage: begin
        WriteLn('ClientMessage');
        if event.xclient.message_type = XdndEnter then begin
          WriteLn('Drag gestartet...');
        end else if event.xclient.message_type = XdndPosition then begin
          WriteLn('Drag Position aktualisiert...');

          reply.xclient._type := ClientMessage;
          reply.xclient.message_type := XInternAtom(dis, 'XdndStatus', False);
          reply.xclient.display := dis;
          reply.xclient.window := event.xclient.Data.l[0]; // Quellfenster
          reply.xclient.format := 32;
          reply.xclient.Data.l[0] := win;   // Ziel-Fenster
          reply.xclient.Data.l[1] := 1;     // Drop akzeptieren
          reply.xclient.Data.l[2] := 0;     // Keine Rechtecke
          reply.xclient.Data.l[3] := 0;
          reply.xclient.Data.l[4] := XdndActionCopy;

          XSendEvent(dis, event.xclient.Data.l[0], False, NoEventMask, @reply);
          XFlush(dis);

        end else if event.xclient.message_type = XdndDrop then begin
          WriteLn('Drop erkannt...');

          // Datenanforderung stellen
          source_window := event.xclient.Data.l[0]; // Quellfenster
          selection_target := text_uri_list;

          // Auswahl anfordern
          WriteLn('Datenanforderung an Quellfenster...');
          XConvertSelection(dis, XdndSelection, selection_target, selection_target, win, CurrentTime);

          // Warten auf SelectionNotify-Ereignis
          selection_notify_received := 0;
          //   SetLength(TextList, 0);
          while selection_notify_received = 0 do begin
            XNextEvent(dis, @notify_event);
            if (notify_event._type = SelectionNotify) and (notify_event.xselection.requestor = win) then begin
              selection_notify_received := 1;

              if notify_event.xselection._property <> 0 then begin

                // Eigenschaft abrufen
                WriteLn('Abrufen der Daten...');
                status := XGetWindowProperty(dis,
                  win, notify_event.xselection._property, 0, LONG_MAX,
                  False, AnyPropertyType, @actualType,
                  @actualFormat, @nitems, @bytesAfter, @Data);

                if (status = Success) and (Data <> nil) then begin
                  TextList := PChar(Data);
                  XFree(Data); // Speicher freigeben
                end else begin
                  WriteLn('Fehler beim Abrufen der Daten.');
                end;
              end else begin
                WriteLn('Keine Daten verfügbar.');
              end;
            end;
          end;
          Ausgabe;

          // Rückmeldung an das Quellfenster senden
          WriteLn('Rückmeldung an Quellfenster senden...');
          reply.xclient._type := ClientMessage;
          reply.xclient.message_type := XdndFinished;
          reply.xclient.display := dis;
          reply.xclient.window := source_window;
          reply.xclient.format := 32;
          reply.xclient.Data.l[0] := win; // Ziel-Fenster
          reply.xclient.Data.l[1] := 1;  // Erfolg melden
          reply.xclient.Data.l[2] := XdndActionCopy;  // Erfolg melden

          XSendEvent(dis, source_window, False, NoEventMask, @reply);
        end else begin
          WriteLn('ClientMessage: ', event.xclient.message_type);
        end;
      end;
    end;
  end;

  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
