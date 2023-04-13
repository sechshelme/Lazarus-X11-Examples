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

type
  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win1, win2: TWindow;
    widht, Height: cuint;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  constructor TMyWin.Create;
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
    win1 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, widht, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    win2 := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, widht, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win1, KeyPressMask);
    XSelectInput(dis, win2, KeyPressMask);
    //XSelectInput(dis, win1, $FFFF);
    //XSelectInput(dis, win2, $FFFF);

    // Fenster anzeigen
    XMapWindow(dis, win1);
    XMapWindow(dis, win2);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win2);
    XDestroyWindow(dis, win1);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    e: TXEvent;
    status: TStatus;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
      WriteLn('Event: ', Event._type);

      case Event._type of
        KeyPress: begin
          // Beendet das Programm bei [ESC]

          writeln( Event.xkey.state);
          WriteLn(char( XLookupKeysym(@Event.xkey, 0)));
          case XLookupKeysym(@Event.xkey, 0) of
            XKc_A:WriteLn('a');

            XK_Escape: begin
              Break;
            end;
            XK_space: begin
              e:=Event;
              e._type := KeyPress;
              e.xkey.keycode:= XK_Escape;
              status := XSendEvent(dis, win1, False, KeyPress, @e);
              if status = 0 then begin
                WriteLn('fehler');
              end;
            end;
          end;
        end;
        ResizeRequest: begin
          WriteLn('resize');
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
