//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
// https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html

// https://github.com/dacap/clip/blob/main/clip_x11.cpp

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

function XmuClientWindow(ADisplay: PDisplay; AWindow: TWindow): TWindow; cdecl; external 'Xmu';

type
  TTargetAtoms = record
    XA_UTF8,
    XA_STRING,
    XA_TARGETS,
    XA_TEXT,
    XA_GTK_TEXT_BUFFER_CONTENTS: TAtom;
  end;

  TAtomPara = record
    Targets: TTargetAtoms;
    XA_CLIPBOARD, XSEL_DATA: TAtom;
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
      if targetFormat = AP.Targets.XA_UTF8 then begin
        WriteLn('UTF-8 io');
      end else begin
        WriteLn('error:', XGetAtomName(dis, targetFormat));
      end;
      WriteLn('------ Inhalt vom Clipboard ----------');
      WriteLn(res);
      WriteLn('--------------------------------------');
      WriteLn('Buffer-Size: ', ressize);
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

    procedure PrintName(const Titel: string; w: TWindow);
    var
      prop: TXTextProperty;
    begin
      XGetWMName(dis, w, @prop);
      WriteLn('--- Schreibe: ', Titel, ' ---  Nr: 0x', IntToHex(w, 8), ' Name: ', PChar(prop.Value));
    end;

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
      if ev.target = AP.Targets.XA_TARGETS then begin
        PrintName('--- Schreibe  TARGETS ---  ', ev.requestor);
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, @AP.Targets, SizeOf(TTargetAtoms) div SizeOf(TAtom));

      end else if ev.target = XA_STRING then begin
        PrintName('--- Schreibe  STRING ---  ', ev.requestor);
        ClipboardString := '-- STRING --' + ClipboardString;
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));

      end else if ev.target = AP.Targets.XA_TEXT then  begin
        PrintName('--- Schreibe  TEXT ---  ', ev.requestor);
        ClipboardString := '-- TEXT --' + ClipboardString;
        R := XChangeProperty(ev.display, ev.requestor, ev._property, AP.Targets.XA_TEXT, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));

      end else if ev.target = AP.Targets.XA_UTF8 then  begin
        PrintName('--- Schreibe  UTF8 ---  ', ev.requestor);
        ClipboardString := '-- UTF-8 --' + ClipboardString;
        R := XChangeProperty(ev.display, ev.requestor, ev._property, AP.Targets.XA_UTF8, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));

      end else if ev.target = AP.Targets.XA_GTK_TEXT_BUFFER_CONTENTS then  begin
        PrintName('--- Schreibe  GTK_TEXT_BUFFER_CONTENTS ---  ', ev.requestor);
        ClipboardString := '-- GTK_TEXT_BUFFER_CONTENTS --' + ClipboardString;
        R := XChangeProperty(ev.display, ev.requestor, ev._property, AP.Targets.XA_UTF8, 8, PropModeReplace, pbyte(ClipboardString), Length(ClipboardString));

      end else begin
        WriteLn('Unbekanntest Target: ',XGetAtomName(dis,ev.target));
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

    AP.Targets.XA_TARGETS := XInternAtom(dis, 'TARGETS', False);
    AP.Targets.XA_UTF8 := XInternAtom(dis, 'UTF8_STRING', False);
    AP.Targets.XA_TEXT := XInternAtom(dis, 'TEXT', False);
    AP.Targets.XA_GTK_TEXT_BUFFER_CONTENTS := XInternAtom(dis, 'GTK_TEXT_BUFFER_CONTENTS', False);
    AP.Targets.XA_STRING := XA_STRING;

    AP.XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);


    //    AP.XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);
    AP.XSEL_DATA := AP.XA_CLIPBOARD;

    WriteLn(AP.Targets.XA_TARGETS);
    WriteLn(AP.Targets.XA_TEXT);

    WriteLn(AP.XA_CLIPBOARD);
    WriteLn(AP.Targets.XA_UTF8);
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
  const
    //    L = 1000 *1000 ;
    L = 100;
  var
    i: integer;
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
              WriteLn('Auslesen UTGF8 einleiten');
              with AP do begin
                XConvertSelection(dis, XA_CLIPBOARD, Targets.XA_UTF8, XSEL_DATA, win, CurrentTime);
              end;
            end;
            XK_t: begin
              WriteLn('Generiere Test String');
              SetLength(ClipboardString, L);
              for i := 1 to L do begin
                ClipboardString[i] := char(Random(26) + 65);
              end;

              XSetSelectionOwner(dis, AP.XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, AP.XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
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
