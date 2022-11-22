//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.
*)
//lineal
//code+
program Project1;

uses
  //  libc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  xresource,
  keysym,
  x;

  function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';


type
  TCharArray = array of char;

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    gc: TGC;
    win: TWindow;

    xic: PXIC;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask or ExposureMask;

  constructor TMyWin.Create;
  var
    xim: PXIM;
  begin
    inherited Create;
    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;

    if setlocale(0 {LC_ALL}, '') = 0 then begin
      WriteLn('setlocale Fehler');
    end;
//    XSetLocaleModifiers('');

    xim := XOpenIM(dis, nil, nil, nil);
    if xim = nil then begin
      // fallback to internal input method
      XSetLocaleModifiers('@im=none');
      xim := XOpenIM(dis, nil, nil, nil);
    end;



    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

    win := XCreateSimpleWindow(dis, DefaultRootWindow(dis), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSelectInput(dis, win, EventMask);
    XMapWindow(dis, win);
    XSync(dis, False);


    xic := XCreateIC(xim, [XNInputStyle, XIMPreeditNothing or XIMStatusNothing, XNClientWindow, win, XNFocusWindow, win, nil]);
    if xic = nil then begin
      WriteLn('Could not open IC');
    end;

    XSetICFocus(xic);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  const
    Hello = 'Hello World !';

  var
    Event: TXEvent;
    status: TStatus;
    Count: integer;
    keysym: TKeySym;
    buf: array[0..31] of char;
    s:String;

  begin

    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          XDrawString(dis, win, gc, 10, 10, PChar(Hello), Length(Hello));
        end;
        KeyPress: begin
          if not XFilterEvent(@Event, 0) then begin
            keysym := NoSymbol;

            FillChar(buf, Length(buf), #0);
            Count := Xutf8LookupString(xic, @Event.xkey, @buf, SizeOf(buf) - 1, @keysym, @status);
            if status = XLookupBoth then begin
            end;

            if status = XBufferOverflow then begin
              //            WriteLn('Buffer Überlauf !');
            end;
            WriteLn('Count Press: ', Count);
            Write(buf, ' ');
            s:=buf;
            Write(s,'  ');
            WriteLn(Length(s));
            if Event.xkey.state and 1 = 1 then begin
              Write('Shift ');
            end;
            if Event.xkey.state and 2 = 2 then begin
              Write('Caps ');
            end;
            if Event.xkey.state and 4 = 4 then begin
              Write('Ctrl ');
            end;
            if Event.xkey.state and 8 = 8 then begin
              Write('Alt ');
            end;
            WriteLn();
          end;
        end;
        KeyRelease: begin
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
//code-
