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

//const clib = 'c';
//procedure setlocale(cat : integer; p : pchar); cdecl; external 'c';
  function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';
  //  function XGetIMValues(im: PXIM; xis: PChar; styl: PXIMStyles; p: Pointer): PChar; cdecl; external 'X11';


type
  TCharArray = array of char;

const
  LC_ALL = 6;

  qIS: TCharArray = ('q', 'u', 'e', 'r', 'y', 'I', 'n', 'p', 'u', 't', 'S', 't', 'y', 'l', 'e');


type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    depth: cint;
    rootwin, win: TWindow;

    ic: PXIC;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask;

  // ac:array of const = ('q','u','e','r','y','I','n','p','u','t','S','t','y','l','e');

  function test(ac: array of const): PChar;
  begin

  end;

  constructor TMyWin.Create;
  var
    im: PXIM;
    failed: PChar;
    styles: TXIMStyles;
  begin
    inherited Create;
    if setlocale(LC_ALL, '') = 0 then begin
      WriteLn('setlocale Fehler');
    end;
    if XSupportsLocale = 0 then begin
      WriteLn('XSupportsLocale Fehler');
    end;
    if XSetLocaleModifiers('@im=none') = nil then begin
      WriteLn('XSetLocaleModifiers Fehler');
    end;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, EventMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    im := XOpenIM(dis, nil, nil, nil);
    if im = nil then begin
      WriteLn('Could not open input method');
    end;

    //    WriteLn(Length([@qIS, @styles, nil]));

    failed := XGetIMValues(im, [XNQueryInputStyle, @styles, nil]);
    //    failed := XGetIMValues(im, [@qIS, @styles, nil]);
    if failed <> nil then begin
      WriteLn('XIM Can''t get styles');
      WriteLn(failed);
    end;

    WriteLn(styles.count_styles);

    ic := XCreateIC(im, [XNInputStyle, XIMPreeditNothing or XIMStatusNothing, XNClientWindow, win, nil]);
    if ic = nil then begin
      WriteLn('Could not open IC');
    end;

    XSetICFocus(ic);

  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    e: TXEvent;
    statusP,statusR: TStatus;
    countP, countR: Integer;
    keysym:TKeySym;
    bufP,bufR:array[0..19]of Char;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      //      WriteLn('Event: ', Event._type);

      case Event._type of
        KeymapNotify: begin
          WriteLn('keymap');
        end;
        KeyPress: begin
          WriteLn('press');
          countP:=0;
          keysym:=0;
          statusP:=0 ;
          countP:=Xutf8LookupString(ic,@Event,@bufP,20,@keysym,@statusP);
          WriteLn(countP);


        end;
        KeyRelease: begin
          countR:=0;
          keysym:=0;
          statusR:=0;
          countR:=XLookupString(@Event,@bufR,20,@keysym,nil);if countR>0 then WriteLn(bufR);

          //          WriteLn('Release: ', Event.xkey.keycode);
          //          WriteLn('state: ', Event.xkey.state);
          //        WriteLn();

        end;
        ClientMessage: begin
          WriteLn('Hallo');
        end;
        DestroyNotify: begin
          WriteLn('Ende ', Event.xbutton.window);
          //          Exit;
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
