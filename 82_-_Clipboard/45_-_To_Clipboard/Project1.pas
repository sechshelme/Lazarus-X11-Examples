// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
// https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html

// https://github.com/dacap/clip/blob/main/clip_x11.cpp

program Project1;

uses
  SysUtils,
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

const
  TargetsString: array of PChar = (
    'TARGETS',
    'UTF8_STRING',
    'STRING',
    'COMPOUND_TEXT',
    'text/uri-list',
    'TEXT',
//    'text/rtf',
//    'text/richtext',
    'text/html',
    'text/plain;charset=utf-16',
    'text/plain;charset=utf-8',
    'text/plain;charset=UTF-16BE',
    'text/plain;charset=UTF-16LE',
    'text/plain;charset=ISO-8859-1',
    'text/plain;charset=US-ASCII',
    'text/plain;charset=unicode',
    'text/plain');
var
  msgStringLeft: TStringArray = nil;
  msgStringRight: TStringArray = nil;
  TargetList: array of record
    atom: TAtom;
    Checked: boolean;
    end
  = nil;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    XA_CLIPBOARD: TAtom;
    dis: PDisplay;
    win: TWindow;
    scr: cint;
    gc: TGC;
    Event: TXEvent;
  private
    procedure Draw;
    procedure CreateMsgList;
    procedure WriteClipboard;
    procedure InitClipboard;
    procedure AddMsg(const s: string);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  function MyErrorProc(para1: PDisplay; para2: PXErrorEvent): cint; cdecl;
  begin
    WriteLn('Error Handle');
    Result := 0;
  end;

  procedure TMyWin.Draw;
  var
    i: integer;
  begin
    XClearWindow(dis, win);
    XSetForeground(dis, gc, $FFFF00);
    for i := 0 to Length(msgStringLeft) - 1 do begin
      XDrawString(dis, win, gc, 10, 16 * i + 16, PChar(msgStringLeft[i]), Length(msgStringLeft[i]));
    end;

    XSetForeground(dis, gc, $FF00FF);
    for i := 0 to Length(msgStringRight) - 1 do begin
      XDrawString(dis, win, gc, 400 + 10, 16 * i + 16, PChar(msgStringRight[i]), Length(msgStringRight[i]));
    end;
  end;

  procedure TMyWin.CreateMsgList;
  var
    s: string;
    i: integer;
    ch, ck: char;
  begin
    msgStringLeft := nil;
    Insert(['Selektiere die Auswahl mit [0-z]', ''], msgStringLeft, Length(msgStringLeft));
    for i := 0 to Length(TargetList) - 1 do begin
      if TargetList[i].Checked then begin
        ck := 'X';
      end else begin
        ck := ' ';
      end;
      if i > 9 then begin
        ch := char(i + 64 + 32 - 9);
      end else begin
        ch := char(i + 48);
      end;
      WriteStr(s, '(', ch, ') [', ck, '] ' + XGetAtomName(dis, TargetList[i].atom));
      Insert(s, msgStringLeft, Length(msgStringLeft));
    end;
  end;

  procedure TMyWin.AddMsg(const s: string);
  begin
    Insert(s, msgStringRight, Length(msgStringRight));
    if Length(msgStringRight) > 30 then begin
      Delete(msgStringRight, 0, 1);
    end;
    Draw;
  end;

  procedure TMyWin.WriteClipboard;
  var
    cs: string;
    ev: TXSelectionEvent;
    xsr: PXSelectionRequestEvent;
    R, i: cint;
    io: boolean = False;
    tmpTargets: array of TAtom = nil;

    function CreateClipboardString(atom: TAtom): string;
    begin
      WriteStr(Result, #10,
        '----------------------------------'#10,
        'Target: ', XGetAtomName(dis, atom), #10,
        'Generiert am: ', DateTimeToStr(Now), #10,
        '----------------------------------'#10#10);
    end;

  begin

    for i := 0 to Length(TargetList) - 1 do begin
      if TargetList[i].Checked then begin
        Insert(TargetList[i].atom, tmpTargets, Length(tmpTargets));
      end;
    end;

    if Event.xselectionrequest.selection = XA_CLIPBOARD then begin
      //      WriteLn('Daten stehen im Clipboard bereit');
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


      if ev.target = XInternAtom(dis, 'TARGETS', False) then begin
        R := XChangeProperty(ev.display, ev.requestor, ev._property, XA_ATOM, 32, PropModeReplace, pbyte(tmpTargets), Length(tmpTargets));
      end else begin
        AddMsg(XGetAtomName(dis, ev.target));
        i := 1;
        while (i < Length(TargetList)) and not io do begin
          if ev.target = TargetList[i].atom then begin
            cs := CreateClipboardString(ev.target);
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

  procedure TMyWin.InitClipboard;
  begin
    XSetSelectionOwner(dis, XA_CLIPBOARD, win, CurrentTime);
    if XGetSelectionOwner(dis, XA_CLIPBOARD) <> win then begin
      WriteLn('Fehler: Falsches Window');
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
      TargetList[i].atom := XInternAtom(dis, TargetsString[i], False);
      TargetList[i].Checked := True;
    end;

    scr := DefaultScreen(dis);
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 800, 600, 1, $FFFFFF, $000000);
    XStoreName(dis, win, 'Clipboard');
    gc := XCreateGC(dis, win, 0, nil);
    XSelectInput(dis, win, KeyPressMask or ExposureMask);
    XMapWindow(dis, win);


    CreateMsgList;
  end;

  destructor TMyWin.Destroy;
  begin
    XDestroyWindow(dis, win);
    XCloseDisplay(dis);

    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    key, p: TKeySym;
  begin
    InitClipboard;

    while (True) do begin
      XNextEvent(dis, @Event);
      case Event._type of
        Expose: begin
          Draw;
        end;
        KeyPress: begin
          key := XLookupKeysym(@Event.xkey, 0);
          case key of
            XK_Escape: begin
              Break;
            end;
            XK_0..XK_9: begin
              p := key - xk_0;
              if p < Length(TargetList) then begin
                TargetList[p].Checked := not TargetList[p].Checked;
                CreateMsgList;
                InitClipboard;
                Draw;
              end;
            end;
            XK_a..XK_z: begin
              p := key - xk_a + 10;
              if p < Length(TargetList) then begin
                TargetList[p].Checked := not TargetList[p].Checked;
                CreateMsgList;
                InitClipboard;
                Draw;
              end;
            end;
          end;
        end;
        // Wird ausgelöst, sobald Daten extern vom Clipboard verlangt werden.
        SelectionRequest: begin
          //          WriteLn('SelectionRequest');
          WriteClipboard;
        end;
        // Wird ausgelöst, sobald eine andere App Daten fürs Clipboard hat.
        SelectionClear: begin
          //          WriteLn('SelectionClear');
        end;
        // Daten vom Clipboard stehen bereit zur Abholung
        SelectionNotify: begin
          //          WriteLn('SelectionNotify');
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
