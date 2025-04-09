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
  scr, actualFormat, status, actual_format: cint;
  XdndAware, XdndEnter, XdndPosition, XdndDrop, XdndFinished,
  XdndSelection, text_uri_list, selection_target, actualType,
  XdndActionCopy, XdndTypeList, actual_type: TAtom;
  version: uint64;
  source_window: TWindow;
  selection_notify_received, i: integer;
  nitems, bytesAfter, bytes_after: culong;
  Data: Pcuchar;

  TargetList: TStringArray = nil;
  TextList: string = '';
  targets: PAtom;


  procedure Ausgabe(const TargetList: TStringArray; const StringData: string);
  var
    i: integer;
    sa: TStringArray = nil;
    s: string;
    attr: TXWindowAttributes;
    w, h: cint;
    fontbold: PXFontStruct;
    bold_gc: TGC;
  const
    TitleData = 'String Data:';
    TitleTargets = 'Targets:';
    left = 260;
  begin
    XClearWindow(dis, win);
    XGetWindowAttributes(dis, win, @attr);
    w := attr.Width;
    h := attr.Height;

    // Titel
    bold_gc := XCreateGC(dis, win, 0, nil);
    fontbold := XLoadQueryFont(dis, '-*-helvetica-bold-r-normal--14-*-*-*-*-*-iso8859-1');
    if fontbold <> nil then  begin
      XSetFont(dis, bold_gc, fontbold^.fid);
    end;

    XDrawString(dis, win, bold_gc, 10, 16, TitleTargets, Length(TitleTargets));
    XDrawString(dis, win, bold_gc, left, 16, TitleData, Length(TitleData));
    XDrawLine(dis, win, gc, 0, 20, w, 20);
    XDrawLine(dis, win, gc, left - 4, 0, left - 4, h);
    XFreeGC(dis, bold_gc);

    // Daten
    for i := 0 to Length(TargetList) - 1 do begin
      XDrawString(dis, win, gc, 10, i * 16 + 16 + 20, PChar(TargetList[i]), Length(TargetList[i]));
    end;

    s := StringReplace(StringData, #13, '', [rfReplaceAll]);
    sa := s.Split([#10, #13]);
    for i := 0 to Length(sa) - 1 do begin
      XDrawString(dis, win, gc, left, i * 16 + 16 + 20, PChar(sa[i]), Length(sa[i]));
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
  XdndSelection := XInternAtom(dis, 'XdndSelection', False);
  XdndActionCopy := XInternAtom(dis, 'XdndActionCopy', False);
  XdndTypeList := XInternAtom(dis, 'XdndTypeList', False);

  //  text_uri_list := XInternAtom(dis, 'text/uri-list', False);
  text_uri_list := XInternAtom(dis, 'TEXT', False);

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
        Ausgabe(TargetList, TextList);
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

          // Target Liste auswerten
          XGetWindowProperty(dis, source_window, XdndTypeList, 0, LONG_MAX, False,
            XA_ATOM, @actual_type, @actual_format, @nitems, @bytes_after, @Data);

          if Data <> nil then begin
            targets := PAtom(Data);
            //              printf("Unterstützte Formate:\n");
            SetLength(TargetList, nitems);
            for  i := 0 to nitems - 1 do begin
              TargetList[i] := PChar(XGetAtomName(dis, targets[i]));
            end;
            XFree(Data);
          end;

          // Auswahl anfordern
          WriteLn('Datenanforderung an Quellfenster...');
          selection_target := text_uri_list;
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
          Ausgabe(TargetList, TextList);

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

  XFreeGC(dis, gc);
  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
//code-
