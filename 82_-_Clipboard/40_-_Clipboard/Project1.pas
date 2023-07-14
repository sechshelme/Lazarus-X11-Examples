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

const
  TargetsString: array of PChar = ('TARGETS', 'UTF8_STRING', 'STRING', 'TEXT', 'text/plain');
var
  TargetList: array of TAtom = nil;

type

  TMyWin = class(TObject)
  private
    XA_CLIPBOARD: TAtom;
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
  clGreen = 32;
  clCyan = 36;
  clBrightRed = 91;

procedure SetFGColor(c: byte);
begin
  Write(#27'[', Ord(c), 'm');
end;

procedure SetFGNormalColor;
begin
  Write(#27'[0m');
end;

var
  ClipboardString: string;

  function MyErrorProc(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    SetFGColor(clBrightRed);
    WriteLn('Error Handle');
    Result := 0;
    SetFGNormalColor;
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
      XGetWindowProperty(dis, win, XA_CLIPBOARD, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
      WriteLn('------ Inhalt vom Clipboard ----------');
      SetFGColor(clCyan);
      WriteLn(res);
      SetFGNormalColor;
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
    cs: string;
    ev: TXSelectionEvent;
    xsr: PXSelectionRequestEvent;
    R, i: cint;
    io: boolean = False;

    procedure PrintName(const Titel: string; w: TWindow);
    var
      prop: TXTextProperty;
    begin
      XGetWMName(dis, w, @prop);
      WriteLn('--- Schreibe: ', Titel, ' ---  Nr: 0x', IntToHex(w, 8), ' Name: ', PChar(prop.Value));
    end;

  begin
    if Event.xselectionrequest.selection = XA_CLIPBOARD then begin
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
      if ev.target = TargetList[0] then begin
        PrintName('--- Schreibe  TARGETS ---  ', ev.requestor);
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, pbyte(TargetList), Length(TargetList));
      end else begin
        i := 1;
        while (i < Length(TargetList)) and not io do begin
          if ev.target = TargetList[i] then begin
            PrintName('--- Schreibe  ' + XGetAtomName(dis, ev.target) + ' ---  ', ev.requestor);
            cs := '-- ' + XGetAtomName(dis, ev.target) + ' --'#10 + ClipboardString;
            R := XChangeProperty(ev.display, ev.requestor, ev._property, ev.target, 8, PropModeReplace, pbyte(cs), Length(cs));
            io := True;
          end;
          Inc(i);
        end;
        if not io then begin
          R := XChangeProperty(ev.display, ev.requestor, ev._property, 0, 8, PropModeReplace, nil, 0);
          R := 0;
          WriteLn('Unbekanntest Target: ', XGetAtomName(dis, ev.target));
          ev._property := None;
        end;
      end;

      if (R and 2) = 0 then begin
        XSendEvent(dis, ev.requestor, False, 0, @ev);
      end;
    end;
  end;

  constructor TMyWin.Create;
  var
    i: integer;
  begin
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    XSetErrorHandler(@MyErrorProc);

    XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);

    SetLength(TargetList, Length(TargetsString));
    for i := 0 to Length(TargetList) - 1 do begin
      TargetList[i] := XInternAtom(dis, TargetsString[i], False);
    end;

    scr := DefaultScreen(dis);
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XStoreName(dis, win, 'Clipboard');
    gc := XCreateGC(dis, win, 0, nil);
    XSelectInput(dis, win, KeyPressMask or ExposureMask);
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
              WriteLn('Auslesen UTGF8 einleiten');
                XConvertSelection(dis, XA_CLIPBOARD, XA_STRING, XA_CLIPBOARD, win, CurrentTime);
            end;
            XK_c: begin
              Writeln('Daten ready für Clipboard');
              // Ein Pseudoinhalt fürs Clipboard
              WriteStr(ClipboardString, 'Hello World !'#10'Hallo Welt !'#10, DateTimeToStr(Now), #10#10);

              XSetSelectionOwner(dis, XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
          end;
        end;
        // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
        SelectionRequest: begin
          SetFGColor(clGreen);
          WriteLn('SelectionRequest');
          SetFGNormalColor;
          WriteClipboard;
        end;
        // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
        SelectionClear: begin
          SetFGColor(clGreen);
          WriteLn('SelectionClear');
          SetFGNormalColor;
          WriteLn('Eine andere App hat Clipboard Daten');
          ClipboardString := '';
        end;
        // Daten vom Clipboard stehen bereit zur Abholung
        SelectionNotify: begin
          SetFGColor(clGreen);
          WriteLn('SelectionNotify');
          SetFGNormalColor;
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
