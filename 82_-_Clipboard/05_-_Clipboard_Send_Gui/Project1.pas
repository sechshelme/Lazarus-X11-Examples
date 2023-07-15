program Project1;

uses
  SysUtils,
  Math,
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

  procedure setsid; cdecl; external 'c';
  function fork: cint; cdecl; external 'c';

  function CreatBuffer: string;
  const
    LineSize = 90;
    size: SizeInt = 1000 * 1000 * 10 - 10;
    //            size: SizeInt = 1000-10;
  var
    i, j: integer;
    s: string[9];
  begin
    SetLength(Result, size);
    for i := 1 to size do begin
      if i mod LineSize = 0 then begin
        Result[i] := #10;
        s := IntToStr(i div LineSize);
        for j := Length(s) + 1 to 9 do begin
          s[j] := '-';
        end;
        for j := 1 to 9 do begin
          Result[i - LineSize + j] := s[j];
        end;
      end else if i mod 9 = 0 then begin
        Result[i] := '-';
      end else begin
        Result[i] := char(Random(10) + 48);
      end;
    end;
  end;

const
  MyBuffer2 = 'Hello World'#10'Hallo Welt'#10;

const
  HANDLE_OK = 0;
  HANDLE_INCOMPLETE = 1 shl 1;

type
  THandleResult = cint;

type
  TINCR_State = (
    S_NULL = 0,
    S_INCR_1 = 1,
    S_INCR_2 = 2);
const
  //  max_req = 4000;
  max_req = 1000 * 1000;

type
  TIncrTrack = record
    incr_counter: cint;

    state: TINCR_State;
    display: PDisplay;
    requestor: TWindow;
    _property, selection: TAtom;
    target: TAtom;
    format: cint;
    Data: PChar;
    nelements, offset, chunk, max_elements: cint;
  end;

var
  XA_TARGETS, XA_INCR, XA_UTF8_STRING, XA_TextPlain, XA_CLIPBOARD: TAtom;
  supported_targets: array of TAtom = nil;
  it: TIncrTrack;

var
  display: PDisplay;

  function change_property(display: PDisplay; requestor: TWindow; _property, target: TAtom; format, mode: cint; Data: PChar; nelements: cint; selection: TAtom): THandleResult;
  var
    ev: TXSelectionEvent;
    nr_bytes: clong;
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
    ev.selection := selection;
    ev.time := CurrentTime;
    ev.target := target;
    ev._property := _property;

    WriteLn('Schreibe Stringlänge: ', nr_bytes);

    XSelectInput(ev.display, ev.requestor, PropertyChangeMask);
    XChangeProperty(ev.display, ev.requestor, ev._property, XA_INCR, 32, PropModeReplace, pbyte(@nr_bytes), 1);

    XSendEvent(display, requestor, False, 0, @ev);

    it.incr_counter := 0;

    it.state := S_INCR_1;
    it.display := display;
    it.requestor := requestor;
    it._property := _property;
    it.selection := selection;
    it.target := target;
    it.format := format;
    it.Data := Data;
    it.nelements := nelements;
    it.offset := 0;
    it.max_elements := max_req * 8 div format;
    it.chunk := min(it.max_elements, it.nelements - it.offset);

    Result := HANDLE_INCOMPLETE;
  end;

  function continue_incr: THandleResult;
  begin
    Inc(it.incr_counter);
    WriteLn('INCR-Count: ', it.incr_counter, '  State: ', it.state);
    Result := HANDLE_OK;
    if it.state = S_INCR_1 then begin
      XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeReplace, pbyte(it.Data), it.chunk);
      it.offset += it.chunk;
      it.state := S_INCR_2;
      Result := HANDLE_INCOMPLETE;
    end else if it.state = S_INCR_2 then begin
      it.chunk := min(it.max_elements, it.nelements - it.offset);
      if it.chunk <= 0 then begin
        XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeAppend, nil, 0);
        it.state := S_NULL;
        Result := HANDLE_OK;
      end else begin
        XChangeProperty(it.display, it.requestor, it._property, it.target, it.format, PropModeAppend, pbyte(it.Data + it.offset), it.chunk);
        it.offset += it.chunk;
        Result := HANDLE_INCOMPLETE;
      end;
    end;
  end;

  procedure handle_selection_request(const event: TXEvent);
  var
    ev: TXSelectionEvent;
    hr: THandleResult = HANDLE_OK;
  begin
    ev._type := SelectionNotify;
    ev.display := event.xselectionrequest.display;
    ev.requestor := event.xselectionrequest.requestor;
    ev.selection := event.xselectionrequest.selection;
    ev.time := event.xselectionrequest.time;
    ev.target := event.xselectionrequest.target;
    ev._property := event.xselectionrequest._property;

    WriteLn('Atom: ', XGetAtomName(ev.display, ev.target));

    if ev.target = XA_TARGETS then begin
      hr := HANDLE_OK;
      XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, pbyte(supported_targets), Length(supported_targets));
    end else if (ev.target = XA_UTF8_STRING) or (ev.target = XA_STRING) or (ev.target = XA_TextPlain) then  begin
      hr := change_property(ev.display, ev.requestor, ev._property, XA_STRING, 8, PropModeReplace, it.Data, StrLen(it.Data), ev.selection);
    end else begin
      ev._property := None;
    end;

    if (hr and HANDLE_INCOMPLETE) = 0 then begin
      XSendEvent(display, ev.requestor, False, 0, @ev);
      XSync(display, False);
    end;
  end;

  procedure main;
  var
    root: TWindow;
    win,
    CopyWin: TWindow;
    event: TXEvent;
    scr: cint;
  begin
    display := XOpenDisplay(nil);
    root := XDefaultRootWindow(display);

    scr := DefaultScreen(display);

    win := XCreateSimpleWindow(display, root, 10, 10, 320, 240, 0, 0, $FFFFFF);
    XSelectInput(display, win, ExposureMask or KeyPressMask);
    XMapWindow(display, win);

    CopyWin := XCreateSimpleWindow(display, root, 10, 10, 320, 240, 0, 0, $FFFFFF);
    XSelectInput(display, CopyWin, PropertyChangeMask);

    XA_TARGETS := XInternAtom(display, 'TARGETS', False);
    XA_INCR := XInternAtom(display, 'INCR', False);
    XA_UTF8_STRING := XInternAtom(display, 'UTF8_STRING', False);
    XA_TextPlain := XInternAtom(display, 'text/plain', False);
    XA_CLIPBOARD := XInternAtom(display, 'CLIPBOARD', False);

    supported_targets := [XA_TARGETS, XA_INCR, XA_STRING, XA_UTF8_STRING, XA_TextPlain];

    XSetSelectionOwner(display, XA_CLIPBOARD, CopyWin, 0);
    XGetSelectionOwner(display, XA_CLIPBOARD);

    it.Data := PChar(CreatBuffer);
    // it.Data := MyBuffer2;

    repeat
      XFlush(display);
      XNextEvent(display, @event);
      case event._type of
        Expose: begin
          if event.xexpose.window = win then begin
            XDrawRectangle(display, win, DefaultGC(display, scr), 20, 20, 200, 200);
          end;
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Halt(0);
            end;
          end;
        end;
        SelectionClear: begin
          if event.xselectionclear.window = CopyWin then begin
            WriteLn('SelectionClear');
            if event.xselectionclear.selection = XA_CLIPBOARD then begin
              XDestroyWindow(display, CopyWin);
              XCloseDisplay(display);
              WriteLn('Hintergrundprozesse beendet !');
              Exit;
            end;
          end;
        end;
        SelectionRequest: begin
          if event.xselectionrequest.owner = CopyWin then begin
            WriteLn('SelectionRequest');
            if event.xselectionrequest.selection = XA_CLIPBOARD then begin
              handle_selection_request(event);
            end;
          end;
        end;
        PropertyNotify: begin
          WriteLn(Win);
          WriteLn(CopyWin);
          WriteLn(event.xproperty.window);
          WriteLn();

          if event.xproperty.window = CopyWin then begin
            //          WriteLn('PropertyNotify 1');
            if event.xproperty.state = PropertyDelete then begin
              WriteLn('PropertyNotify 2');
              continue_incr;
            end;
          end;
        end;
      end;
    until False;
  end;

begin
  //if fork <> 0 then begin
  //  setsid;
  //  WriteLn('Hauptprozess beendet');
  //  Halt;
  //end else begin
  main;
  // end;
end.
