//image image.png
(*
Verschiedene Varianten um Rechtecke zu zeichnen:
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

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    win: TWindow;
    gc: TGC;
    PlaneMask: integer;
    procedure Draw;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

  procedure TMyWin.Draw;
  var
    w: cuint = 50;
    h: cuint = 50;
  begin
    XClearWindow(dis, win);

    XSetPlaneMask(dis, gc, PlaneMask);

    XSetForeground(dis, gc, $FF0000);
    XFillRectangle(dis, win, gc, 10, 10, w, h);

    XSetForeground(dis, gc, $00FF00);
    XFillRectangle(dis, win, gc, 70, 10, w, h);

    XSetForeground(dis, gc, $0000FF);
    XFillRectangle(dis, win, gc, 130, 10, w, h);

    XSetForeground(dis, gc, $FFFF00);
    XFillRectangle(dis, win, gc, 10, 70, w, h);

    XSetForeground(dis, gc, $00FFFF);
    XFillRectangle(dis, win, gc, 70, 70, w, h);

    XSetForeground(dis, gc, $FF00FF);
    XFillRectangle(dis, win, gc, 130, 70, w, h);

    XSetForeground(dis, gc, 000000);
    XFillRectangle(dis, win, gc, 10, 130, w, h);

    XSetForeground(dis, gc, $888888);
    XFillRectangle(dis, win, gc, 70, 130, w, h);

    XSetForeground(dis, gc, $FFFFFF);
    XFillRectangle(dis, win, gc, 130, 130, w, h);
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
    gc := DefaultGC(dis, scr);

    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XSetWindowBackground(dis, win, $FF8888);
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    // Fenster anzeigen
    XMapWindow(dis, win);
  end;

  destructor TMyWin.Destroy;
  begin
    // Schliesst das Fenster
    XDestroyWindow(dis, win);

    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin

    // Ereignisschleife
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Draw;
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_1: begin
              PlaneMask := $FF0000;
              Draw;
            end;
            XK_2: begin
              PlaneMask := $00FF00;
              Draw;
            end;
            XK_3: begin
              PlaneMask := $0000FF;
              Draw;
            end;
          end;
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
