# 10 - Textausgabe
## 20 - Font groesse ermitteln Char16Bit

![image.png](image.png)

Schriftgrösse ermitteln, ZB. um den Text zu zentrieren.

---

```pascal
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
    function utf8toXChar2b_old(output: PXChar2b; const input: string): integer;
    function utf8toXChar2b(output: PXChar2b; const s: string): uIntPtr;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask or ExposureMask;

  function TMyWin.utf8toXChar2b_old(output: PXChar2b; const input: string): integer;
  var
    j: integer = 0;
    k: integer = 0;
    inlen: integer;
    c: byte;
  begin
    inlen := Length(input);
    //    SetLength(output, inlen);
    while (j < inlen) and (k < inlen) do begin
      c := byte(input[j + 1]);
      if c < 128 then  begin
        output[k].byte1 := 0;
        output[k].byte2 := byte(c);
        Inc(k);
      end else if c < $C0 then begin
        Continue;
      end else begin
        case c and $F0 of
          $C0, $D0: begin
            if inlen < j + 1 then begin
              Result := k;
              Exit;
            end;
            output[k].byte1 := (c and $1C) shr 2;
            Inc(j);
            output[k].byte2 := ((c and $03) shl 6) + (byte(input[j + 1]) and $3F);
            Inc(k);
          end;
          $E0: begin
            if inlen < 2 + j then begin
              Result := k;
              Exit;
            end;
            Inc(j);
            output[k].byte1 := ((c and $0F) shl 4) + ((byte(input[j + 1]) and $3C) shr 2);
            c := byte(input[j + 1]);
            Inc(j);
            output[k].byte2 := ((c and $03) shl 6) + (byte(input[j + 1]) and $3F);
            Inc(k);
          end;
          $FF: begin
            Continue;
          end;

        end;
      end;
      Inc(j);
    end;
    Result := k;
  end;

  function TMyWin.utf8toXChar2b(output: PXChar2b; const s: string): PtrUInt;
  var
    inlen: IntPtr;
    sp: pbyte;
    op: PXChar2b;
    c: byte;

    function GetLen2B: IntPtr; inline;
    begin
      Result := (PtrUInt(op) - PtrUInt(output)) div SizeOf(TXChar2b);
    end;

    function GetLenPC: IntPtr; inline;
    begin
      Result := (PtrUInt(sp) - PtrUInt(@s[1])) div SizeOf(char);
    end;

  begin
    inlen := Length(s);
    sp := @s[1];
    op := output;
    while (GetLenPC < inlen) and (GetLen2B < inlen) do begin
      c:=sp^;
      if c < 128 then  begin
        op^.byte1 := 0;
        op^.byte2 := c;
        Inc(op);
      end else if sp^ < $C0 then begin
        Continue;
      end else begin
        case sp^ and $F0 of
          $C0, $D0: begin
            if inlen < GetLenPC + 1 then begin
              Result := GetLen2B;
              Exit;
            end;
            op^.byte1 := (c and $1C) shr 2;
            Inc(sp);
            op^.byte2 := ((c and $03) shl 6) + (sp^ and $3F);
            Inc(op);
          end;
          $E0: begin
            if inlen < GetLenPC + 2 then begin
              Result := GetLen2B;
              Exit;
            end;
            Inc(sp);
            op^.byte1 := ((c and $0F) shl 4) + ((sp^ and $3C) shr 2);
            c := sp^;
            Inc(sp);
            op^.byte2 := ((c and $03) shl 6) + (sp^ and $3F);
            Inc(op);
          end;
          $FF: begin
            Continue;
          end;

        end;
      end;
      Inc(sp);
    end;
    Result := GetLen2B;
  end;

  procedure TMyWin.Paint;
  const
    Hello = 'Hello World !, ich habe "äüö ÄÜÖ ÿŸäüö   ggg" !';
  var
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    Left, Top: cint;
    str2b: PXChar2b;
    Char2BLen: integer;

  begin
    fontStructure := XLoadQueryFont(dis, '9x15bold');
    if fontStructure = nil then begin
      fontStructure := XLoadQueryFont(dis, 'fixed');
    end;
    XSetFont(dis, gc, fontStructure^.fid);

    Getmem(str2b, Length(Hello) * 2);
    Writeln('str: ', Length(Hello));
    Char2BLen := utf8toXChar2b_old(str2b, Hello);
    WriteLn('b2: ', Char2BLen);
    Char2BLen := utf8toXChar2b(str2b, Hello);
    WriteLn('b2: ', Char2BLen);

    XTextExtents16(fontStructure, str2b, Char2BLen, @direction, @ascent, @descent, @overall);
    Left := (Width - overall.Width) div 2;
    Top := (Height - ascent) div 2;

    XSetForeground(dis, gc, $88FF88);
    XFillRectangle(dis, win, gc, Left, Top, overall.Width, ascent);
    WriteLn(overall.Width, ' ', ascent, ' ', descent);

    XSetForeground(dis, gc, $000000);
    XDrawString16(dis, win, gc, Left, Top + ascent - descent, str2b, Char2BLen);

    Freemem(str2b);
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
```


