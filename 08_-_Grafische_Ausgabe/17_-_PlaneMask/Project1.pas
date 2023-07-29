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
    PlaneMask: packed record
      r, g, b: byte;
      end;
    bgColor: culong;
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

    with PlaneMask do begin
      XSetPlaneMask(dis, gc, b + g shl 8 + r shl 16);
    end;

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

    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

    win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    //    XSetWindowBackground(dis, win, $FF8888);
    XSelectInput(dis, win, KeyPressMask or ExposureMask);

    XMapWindow(dis, win);

    bgColor := $FFFFFF;
    XSetWindowBackground(dis, win, bgColor);
    PlaneMask.b := $FF;
    PlaneMask.g := $FF;
    PlaneMask.r := $FF;
  end;

  destructor TMyWin.Destroy;
  begin
    XDestroyWindow(dis, win);

    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
  begin
    while (True) do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Draw;
        end;
        KeyPress: begin
          case XLookupKeysym(@Event.xkey, 0) of
            XK_Escape: begin
              Break;
            end;
            XK_space: begin
              if bgColor = $FFFFFF then begin
                bgColor := $000000;
              end else begin
                bgColor := $FFFFFF;
              end;
              XSetWindowBackground(dis, win, bgColor);
              Draw;
            end;
            XK_1: begin
              PlaneMask.r := not PlaneMask.r;
              Draw;
            end;
            XK_2: begin
              PlaneMask.g := not PlaneMask.g;
              Draw;
            end;
            XK_3: begin
              PlaneMask.b := not PlaneMask.b;
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
