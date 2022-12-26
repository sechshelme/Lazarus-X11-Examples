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
  x,
  cwstring,
  LazUTF8;

type
  TXChar2BArray = array of TXChar2b;

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
  type
    TChar2BString = type ansistring(CP_UTF16BE);
  const
    Hello = 'Hello World !, ich habe "äüö ÄÜÖ ÿŸäüö   ggg" !äöü';
  var
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    Left, Top: cint;
    Char2BArr: TChar2BString;

  begin
    Char2BArr := UTF8ToUTF16(Hello);
    WriteLn(Char2BArr);

    fontStructure := XLoadQueryFont(dis, '9x15bold');
    if fontStructure = nil then begin
      fontStructure := XLoadQueryFont(dis, 'fixed');
    end;
    XSetFont(dis, gc, fontStructure^.fid);

    Writeln('str: ', Length(Hello));
    WriteLn('ws: ', Length(Char2BArr));

    XTextExtents16(fontStructure, @Char2BArr[1], Length(Char2BArr)shr 1, @direction, @ascent, @descent, @overall);
    Left := (Width - overall.Width) div 2;
    Top := (Height - ascent) div 2;

    XSetForeground(dis, gc, $88FF88);
    XFillRectangle(dis, win, gc, Left, Top, overall.Width, ascent);
    WriteLn(overall.Width, ' ', ascent, ' ', descent);

    XSetForeground(dis, gc, $000000);

    XDrawString16(dis, win, gc, Left, Top + ascent - descent, @Char2BArr[1], Length(Char2BArr) shr 1);
    XDrawString16(dis, win, gc, 50, 50, @Char2BArr[1], Length(Char2BArr) shr 1);

    XFreeFont(dis, fontStructure);
  end;

  constructor TMyWin.Create;
  begin
    inherited Create;

    Width := 500;
    Height := 240;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

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
