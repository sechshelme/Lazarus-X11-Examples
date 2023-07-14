//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.
*)
//lineal
//code+
program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

const
  ProtocolsName: array of PChar = (
   'WM_CLIENT_LEADER', 'WM_DELETE_WINDOW', 'WM_TAKE_FOCUS', 'WM_WINDOW_ROLE',
    'WM_SIZE_HINT', 'WM_NORMAL_HINT', 'WM_PROTOCOLS','WM_SAVE_YOURSELF',
    'WM_CLIENT_MACHINE','WM_COMMAND');

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    widht, Height: cuint;
    Protocols: array of TAtom;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ShowProtocols;
    procedure Run;
  end;

  constructor TMyWin.Create;
  var
    i: integer;
  begin
    inherited Create;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);

    widht := 320;
    Height := 200;

    // Erstellt das Fenster
    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, widht, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);

    SetLength(Protocols, Length(ProtocolsName));
    for i := 0 to Length(Protocols) - 1 do begin
      Protocols[i] := XInternAtom(dis, ProtocolsName[i], True);
      WriteLn(Protocols[i]);
    end;
    XSetWMProtocols(dis, win, PAtom(Protocols), Length(Protocols));
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.ShowProtocols;
  var
    atoms: PAtom;
    Count: cint;
    i: integer;
    ch: PChar;
  begin
    XGetWMProtocols(dis, win, @atoms, @Count);
    WriteLn('Count:', Count);
    for i := 0 to Count - 1 do begin
      if atoms[i] <> 0 then  begin
        ch := XGetAtomName(dis, atoms[i]);
        Write(ch,'  ');
        XFree(ch);
      end else begin
        Write('Atom = 0  ');
      end;
    end;
    WriteLn();
    XFree(atoms);
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    quit: boolean = False;
    l: clong;
    ch: PChar;
  begin
    // Ereignisschleife
    while not quit do begin
      XNextEvent(dis, @Event);
      case Event._type of
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              quit := True;
            end;
            XK_p: begin
              ShowProtocols;
            end;
          end;
        end;
        ResizeRequest: begin
          WriteLn('resize');
        end;
        ClientMessage: begin
          l := Event.xclient.Data.l[0];
          if l <> 0 then begin
            ch := XGetAtomName(dis, l);
            WriteLn('Atomname:', ch);
            XFree(ch);
          end else WriteLn('Ungültiges Atom !');
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
