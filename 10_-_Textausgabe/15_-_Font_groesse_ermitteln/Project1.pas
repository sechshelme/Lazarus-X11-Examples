//image image.png
(*
Schriftgrösse ermitteln, ZB. um den Text zu zentrieren.
*)
//lineal
//code+
program Project1;

uses
  heaptrc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  xresource,
  keysym,
  x;

type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    gc: TGC;
    win: TWindow;

    Width, Height: cint;
    procedure Paint;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask or ExposureMask;

  procedure TMyWin.Paint;
  const
    Hello = 'Hello World , ich habe "ggggggg"!H';
  var
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    Left, Top: cint;

  begin
    fontStructure := XLoadQueryFont(dis, '-misc-fixed-bold-r-normal--13-120-75-75-c-70-iso8859-15');
    if fontStructure = nil then begin
      fontStructure := XLoadQueryFont(dis, 'fixed');
    end;

    XSetFont(dis, gc, fontStructure^.fid);
    XTextExtents(fontStructure, Hello, Length(Hello), @direction, @ascent, @descent, @overall);
    Left := (Width - overall.Width) div 2;
    Top := (Height - ascent) div 2;

    XSetForeground(dis, gc, $FF8888);


    XFillRectangle(dis, win, gc, Left, Top, overall.Width, ascent);

    XSetForeground(dis, gc, $000000);
    XDrawString(dis, win, gc, Left, Top + ascent - descent, PChar(Hello), Length(Hello));
    //    XDrawImageString(dis, win, gc, Left, Top + ascent - descent, PChar(Hello), Length(Hello));
    XFreeFont(dis, fontStructure);
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

    Width := 320;
    Height := 240;

    win := XCreateSimpleWindow(dis, DefaultRootWindow(dis), 10, 10, Width, Height, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XMapWindow(dis, win);

    XSelectInput(dis, win, EventMask);
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
    quit: boolean = False;

  begin
    while not quit do begin
      XNextEvent(dis, @Event);

      case Event._type of
        ConfigureNotify: begin
          Width := Event.xconfigure.Width;
          Height := Event.xconfigure.Height;
        end;
        Expose: begin
          Paint;
        end;
        KeyPress: begin
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
