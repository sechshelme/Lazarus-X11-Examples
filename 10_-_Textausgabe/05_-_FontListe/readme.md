# 10 - Textausgabe
## 05 - FontListe

![image.png](image.png)

Besser man macht es objektorientiert mit Klassen.
Die macht es übersichtlicher und ausbaufähiger.

---

```pascal
program Project1;

uses
  heaptrc,
  //  libc,
  unixtype,
  ctypes,
  xlib,
  xutil,
  xresource,
  keysym,
  x;

  function setlocale(cat: integer; p: PChar): cint; cdecl; external 'c';

const
  LC_ALL = 6;


type

  { TMyWin }

  TMyWin = class(TObject)
  private
    dis: PDisplay;
    scr: cint;
    gc: TGC;
    win: TWindow;

    xic: PXIC;
    sl: string;

    FontList: record
      Data: PPChar;
      Count: cint;
      end;

    function utf8toXChar2b(output: PXChar2b; const input: string): integer;
    procedure DrawString(const s: string; x, y: integer);
    procedure Paint;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

const
  EventMask = ButtonPressMask or KeyPressMask or KeyReleaseMask or StructureNotifyMask or ExposureMask;
  //  EventMask = KeyPressMask or KeyReleaseMask;

  function TMyWin.utf8toXChar2b(output: PXChar2b; const input: string): integer;
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

  procedure TMyWin.DrawString(const s: string; x, y: integer);
  var
    PC2: PXChar2b;
    len: integer;
  begin
    Getmem(PC2, Length(s) * 2);
    len := utf8toXChar2b(PC2, s);
    XDrawString16(dis, win, gc, x, y, PC2, len);
    Freemem(PC2);
  end;

  procedure TMyWin.Paint;
  const
    Caption = 'öäü-ÄÜÖ !Ÿ←←««¥¥<<';
    Hello = 'Hello World !';
  var
    fontname: TFont;
    ofs, i: integer;
    info: PChar;
    fontStructure: PXFontStruct;
    direction, ascent, descent: cint;
    overall: TXCharStruct;
    ff: TXID;
  begin
    WriteLn(FontList.Count);
    ofs := 890;
    for i := 0 to 100 do begin
      Info := FontList.Data[i + ofs];
      fontname := XLoadFont(dis, FontList.Data[i + ofs]);

      fontStructure := XLoadQueryFont(dis, FontList.Data[i + ofs]);
      if fontStructure = nil then begin
        fontStructure := XLoadQueryFont(dis, 'fixed');
        WriteLn(stderr, 'unable to load font ' + FontList.Data[i + ofs] + ' : using fixed');
      end;

      XSetFont(dis, gc, fontStructure^.fid);
      XTextExtents(fontStructure, info, Length(info), @direction, @ascent, @descent, @overall);
      XDrawRectangle(dis, win, gc, 10, 20 * i, overall.Width, descent);

      XDrawString(dis, win, gc, 10, i * 20 + 20, PChar(info), Length(info));
      XUnloadFont(dis, fontname);
    end;

    //     XmbDrawString(dis,win, @fontset,gc,20,70,PChar(Caption), Length(Caption));
    DrawString(Caption, 10, 30);
    DrawString(sl, 10, 50);

  end;

  constructor TMyWin.Create;
  var
    xim: PXIM;
    i: integer;
    f:text;
  begin
    inherited Create;
    if setlocale(LC_ALL, '') = 0 then begin
      WriteLn('setlocale Fehler');
    end;

    // Erstellt die Verbindung zum Server
    dis := XOpenDisplay(nil);
    if dis = nil then begin
      WriteLn('Kann nicht das Display öffnen');
      Halt(1);
    end;
    scr := DefaultScreen(dis);
    gc := DefaultGC(dis, scr);

    win := XCreateSimpleWindow(dis, DefaultRootWindow(dis), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
    XMapWindow(dis, win);
    XSync(dis, False);

    XSetLocaleModifiers('');

    xim := XOpenIM(dis, nil, nil, nil);
    if xim = nil then begin
      // fallback to internal input method
      XSetLocaleModifiers('@im=none');
      xim := XOpenIM(dis, nil, nil, nil);
    end;

    xic := XCreateIC(xim, [XNInputStyle, XIMPreeditNothing or XIMStatusNothing, XNClientWindow, win, XNFocusWindow, win, nil]);
    if xic = nil then begin
      WriteLn('Could not open IC');
    end;

    XSetICFocus(xic);

    XSelectInput(dis, win, EventMask);

    FontList.Data := XListFonts(dis, '*', 10000, @FontList.Count);

    AssignFile(f, 'fontliste.txt');
    Rewrite(f);
    for i := 0 to FontList.Count - 1 do begin
      WriteLn(f, FontList.Data[i]);
    end;
    CloseFile(f);
  end;

  destructor TMyWin.Destroy;
  begin
    XFreeFontNames(FontList.Data);
    // Schliesst Verbindung zum Server
    XCloseDisplay(dis);
    inherited Destroy;
  end;

  procedure TMyWin.Run;
  var
    Event: TXEvent;
    status: TStatus;
    Count, i: integer;
    keysym: TKeySym;
    buf: array[0..31] of char;
    quit: boolean = False;

  begin
    while not quit do begin
      XNextEvent(dis, @Event);

      case Event._type of
        Expose: begin
          Paint;
        end;
        KeyPress: begin
          if not XFilterEvent(@Event, 0) then begin
            keysym := NoSymbol;

            FillChar(buf, Length(buf), #0);
            Count := Xutf8LookupString(xic, @Event.xkey, @buf, SizeOf(buf) - 1, @keysym, @status);
            if status = XLookupBoth then begin
            end;

            if status = XBufferOverflow then begin
              //            WriteLn('Buffer Überlauf !');
            end;
            WriteLn('Count Press: ', Count);
            i := 0;
            while buf[i] <> #0 do begin
              sl := sl + buf[i];
              Inc(i);
            end;
            Paint;

            Write(buf, ' ');
            if Event.xkey.state and 1 = 1 then begin
              Write('Shift ');
            end;
            if Event.xkey.state and 2 = 2 then begin
              Write('Caps ');
            end;
            if Event.xkey.state and 4 = 4 then begin
              Write('Ctrl ');
            end;
            if Event.xkey.state and 8 = 8 then begin
              Write('Alt ');
              quit := True;
            end;
            WriteLn();

          end;
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


