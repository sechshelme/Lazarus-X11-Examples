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
    procedure UTF8toXChar2b(var output: TXChar2BArray; const s: string);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask or ExposureMask;

  procedure TMyWin.UTF8toXChar2b(var output: TXChar2BArray; const s: string);
  var
    StrLen: IntPtr;
    StrPtr: pbyte;
    C2BPtr: PXChar2b;
    c: byte;

  begin
    StrLen := Length(s);
    SetLength(output, StrLen);
    StrPtr := @s[1];
    C2BPtr := @output[0];
    while ((PtrUInt(StrPtr) - PtrUInt(@s[1])) div SizeOf(char) < StrLen) do begin
      c := StrPtr^;
      if c < 128 then  begin
        C2BPtr^.byte1 := 0;
        C2BPtr^.byte2 := c;
        Inc(C2BPtr);
      end else if StrPtr^ < $C0 then begin
        Continue;
      end else begin
        case StrPtr^ and $F0 of
          $C0, $D0: begin
            C2BPtr^.byte1 := (c and $1C) shr 2;
            Inc(StrPtr);
            C2BPtr^.byte2 := ((c and $03) shl 6) + (StrPtr^ and $3F);
            Inc(C2BPtr);
          end;
          $E0: begin
            Inc(StrPtr);
            C2BPtr^.byte1 := ((c and $0F) shl 4) + ((StrPtr^ and $3C) shr 2);
            c := StrPtr^;
            Inc(StrPtr);
            C2BPtr^.byte2 := ((c and $03) shl 6) + (StrPtr^ and $3F);
            Inc(C2BPtr);
          end;
        end;
      end;
      Inc(StrPtr);
    end;
    SetLength(output, (PtrUInt(C2BPtr) - PtrUInt(@output[0])) div SizeOf(TXChar2b));
  end;

  procedure TMyWin.Paint;
  const
    Hello = 'Hello World !, ich habe "äüö ÄÜÖ ÿŸäüö   ggg" !äöü';
  var
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    Left, Top: cint;
    Char2BArr: TXChar2BArray;

  begin
    fontStructure := XLoadQueryFont(dis, '9x15bold');
    if fontStructure = nil then begin
      fontStructure := XLoadQueryFont(dis, 'fixed');
    end;
    XSetFont(dis, gc, fontStructure^.fid);

    Writeln('str: ', Length(Hello));
    UTF8toXChar2b(Char2BArr, Hello);
    WriteLn('b2: ', Length(Char2BArr));

    XTextExtents16(fontStructure, @Char2BArr[0], Length(Char2BArr), @direction, @ascent, @descent, @overall);
    Left := (Width - overall.Width) div 2;
    Top := (Height - ascent) div 2;

    XSetForeground(dis, gc, $88FF88);
    XFillRectangle(dis, win, gc, Left, Top, overall.Width, ascent);
    WriteLn(overall.Width, ' ', ascent, ' ', descent);

    XSetForeground(dis, gc, $000000);
    XDrawString16(dis, win, gc, Left, Top + ascent - descent, @Char2BArr[0], Length(Char2BArr));

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
