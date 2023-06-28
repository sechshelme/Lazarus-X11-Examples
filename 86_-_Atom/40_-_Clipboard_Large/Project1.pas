//image image.png
(*
Erstes Fenster mit <b>X11</b> wird erstellt.
Es wird nur ein einziges Eregniss gebraucht.
Ein Tastatur-Event, welches <b>[ESC]</b> abfängt und das Programm beendet.
*)

// https://stackoverflow.com/questions/27378318/c-get-string-from-clipboard-on-linux
// https://www.uninformativ.de/blog/postings/2017-04-02/0/POSTING-en.html

program Project1;

uses
  SysUtils,
  BaseUnix,
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  xatom,
  x;

var
  dis: PDisplay;
  win: TWindow;
  gc: TGC;

  procedure ShowBMP(Data: PChar; len: SizeInt);
  // http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/2003_w/misc/bmp_file_format/bmp_file_format.htm

  type
    PBMPHeader = ^TBMPHeader;

    TBMPHeader = packed record
    Signatur: array[0..1] of char;
    FileSize, reserved, DataOffset: uint32;
  end;

    PBMPInfoHeader = ^TBMPInfoHeader;

    TBMPInfoHeader = packed record
    Size, Width, Height: uint32;
    Planes, Bits_per_Pixel: uint16;
    Compression, ImageSize, XpixelsPerM, YpixelsPerM, Colors_Used, Important_Colors: uint32;
  end;


  var
    size: PInt32;
    w, w2, h: int32;
    headerSize, i: SizeInt;
    col: culong;
    x, y: integer;
    ofs: SizeInt;

    BMPHeader: TBMPHeader;
    BMPInfoHeader: TBMPInfoHeader;
    m: uint32;
  begin
    BMPHeader := PBMPHeader(Data + 0)^;
    WriteLn('Signature: ', BMPHeader.Signatur);
    WriteLn('FileSize: ', BMPHeader.FileSize);
    WriteLn('reserved: ', BMPHeader.reserved);
    WriteLn('DataOffset: ', BMPHeader.DataOffset);

    BMPInfoHeader := PBMPInfoHeader(Data + $0E)^;
    WriteLn('HeaderSize: ', BMPInfoHeader.Size);
    WriteLn('Width: ', BMPInfoHeader.Width);
    WriteLn('Height: ', BMPInfoHeader.Height);
    WriteLn('Planes: ', BMPInfoHeader.Planes);
    WriteLn('Bits per pixel: ', BMPInfoHeader.Bits_per_Pixel);
    WriteLn('Compression: ', BMPInfoHeader.Compression);
    WriteLn('ImageSize: ', BMPInfoHeader.ImageSize);
    WriteLn('XpixelsPerM: ', BMPInfoHeader.XpixelsPerM);
    WriteLn('YpixelsPerM: ', BMPInfoHeader.YpixelsPerM);
    WriteLn('Colors used: ', BMPInfoHeader.Colors_Used);
    WriteLn('Important colors: ', BMPInfoHeader.Important_Colors);
    WriteLn();

    w2 := BMPInfoHeader.Width * 3;
    m := BMPInfoHeader.Width mod 4;
    if m > 0 then begin
      Inc(w2, m);
    end;

    ofs := 0;
    for y := 0 to BMPInfoHeader.Height - 1 do begin
      for x := 0 to BMPInfoHeader.Width - 1 do begin
        col := PUInt32(Data + (x * 3) + ofs + BMPHeader.DataOffset)^;
        if col = 0 then  begin
//          col :=col+ $ff;
///          Write('0000000000000000000000000 ');
        end else begin
//          Write(col, ' ');
//          col:= col +$00ff;
        end;
        XSetForeground(dis, gc, col);
        XDrawPoint(dis, win, gc, x, BMPInfoHeader.Height - y);
      end;
      Inc(ofs, w2);
    end;
    XFlush(dis);

    WriteLn('Zeichen...');
    WriteLn(len, ' Bytes gezeichnet.');
  end;



  function Printselection(dis: PDisplay; win: TWindow; bufname, fmtname: PChar): TCharArray;
  var
    bufid, fmtid, propid, incid: TAtom;
    Event: TXEvent;
    resbits: cint;
    ressize, restail: culong;
    res: PChar;
    i: SizeInt;
    ofs: SizeInt = 0;
  begin
    Result := nil;
    bufid := XInternAtom(dis, bufname, False);
    fmtid := XInternAtom(dis, fmtname, False);
//    propid := XInternAtom(dis, 'XSEL_DATA', False);
    propid := XInternAtom(dis, 'CLIPBOARD', False);
    incid := XInternAtom(dis, 'INCR', False);

    XConvertSelection(dis, bufid, fmtid, propid, win, CurrentTime);
    repeat
      XNextEvent(dis, @Event);
    until (Event._type = SelectionNotify) and (Event.xselection.selection = bufid);

    if Event.xselection._property <> 0 then begin
      XGetWindowProperty(dis, win, propid, 0, MaxSIntValue div 4, True, AnyPropertyType, @fmtid, @resbits, @ressize, @restail, @res);
      if fmtid <> incid then begin
        WriteLn('len: ', ressize);
        SetLength(Result, ressize);
        for i := 0 to ressize - 1 do begin
          Write(i, ' - ', byte(res[i]), ' + ');
          Result[i] := res[i];
        end;
        //      Write(res);
        ofs := ressize;
        XFree(res);
        WriteLn('-------- OHNE INCR -------------');
      end;

      if fmtid = incid then begin
        WriteLn('-------- INCR -------------');
        repeat
          repeat
            XNextEvent(dis, @Event);
          until (Event._type = PropertyNotify) and (Event.xproperty.atom = propid) and (Event.xproperty.state = PropertyNewValue);

          WriteLn('incr');
          XGetWindowProperty(dis, win, propid, 0, MaxSIntValue div 4, True, AnyPropertyType, @fmtid, @resbits, @ressize, @restail, @res);
          //        Write(res);

          WriteLn('res: ', ressize);
          SetLength(Result, ofs + ressize);
          for i := 0 to ressize - 1 do begin
            Result[ofs + i] := res[i];
          end;

          ofs := ofs + ressize;
          XFree(res);
          WriteLn('ofs: ', ofs);

        until not (ressize > 0);
      end;
    end else begin
      WriteLn('Ungültige Daten');
    end;
  end;

  procedure main;
  var
    ch: TCharArray;
    i: integer;
  begin
    dis := XOpenDisplay(nil);
    win := XCreateSimpleWindow(dis, DefaultRootWindow(dis), 0, 0, 1280, 960, 0, $000000, $FFFFFF);
    XSelectInput(dis, win, PropertyChangeMask or ExposureMask);
    gc := XCreateGC(dis, win, 0, nil);
    XMapWindow(dis, win);

    //ch := Printselection(dis, win, 'CLIPBOARD', 'STRING');
    ch := Printselection(dis, win, 'CLIPBOARD', 'image/bmp');
    WriteLn('len ch: ', Length(ch));
    if ch <> nil then begin
      ShowBMP(PChar(ch), Length(ch));
    end else begin
      WriteLn('nil');
    end;
    //for i := 0 to Length(ch) - 1 do begin
    //    for i := 0 to 100 do begin
    //      Write(ch[i]);
    //    end;
    WriteLn('len: ', Length(ch));

    ReadLn;

    XDestroyWindow(dis, win);
    XCloseDisplay(dis);
  end;

begin
  main;
end.
