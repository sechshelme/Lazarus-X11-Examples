//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
// https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html

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
  xatom,
  x;

type
  TAtomPara = record
    XA_CLIPBOARD, Format, XSEL_DATA,
    XA_TARGETS, XA_TEXT: TAtom;
  end;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    AP: TAtomPara;
    dis: PDisplay;
    win: TWindow;
    scr: cint;
    gc: TGC;
    Event: TXEvent;
  private
    procedure ReadClipboard;
    procedure WriteClipboard;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;


const
  Mask = KeyPressMask or ExposureMask;

var
  ClipboardString: string;

  procedure wait;
  var
    rem, Req: timespec;
  begin
    Req.tv_nsec := 10000000;
    Req.tv_sec := 3;
    fpNanoSleep(@Req, @rem);
  end;

  procedure TMyWin.ReadClipboard;
  var
    targetFormat: TAtom;
    resbits: cint;
    ressize, restail: culong;
    res: PChar;
  begin
    Writeln('Clipboard auslesen');
    if Event.xselection._property <> 0 then begin
      XGetWindowProperty(dis, win, AP.XSEL_DATA, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
      if AP.Format = targetFormat then begin
        WriteLn('io');
      end else begin
        WriteLn('error');
      end;
      WriteLn('Buffer-Size: ', ressize);
      WriteLn('------ Inhalt vom Clipboard ----------');
      WriteLn(res);
      WriteLn('--------------------------------------');
      with Event.xselection do begin
        XDeleteProperty(display, requestor, _property);
      end;
      XFree(res);
    end;
  end;

  procedure TMyWin.WriteClipboard;
  var
    ev: TXSelectionEvent;
    xsr: PXSelectionRequestEvent;
    R: cint;
  begin
    //          wait;
    WriteLn('SelectionRequest');
    if Event.xselectionrequest.selection = AP.XA_CLIPBOARD then begin
      WriteLn('Daten stehen im Clipboard bereit');
      xsr := @Event.xselectionrequest;
      ev._type := SelectionNotify;
      ev.display := xsr^.display;
      ev.requestor := xsr^.requestor;
      ev.selection := xsr^.selection;
      ev.time := xsr^.time;
      ev.target := xsr^.target;
      ev._property := xsr^._property;
      ev.serial := 0;
      ev.send_event := 0;
      if ev.target = AP.XA_TARGETS then begin
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, @AP.Format, 1);
      end else if (ev.target = XA_STRING) or (ev.target = AP.XA_TEXT) then begin
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));
      end else if ev.target = AP.Format then  begin
        R := XChangeProperty(ev.display, ev.requestor, ev._property, AP.Format, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));
      end else begin
        ev._property := None;
      end;
      if (R and 2) = 0 then begin
        XSendEvent(dis, ev.requestor, False, 0, @ev);
      end;
    end;
  end;

  constructor TMyWin.Create;
  begin
    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    AP.XA_TARGETS := XInternAtom(dis, 'TARGETS', False);
    AP.XA_TEXT := XInternAtom(dis, 'TEXT', False);

    AP.XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);
    AP.Format := XInternAtom(dis, 'UTF8_STRING', True);
    if AP.Format = 0 then begin
      AP.Format := XA_STRING;
    end;

    AP.XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);

    WriteLn(AP.XA_TARGETS);
    WriteLn(AP.XA_TEXT);

    WriteLn(AP.XA_CLIPBOARD);
    WriteLn(AP.Format);
    WriteLn(AP.XSEL_DATA);

    scr := DefaultScreen(dis);
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XStoreName(dis, win, 'Mein Fenster');
    gc := XCreateGC(dis, win, 0, nil);
    XSelectInput(dis, win, Mask);
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    XDestroyWindow(dis, win);
    XCloseDisplay(dis);

    inherited Destroy;
  end;

  procedure TMyWin.Run;
  begin
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
              with AP do begin
                XConvertSelection(dis, XA_CLIPBOARD, Format, XSEL_DATA, win, CurrentTime);
              end;
            end;
            XK_c: begin
              Writeln('Daten ready für Clipboard');
              // Ein Pseudoinhalt fürs Clipboard
              WriteStr(ClipboardString, 'Hello World !'#10'Hallo Welt !'#10, DateTimeToStr(Now));

              XSetSelectionOwner(dis, AP.XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, AP.XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
          end;
        end;
        // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
        SelectionRequest: begin
          WriteClipboard;
        end;
        // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
        SelectionClear: begin
          WriteLn('Eine andere App hat Clipboard Daten');
          ClipboardString := '';
        end;
        // Daten vom Clipboard stehen bereit zur Abholung
        SelectionNotify: begin
          WriteLn('SelectionNotify');
          ReadClipboard;
        end;
      end;
    end;
  end;

var
  MyWindows: TMyWin;

begin
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
