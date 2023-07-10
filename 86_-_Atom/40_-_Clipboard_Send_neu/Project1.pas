//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
// https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html

// https://stackoverflow.com/questions/67813915/xlib-how-to-correctly-cancel-the-process-of-incremental-data-transfer

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

  procedure setsid; cdecl; external 'c';

  {$i buffer.inc}

const
  HANDLE_OK = 0;
  HANDLE_ERR = 1 shl 0;
  HANDLE_INCOMPLETE = 1 shl 1;
  DID_DELETE = 1 shl 2;


type
  TAtomPara = record
    XA_TARGETS,
    XA_INCR,
    XA_UTF8,
    XA_CLIPBOARD: TAtom
  end;

  THandleResult = cint;

  PMultiTrack = ^TMultiTrack;

  TMultiTrack = record
    mparent: PMultiTrack;
    dis: PDisplay;
    requestor: TWindow;
    _property, selection: TAtom;
    time: TTime;
    _length, index: culong;
    sel: PChar;
  end;

const
  S_NULL = 0;
  S_INCR_1 = 1;
  S_INCR_2 = 2;

  max_req = 4000;

  function min(a, b: cint): cint;
  begin
    if a < b then begin
      Result := a;
    end else begin
      Result := b;
    end;
  end;

type

  PIncrTrack = ^TIncrTrack;

  TIncrTrack = record
    mparent: PMultiTrack;
    prev, Next: PIncrTrack;
    state: integer;
    display: PDisplay;
    requestor: TWindow;
    _property, selection: TAtom;
    time: TTime;
    target: TAtom;
    format: cint;
    Data: PChar;
    nelements, offset, chunk, max_elements: cint;
  end;

var
  support_targets: array[0..1] of TAtom;

  incrtrack_list: PIncrTrack = nil;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    AP: TAtomPara;
    dis: PDisplay;
    win: TWindow;
    scr: cint;
    gc: TGC;
  private
    procedure ReadClipboard(ev: TXEvent);

    procedure add_incrtrack(it: PIncrTrack);
    function fresh_incrtrack: PIncrTrack;

    procedure handle_selection_request(Aevent: TXEvent; sel: PChar);
    function handle_targets(display: PDisplay; requestor: TWindow; _property: TAtom; selction: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
    function handle_string(display: PDisplay; requestor: TWindow; _property: TAtom; sel: PChar; selection: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
    function change_property(display: PDisplay; requestor: TWindow; _property, target: TAtom; format, mode: cint; Data: PChar; nelements: cint; selction: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;


const
  Mask = KeyPressMask or ExposureMask or PropertyChangeMask;

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

  function new_Error_Handle(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    WriteLn('Error !!!!!!!!!!!!!!!');
  end;

  procedure TMyWin.ReadClipboard(ev: TXEvent);
  var
    targetFormat: TAtom;
    resbits: cint;
    ressize, restail: culong;
    res: PChar;
  begin
    Writeln('Clipboard auslesen');
    if ev.xselection._property <> 0 then begin
      XGetWindowProperty(dis, win, AP.XA_CLIPBOARD, 0, MaxSIntValue, False, AnyPropertyType, @targetFormat, @resbits, @ressize, @restail, @res);
      if targetFormat = AP.XA_UTF8 then begin
        WriteLn('UTF-8 io');
      end else begin
        WriteLn('error:', XGetAtomName(dis, targetFormat));
      end;
      WriteLn('------ Inhalt vom Clipboard ----------');
      WriteLn(res);
      WriteLn('--------------------------------------');
      WriteLn('Buffer-Size: ', ressize);
      with ev.xselection do begin
        XDeleteProperty(display, requestor, _property);
      end;
      XFree(res);
    end;
  end;

  procedure TMyWin.add_incrtrack(it: PIncrTrack);
  begin
    if incrtrack_list <> nil then begin
      incrtrack_list^.prev := it;
    end;
    it^.prev := nil;
    it^.Next := incrtrack_list;
    incrtrack_list := it;
  end;

  function TMyWin.fresh_incrtrack: PIncrTrack;
  var
    it: PIncrTrack;
  begin
    Getmem(it, SizeOf(TIncrTrack));
    add_incrtrack(it);

    Result := it;
  end;

  procedure TMyWin.handle_selection_request(Aevent: TXEvent; sel: PChar);
  var
    xsr: PXSelectionRequestEvent;
    ev: TXSelectionEvent;
    hr: THandleResult = HANDLE_OK;
  begin
    xsr := @AEvent.xselectionrequest;
    ev._type := SelectionNotify;
    ev.display := xsr^.display;
    ev.requestor := xsr^.requestor;
    ev.selection := xsr^.selection;
    ev.time := xsr^.time;
    ev.target := xsr^.target;

    if ev.target = AP.XA_TARGETS then begin
      WriteLn('--- Schreibe Targets ---');
      ev._property := xsr^._property;
      hr := handle_targets(ev.display, ev.requestor, ev._property, ev.selection, ev.time, nil);
    end else if (ev.target = AP.XA_UTF8) or (ev.target = XA_STRING) then  begin
      WriteLn('--- Schreibe String ---');
      ev._property := xsr^._property;
      hr := handle_string(ev.display, ev.requestor, ev._property, sel, ev.selection, ev.time, nil);
    end else begin
      ev._property := None;
    end;

    if (hr and HANDLE_INCOMPLETE) = 0 then begin
      XSendEvent(dis, ev.requestor, False, 0, @ev);
      XSync(dis, False);
    end;
  end;

  function TMyWin.change_property(display: PDisplay; requestor: TWindow; _property, target: TAtom; format, mode: cint; Data: PChar; nelements: cint; selction: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
  var
    ev: TXSelectionEvent;
    nr_bytes: clong;
    it: PIncrTrack;
  begin
    nr_bytes := nelements * format div 8;
    if nr_bytes <= max_req then begin
      XChangeProperty(display, requestor, _property, target, format, mode, pbyte(Data), nelements);
      Result := HANDLE_OK;
      Exit;
    end;

    ev._type := SelectionNotify;
    ev.display := display;
    ev.requestor := requestor;
    ev.selection := selction;
    ev.time := time;
    ev.target := target;
    ev._property := _property;

    WriteLn('Schreibe Stringlänge: ', nr_bytes);
    XChangeProperty(ev.display, ev.requestor, ev._property, AP.XA_INCR, 32, PropModePrepend, PByte(@nr_bytes), 1);

    XSendEvent(display, requestor, False, 0, @ev);

    it := fresh_incrtrack;

    it^.mparent := mparent;
    it^.state := S_INCR_1;
    it^.display := display;
    it^.requestor := requestor;
    it^._property := _property;
    it^.selection := selction;
    it^.time := time;
    it^.target := target;
    it^.format := format;
    it^.Data := Data;
    it^.nelements := nelements;
    it^.offset := 0;
    it^.max_elements := max_req * 8 div format;
    it^.chunk := min(it^.max_elements, it^.nelements - it^.offset);

    Result := HANDLE_INCOMPLETE;
  end;

  function TMyWin.handle_targets(display: PDisplay; requestor: TWindow; _property: TAtom; selction: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
  var
    targets_cpy: PAtom;
    i: integer;
    r: THandleResult;
  begin
    Getmem(targets_cpy, SizeOf(support_targets));
    for i := 0 to Length(support_targets) - 1 do begin
      targets_cpy[i] := support_targets[i];
    end;
    r := change_property(display, requestor, _property, XA_ATOM, 32, PropModeReplace, PChar(targets_cpy), Length(support_targets), selction, time, mparent);
    Freemem(targets_cpy);
    Result := r;
  end;

  function TMyWin.handle_string(display: PDisplay; requestor: TWindow; _property: TAtom; sel: PChar; selection: TAtom; time: TTime; mparent: PMultiTrack): THandleResult;
  begin
    Result := change_property(display, requestor, _property, XA_STRING, 8, PropModeReplace, sel, StrLen(sel), selection, time, mparent);
  end;

  constructor TMyWin.Create;
  begin
    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    XSetErrorHandler(@new_Error_Handle);

    AP.XA_INCR := XInternAtom(dis, 'INCR', False);
    AP.XA_TARGETS := XInternAtom(dis, 'TARGETS', False);

    AP.XA_CLIPBOARD := XInternAtom(dis, 'CLIPBOARD', False);

    AP.XA_UTF8 := XInternAtom(dis, 'UTF8_STRING', False);

    //    AP.XSEL_DATA := XInternAtom(dis, 'XSEL_DATA', False);

    support_targets[0] := XA_STRING;
    support_targets[1] := AP.XA_UTF8;

    WriteLn(AP.XA_INCR);
    WriteLn(AP.XA_TARGETS);

    WriteLn(AP.XA_CLIPBOARD);
    WriteLn(AP.XA_UTF8);

    scr := DefaultScreen(dis);
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XStoreName(dis, win, 'Mein Fenster');
    gc := XCreateGC(dis, win, 0, nil);
    XSelectInput(dis, win, Mask);
    XMapWindow(dis, win);

    setsid;
  end;

  destructor TMyWin.Destroy;
  begin
    XDestroyWindow(dis, win);
    XCloseDisplay(dis);

    inherited Destroy;
  end;

  procedure TMyWin.Run;
  const
    //    L = 1000 * 1000;
    L = 1000;
    sel: PChar = 'Hello World'#10'Hallo Welt !';
  var
    Event: TXEvent;
    i: integer;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      WriteLn(Event._type);
      case Event._type of
        Expose: begin
          WriteLn('Expose');
          XDrawRectangle(dis, win, gc, 20, 20, Event.xexpose.Width - 40, Event.xexpose.Height - 40);
        end;
        KeyPress: begin
          WriteLn('KeyPress');
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_v: begin
              WriteLn('Auslesen UTGF8 einleiten');
              with AP do begin
                XConvertSelection(dis, XA_CLIPBOARD, XA_UTF8, XA_CLIPBOARD, win, CurrentTime);
              end;
            end;
            XK_t: begin
              WriteLn('Generiere Test String');
              SetLength(ClipboardString, L);
              for i := 1 to L do begin
                if i mod 80 = 0 then begin
                  ClipboardString[i] := #10;
                end else if i mod 8 = 0 then begin
                  ClipboardString[i] := ' ';
                end else begin
                  ClipboardString[i] := char(Random(26) + 65);
                end;
              end;
              ClipboardString[Length(ClipboardString)] := #10;
              ClipboardString[Length(ClipboardString) - 1] := #10;
              XSetSelectionOwner(dis, AP.XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, AP.XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
            XK_c: begin
              Writeln('Daten ready für Clipboard "MyBuffer"');
              ClipboardString:=MyBuffer;

              XSetSelectionOwner(dis, AP.XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, AP.XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
            XK_h: begin
              Writeln('Daten ready für Clipboard "Hello World"');
              // Ein Pseudoinhalt fürs Clipboard
              WriteStr(ClipboardString, 'Hello World !'#10'Hallo Welt !'#10, DateTimeToStr(Now));

              XSetSelectionOwner(dis, AP.XA_CLIPBOARD, win, CurrentTime);
              if XGetSelectionOwner(dis, AP.XA_CLIPBOARD) <> win then begin
                WriteLn('Fehler: Falsches Window');
              end;
            end;
          end;
        end;
        // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
        SelectionClear: begin
          WriteLn('SelectionClear');
          WriteLn('Eine andere App hat Clipboard Daten');
          ClipboardString := '';
        end;
        // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
        SelectionRequest: begin
          WriteLn('SelectionRequest');
          WriteLn('anfang------------------------------');
          if Event.xselectionrequest.selection = AP.XA_CLIPBOARD then begin
            handle_selection_request(Event,PChar( ClipboardString));
          end;
          WriteLn('ende------------------------------');
        end;
        PropertyNotify: begin
          WriteLn('PropertyNotify');
          if Event.xproperty.state = PropertyDelete then begin
            WriteLn('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--------------------------PropertyDelete');
            //            it:=find_i
          end;

          //          WriteClipboard;
          //          WriteClipboardLarge;
        end;
        // Daten vom Clipboard stehen bereit zur Abholung
        SelectionNotify: begin
          WriteLn('SelectionNotify');
          ReadClipboard(Event);
        end;
      end;
    end;
  end;

var
  MyWindows: TMyWin;

begin
  Randomize;
  MyWindows := TMyWin.Create;
  MyWindows.Run;
  MyWindows.Free;
end.
