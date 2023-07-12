program Project1;

uses
  Math,
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

  {$i buffer.inc}

const
  MyBuffer2 = 'Hello World'#10'Hallo Welt'#10;

const
  HANDLE_OK = 0;
  HANDLE_INCOMPLETE = 1 shl 1;

type
  THandleResult = cint;

const
  S_NULL = 0;
  S_INCR_1 = 1;
  S_INCR_2 = 2;

  max_req = 4000;

type
  TIncrTrack = record
    state: integer;
    display: PDisplay;
    requestor: TWindow;
    _property, selection: TAtom;
    target: TAtom;
    format: cint;
    Data: PChar;
    nelements, offset, chunk, max_elements: cint;
  end;

var
  XA_TARGETS, XA_INCR, XA_UTF8_STRING, XA_CLIPBOARD: TAtom;
  supported_targets: array[0..1] of TAtom;
  il: TIncrTrack;

var
  display: PDisplay;
  window: TWindow;

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

    il.state := S_INCR_1;
    il.display := display;
    il.requestor := requestor;
    il._property := _property;
    il.selection := selection;
    il.target := target;
    il.format := format;
    il.Data := Data;
    il.nelements := nelements;
    il.offset := 0;
    il.max_elements := max_req * 8 div format;
    il.chunk := min(il.max_elements, il.nelements - il.offset);

    Result := HANDLE_INCOMPLETE;
  end;

  function continue_incr: THandleResult;
  begin
    Result := HANDLE_OK;
    if il.state = S_INCR_1 then begin
      XChangeProperty(il.display, il.requestor, il._property, il.target, il.format, PropModeReplace, pbyte(il.Data), il.chunk);
      il.offset += il.chunk;
      il.state := S_INCR_2;
      Result := HANDLE_INCOMPLETE;
    end else if il.state = S_INCR_2 then begin
      il.chunk := min(il.max_elements, il.nelements - il.offset);
      if il.chunk <= 0 then begin
        XChangeProperty(il.display, il.requestor, il._property, il.target, il.format, PropModeAppend, nil, 0);
        il.state := S_NULL;
        Result := HANDLE_OK;
      end else begin
        XChangeProperty(il.display, il.requestor, il._property, il.target, il.format, PropModeAppend, pbyte(il.Data + il.offset), il.chunk);
        il.offset += il.chunk;
        Result := HANDLE_INCOMPLETE;
      end;
    end;
  end;

  function handle_string(display: PDisplay; requestor: TWindow; _property: TAtom; sel: PChar; selection: TAtom): THandleResult;
  begin
    Result := change_property(display, requestor, _property, XA_STRING, 8, PropModeReplace, sel, StrLen(sel), selection);
  end;


  procedure handle_selection_request(const event: TXEvent; sel: PChar);
  var
    xsr: PXSelectionRequestEvent;
    ev: TXSelectionEvent;
    hr: THandleResult = HANDLE_OK;
  begin
    xsr := @event.xselectionrequest;
    ev._type := SelectionNotify;
    ev.display := xsr^.display;
    ev.requestor := xsr^.requestor;
    ev.selection := xsr^.selection;
    ev.time := xsr^.time;
    ev.target := xsr^.target;

    if ev.target = XA_TARGETS then begin
      ev._property := xsr^._property;
      hr := HANDLE_OK;
      XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, pbyte(@supported_targets), Length(supported_targets));
    end else if (ev.target = XA_UTF8_STRING) or (ev.target = XA_STRING) then  begin
      ev._property := xsr^._property;
      hr := handle_string(ev.display, ev.requestor, ev._property, sel, ev.selection);
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
    event: TXEvent;
  begin
    display := XOpenDisplay(nil);
    root := XDefaultRootWindow(display);
    window := XCreateSimpleWindow(display, root, 10, 10, 320, 240, 0, 0, $FFFFFF);
    XSelectInput(display, window, PropertyChangeMask);

    XA_TARGETS := XInternAtom(display, 'TARGETS', False);
    XA_INCR := XInternAtom(display, 'INCR', False);
    XA_UTF8_STRING := XInternAtom(display, 'UTF8_STRING', False);
    XA_CLIPBOARD := XInternAtom(display, 'CLIPBOARD', False);

    supported_targets[0] := XA_UTF8_STRING;
    supported_targets[1] := XA_STRING;

    XSetSelectionOwner(display, XA_CLIPBOARD, window, 0);
    XGetSelectionOwner(display, XA_CLIPBOARD);
    repeat
      XFlush(display);
      XNextEvent(display, @event);
      case event._type of
        SelectionClear: begin
          WriteLn('SelectionClear');
          if event.xselectionclear.selection = XA_CLIPBOARD then begin
            Exit;
          end;
        end;
        SelectionRequest: begin
          WriteLn('SelectionRequest');
          if event.xselectionrequest.selection = XA_CLIPBOARD then begin
            handle_selection_request(event, MyBuffer);
          end;
        end;
        PropertyNotify: begin
          WriteLn('PropertyNotify 1');
          if event.xproperty.state = PropertyDelete then begin
            WriteLn('PropertyNotify 2');
            continue_incr;
          end;
        end;
      end;
    until False;
  end;

begin
  main;

  //  XDestroyWindow(display, window);
  //  XCloseDisplay(display);
end.
