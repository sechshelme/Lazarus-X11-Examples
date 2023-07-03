//image image.png
(*
Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.
*)
//lineal
//code+

// https://github.com/ssato/misc/tree/master/ssmack
// https://github.com/ssato/misc/blob/master/ssmack/xsendevent.c
// https://gist.github.com/javiercantero/7753445

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
    rootWin,
    win1, win2: TWindow;
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

    // Erstellt das Fenster
    rootWin := RootWindow(dis, scr);
    win1 := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    win2 := XCreateSimpleWindow(dis, rootWin, 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));

    // Wählt die gewünschten Ereignisse aus
    // Es wird nur das Tastendrückereigniss <b>KeyPressMask</b> gebraucht.
    XSelectInput(dis, win1, KeyPressMask or KeyReleaseMask or ExposureMask);
    XSelectInput(dis, win2, KeyPressMask or KeyReleaseMask or ExposureMask);

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
    sEvent: TXKeyEvent;
    k: PChar;
    i: integer;
    ch:array[0..1] of Char;
  const
    myEvent = 37;
  begin
    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);
//      WriteLn('Event: ', Event._type);

      case Event._type of
        Expose: begin
          WriteLn('expose');
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xany, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_a..XK_z:Write(Event.xkey.keycode,' ');
            //XK_b: begin
            //  WriteLn('B gedrückt !');
            //end;
            //XK_k: begin
            //  WriteLn('K gedrückt !');
            //end;
            XK_space: begin
              WriteLn('space');
              sEvent.display := dis;
              sEvent.window := win1;
              sEvent.root := rootWin;
              sEvent.subwindow := 0;
              sEvent.time := CurrentTime;
              sEvent.x := 1;
              sEvent.y := 1;
              sEvent.x_root := 1;
              sEvent.y_root := 1;
              sEvent.same_screen := 1;
              sEvent._type := KeyPress;
              for i := 0 to 65 do begin
                ch[0]:=char(i+ 65);
                ch[1]:=#0     ;
                sEvent.keycode := XKeysymToKeycode(dis, XStringToKeysym(ch ));
                status := XSendEvent(dis, win1, 1, KeyPressMask, @sEvent);
                if status = 0 then begin
                  WriteLn('fehler');
                end;
              end;

              //sEvent.keycode := XKeysymToKeycode(dis, XStringToKeysym('k'));
              //status := XSendEvent(dis, win1, 1, KeyPressMask, @sEvent);
              //if status = 0 then begin
              //  WriteLn('fehler');
              //end;

            end;
          end;
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
