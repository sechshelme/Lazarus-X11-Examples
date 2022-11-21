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

  function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';
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
        Hello = 'öäüHello World , ich habe "ggggggg"!H';
//    Hello = 'Hello World';
  var
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    Left, Top, missingCharsetCount: cint;
    FontSet: TXFontSet;
    missingCharsets: PPChar;
    defaultString: PChar;

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

//    FontSet := XCreateFontSet(dis, '-monotype-arial-medium-r-normal--*-90-*-*-p-0-*-*,-monotype-arial-regular-r-normal--*-90-*-*-p-0-*-*', @missingCharsets, @missingCharsetCount, @defaultString);
    FontSet := XCreateFontSet(dis, 'fixed', @missingCharsets, @missingCharsetCount, @defaultString);
    if FontSet=nil then WriteLn('fehler');

    WriteLn('X11 locale: ', XLocaleOfFontSet(fontSet));
    WriteLn('XFontSet: ', XBaseFontNameListOfFontSet(fontSet));

    XSetForeground(dis, gc, $000000);
    //    Xutf8DrawString(dis, win, FontSet, gc, Left, Top + ascent - descent, PChar(Hello), Length(Hello));
    Xutf8DrawString(dis, win, FontSet, gc, 10, 10, PChar(Hello), Length(Hello));
  end;

  constructor TMyWin.Create;
  const
    LC_ALL = 6;
  begin
    inherited Create;

    if setlocale(LC_ALL, '') = 0 then begin
      WriteLn('setlocale Fehler');
    end;
    //    XSetLocaleModifiers('');

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
