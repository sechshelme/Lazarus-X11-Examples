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

  procedure setsid; cdecl; external 'c';

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
  incrtrack_list: TIncrTrack;

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

    incrtrack_list.state := S_INCR_1;
    incrtrack_list.display := display;
    incrtrack_list.requestor := requestor;
    incrtrack_list._property := _property;
    incrtrack_list.selection := selection;
    incrtrack_list.target := target;
    incrtrack_list.format := format;
    incrtrack_list.Data := Data;
    incrtrack_list.nelements := nelements;
    incrtrack_list.offset := 0;
    incrtrack_list.max_elements := max_req * 8 div format;
    incrtrack_list.chunk := min(incrtrack_list.max_elements, incrtrack_list.nelements - incrtrack_list.offset);

    Result := HANDLE_INCOMPLETE;
  end;

  function continue_incr: THandleResult;
  begin
    Result:=HANDLE_OK;
    if incrtrack_list.state = S_INCR_1 then begin
      XChangeProperty(incrtrack_list.display, incrtrack_list.requestor, incrtrack_list._property, incrtrack_list.target, incrtrack_list.format, PropModeReplace, pbyte(incrtrack_list.Data), incrtrack_list.chunk);
      incrtrack_list.offset += incrtrack_list.chunk;
      incrtrack_list.state := S_INCR_2;
      Result := HANDLE_INCOMPLETE;
    end else if incrtrack_list.state = S_INCR_2 then begin
      incrtrack_list.chunk := min(incrtrack_list.max_elements, incrtrack_list.nelements - incrtrack_list.offset);
      if incrtrack_list.chunk <= 0 then begin
        XChangeProperty(incrtrack_list.display, incrtrack_list.requestor, incrtrack_list._property, incrtrack_list.target, incrtrack_list.format, PropModeAppend, nil, 0);
        incrtrack_list.state := S_NULL;
        Result := HANDLE_OK;
      end else begin
        XChangeProperty(incrtrack_list.display, incrtrack_list.requestor, incrtrack_list._property, incrtrack_list.target, incrtrack_list.format, PropModeAppend, pbyte(incrtrack_list.Data + incrtrack_list.offset), incrtrack_list.chunk);
        incrtrack_list.offset += incrtrack_list.chunk;
        Result := HANDLE_INCOMPLETE;
      end;
    end;
  end;

  function handle_targets(display: PDisplay; requestor: TWindow; _property: TAtom; selction: TAtom): THandleResult;
  begin
    Result := change_property(display, requestor, _property, XA_ATOM, 32, PropModeReplace, PChar(@supported_targets), Length(supported_targets), selction);
  end;

  function handle_string(display: PDisplay; requestor: TWindow; _property: TAtom; sel: PChar; selection: TAtom): THandleResult;
  begin
    Result := change_property(display, requestor, _property, XA_STRING, 8, PropModeReplace, sel, StrLen(sel), selection);
  end;


  procedure handle_selection_request(event: TXEvent; sel: PChar);
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
      hr := handle_targets(ev.display, ev.requestor, ev._property, ev.selection);
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

  procedure own_selection(selection: TAtom);
  begin
    XSetSelectionOwner(display, selection, window, 0);
    XGetSelectionOwner(display, selection);
  end;

  procedure set_selection(selection: TAtom; sel: PChar);
  var
    event: TXEvent;
  begin
    own_selection(selection);
    repeat
      XFlush(display);
      XNextEvent(display, @event);
      case event._type of
        SelectionClear: begin
          WriteLn('SelectionClear');
          if event.xselectionclear.selection = selection then begin
            Exit;
          end;
        end;
        SelectionRequest: begin
          WriteLn('SelectionRequest');
          if event.xselectionrequest.selection = selection then begin
            handle_selection_request(event, sel);
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

  procedure main;
  var
    root: TWindow;
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

    setsid;
    set_selection(XA_CLIPBOARD, MyBuffer);
  end;

begin
  main;

  //  XDestroyWindow(display, window);
  //  XCloseDisplay(display);
end.
