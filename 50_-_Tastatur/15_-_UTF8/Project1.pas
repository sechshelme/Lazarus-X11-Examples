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



const
  LC_ALL = 6;


type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    depth: cint;
    rootwin, win: TWindow;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPress or KeyPressMask or KeyReleaseMask or StructureNotifyMask;

  function test(ac:array of const):Pchar;
  begin

  end;

  constructor TMyWin.Create;
  var
    im: PXIM;
    failed: PChar;
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

//    failed:=XGetIMValues(im,XNQueryInputStyle,@styles,nil);
//     XGetIMValues(im, xnq);
    failed := XGetIMValues(im, ['queryInputStyle']);
    if failed=nil then begin
      WriteLn('fdgfd');
    end;

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
    status: TStatus;
  const
    myEvent = 37;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      //      WriteLn('Event: ', Event._type);

      case Event._type of
        KeymapNotify: begin
          WriteLn('keymap');
        end;
        KeyRelease: begin
          //          WriteLn('Release: ', Event.xkey.keycode);
          //          WriteLn('state: ', Event.xkey.state);
          //        WriteLn();
        end;
        KeyPress: begin
          WriteLn('keycode:', XKeycodeToKeysym(dis, Event.xkey.keycode, 0));
          WriteLn('keycode:', XKeycodeToKeysym(dis, Event.xkey.keycode, Event.xkey.state));
          WriteLn('Press: ', Event.xkey.keycode);
          WriteLn('state: ', Event.xkey.state);
          WriteLn('Keysym: ', XLookupKeysym(@Event.xkey, 0));
          WriteLn('Keysym: ', XLookupKeysym(@Event.xkey, 1));
          WriteLn(XKeysymToString(XLookupKeysym(@Event.xkey, 0)));
          WriteLn(XKeysymToString(XLookupKeysym(@Event.xkey, Event.xkey.state)));
          WriteLn();

          // Beendet das Programm bei [ESC]
          //case XLookupKeysym(@Event.xkey, 0) of
          //  XK_Escape: begin
          //    Break;
          //  end;
          //  XK_space: begin
          //    WriteLn('space');
          //    e._type := DestroyNotify;
          //    e.xbutton.window := Event.xbutton.window;
          //    e.xbutton.window := win;
          //    //              XSendEvent(dis, win, False, myEvent, @e);
          //    status := XSendEvent(dis, Event.xbutton.window, True, NoEventMask, @e);
          //    if status = 0 then begin
          //      WriteLn('fehler');
          //    end;
          //
          //  end;
          //end;
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
