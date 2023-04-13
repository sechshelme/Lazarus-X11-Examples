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
  LazUTF8;

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
//    Hello = 'fdasdfdsf öäü ÄÖÜ Ÿÿ---';
    Hello = 'Ÿöäü aou';
  var
    fontStructure: PXFontStruct;
    Left, Top, missingCharsetCount: cint;
    FontSet: TXFontSet;
    missingCharsets: PPChar;
    defaultString: PChar;

    Overall_ink, Overall_logical: TXRectangle;
    i: integer;
    ws:WideString;

  begin
    ws:=      UTF8ToUTF16(Hello);
    WriteLn(Length(Hello));
    WriteLn(Length(ws));
    for i:=1 to Length(ws) do WriteLn(word( ws[i]),'   ' ,ws[i],' ');
    fontStructure := XLoadQueryFont(dis, 'fixed');

//    FontSet := XCreateFontSet(dis, '-*-fixed-*-*-*-*-16-*', @missingCharsets, @missingCharsetCount, @defaultString);
//FontSet := XCreateFontSet(dis, '*', @missingCharsets, @missingCharsetCount, @defaultString);
FontSet := XCreateFontSet(dis, '-schumacher*', @missingCharsets, @missingCharsetCount, @defaultString);
    if FontSet = nil then begin
      WriteLn('Ungültiger Font');
      Exit;
    end;

    WriteLn('X11 locale: ', XLocaleOfFontSet(fontSet));
    WriteLn('XFontSet: ', XBaseFontNameListOfFontSet(fontSet));
    WriteLn('missing: ', missingCharsetCount);
    for i := 0 to missingCharsetCount - 1 do begin
      WriteLn(missingCharsets[i]);      end;

    XFreeStringList(missingCharsets);

//    Xutf8TextExtents(FontSet, Hello, Length(Hello), @Overall_ink, @Overall_logical);
    XwcTextExtents(FontSet, @ws, Length(Hello), @Overall_ink, @Overall_logical);
    Left := (Width - Overall_logical.Width) div 2;
    Top := (Height - Overall_logical.Height) div 2;

    XSetForeground(dis, gc, $8888FF);
    XFillRectangle(dis, win, gc, Left, Top, Overall_ink.Width, Overall_logical.Height);

    XSetForeground(dis, gc, $000000);
//    Xutf8DrawString(dis, win, FontSet, gc, Left, Top + Overall_logical.Height, PChar(Hello), Length(Hello));
    XwcDrawString(dis, win, FontSet, gc, Left, Top + Overall_logical.Height, @ws, Length(Hello));

    XSetFont(dis, gc, fontStructure^.fid);
//    XDrawString(dis, win, gc, 60, 70, PChar(Hello), Length(Hello));
//    XDrawString(dis, win, gc, 50, 50, PChar(Hello), Length(Hello));

    XFreeFont(dis, fontStructure);
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

    Width := 420;
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
