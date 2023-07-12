program Project1;

uses
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

  {$i buffer.inc}

  function cmalloc(size: SizeInt): Pointer; cdecl; external 'c' Name 'malloc';
  procedure cfree(ptr: Pointer); cdecl; external 'c' Name 'free';
    procedure setsid; cdecl; external 'c';


const
  MyBuffer2 = 'Hello World'#10'Hallo Welt'#10;

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

  PMultTrack = ^TMultTrack;

  TMultTrack = record
    mparent: PMultTrack;
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
    mparent: PMultTrack;
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
  targets_atom, incr_atom, UTF_8_atom, clip_atom: TAtom;
  supported_targets: array[0..1] of TAtom;
  incrtrack_list: PIncrTrack = nil;

var
  display: PDisplay;
  window: TWindow;


  procedure add_incrtrack(it: PIncrTrack);
  begin
    if incrtrack_list <> nil then begin
      incrtrack_list^.prev := it;
    end;
    it^.prev := nil;
    it^.Next := incrtrack_list;
    incrtrack_list := it;
  end;

  function fresh_incrtrack: PIncrTrack;
  var
    it: PIncrTrack;
  begin
    it:=cmalloc(SizeOf(TIncrTrack));
    add_incrtrack(it);

    Result := it;
  end;

  function find_incrtrack(atom: TAtom): PIncrTrack;
  var
    iti: PIncrTrack;
  begin
    iti := incrtrack_list;
    while iti <> nil do begin
      if atom = iti^._property then begin
        Result:=iti;
        Exit;
      end;
      iti := iti^.Next;
    end;
    Result := nil;
  end;

  function change_property(display: PDisplay; requestor: TWindow; _property, target: TAtom; format, mode: cint; Data: PChar; nelements: cint; selction: TAtom; time: TTime; mparent: PMultTrack): THandleResult;
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

    XSelectInput(ev.display, ev.requestor, PropertyChangeMask);
    XChangeProperty(ev.display, ev.requestor, ev._property, incr_atom, 32, PropModeReplace, pbyte(@nr_bytes), 1);

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

  function incr_stage_1(it: PIncrTrack): THandleResult;
  begin
    WriteLn('-----------        incr 1');
    XChangeProperty(it^.display, it^.requestor, it^._property, it^.target, it^.format, PropModeReplace, pbyte(it^.Data), it^.chunk);
    it^.offset += it^.chunk;
    it^.state := S_INCR_2;
    Result := HANDLE_INCOMPLETE;
  end;

  function incr_stage_2(it: PIncrTrack): THandleResult;
  begin
    WriteLn('-----------        incr 2');
    it^.chunk := min(it^.max_elements, it^.nelements - it^.offset);

    if it^.chunk <= 0 then begin
      XChangeProperty(it^.display, it^.requestor, it^._property, it^.target, it^.format, PropModeAppend, nil, 0);
      it^.state := S_NULL;
      Result := HANDLE_OK;
    end else begin
      XChangeProperty(it^.display, it^.requestor, it^._property, it^.target, it^.format, PropModeAppend, pbyte(it^.Data + it^.offset), it^.chunk);
      it^.offset += it^.chunk;
      Result := HANDLE_INCOMPLETE;
    end;
  end;

  function handle_targets(display: PDisplay; requestor: TWindow; _property: TAtom; selction: TAtom; time: TTime; mparent: PMultTrack): THandleResult;
  var
    targets_cpy: PAtom;
    i: integer;
    r: THandleResult;
  begin
    //    Getmem(targets_cpy, SizeOf(supported_targets));
    targets_cpy := cmalloc(SizeOf(supported_targets));
    for i := 0 to Length(supported_targets) - 1 do begin
      targets_cpy[i] := supported_targets[i];
    end;
    r := change_property(display, requestor, _property, XA_ATOM, 32, PropModeReplace, PChar(targets_cpy), Length(supported_targets), selction, time, mparent);
    //    Freemem(targets_cpy);
    cfree(targets_cpy);
    Result := r;
  end;

  function handle_string(display: PDisplay; requestor: TWindow; _property: TAtom; sel: PChar; selection: TAtom; time: TTime; mparent: PMultTrack): THandleResult;
  begin
    Result := change_property(display, requestor, _property, XA_STRING, 8, PropModeReplace, sel, StrLen(sel), selection, time, mparent);
  end;

  function continue_incr(it: PIncrTrack): THandleResult;
  var
    retval: THandleResult = HANDLE_OK;
  begin
    if it^.state = S_INCR_1 then begin
      retval := incr_stage_1(it);
    end else if it^.state = S_INCR_2 then begin
      retval := incr_stage_2(it);
    end;
    Result := retval;
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

    if ev.target = targets_atom then begin
      WriteLn('--- Schreibe Targets ---');
      ev._property := xsr^._property;
      hr := handle_targets(ev.display, ev.requestor, ev._property, ev.selection, ev.time, nil);
    end else if (ev.target = UTF_8_atom) or (ev.target = XA_STRING) then  begin
      WriteLn('--- Schreibe String ---');
      ev._property := xsr^._property;
      hr := handle_string(ev.display, ev.requestor, ev._property, sel, ev.selection, ev.time, nil);
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
    it: PIncrTrack;
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
            it := find_incrtrack(event.xproperty.atom);
            if it <> nil then  begin
              continue_incr(it);
            end;
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

    targets_atom := XInternAtom(display, 'TARGETS', False);
    incr_atom := XInternAtom(display, 'INCR', False);
    UTF_8_atom := XInternAtom(display, 'UTF8_STRING', False);
    clip_atom := XInternAtom(display, 'CLIPBOARD', False);

    supported_targets[0] := UTF_8_atom;
    supported_targets[1] := XA_STRING;

    FpSetsid;
//    setsid;
    set_selection(clip_atom, MyBuffer);
  end;

begin
  main;

//  XDestroyWindow(display, window);
//  XCloseDisplay(display);
end.
