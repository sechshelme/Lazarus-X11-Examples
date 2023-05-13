program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  libc;

// Ab Seite 65

const
  icon_bitmap_width = 20;
  icon_bitmap_height = 20;
  icon_bitmap_bits: array of byte = (
    $60, $00, $01, $b0, $00, $07, $0c, $03, $00, $04, $04, $00,
    $c2, $18, $00, $03, $30, $00, $01, $60, $00, $f1, $df, $00,
    $c1, $f0, $01, $82, $01, $00, $02, $03, $00, $02, $0c, $00,
    $02, $38, $00, $04, $60, $00, $04, $e0, $00, $04, $38, $00,
    $84, $06, $00, $14, $14, $00, $0c, $34, $00, $00, $00, $00);
  icon_name: PChar = 'basicwin';
  window_name: PChar = 'Basic Window Program';

var
  display: PDisplay;
  screen_num: cint;

  procedure load_font(font_info: PPXFontStruct);
  var
    fontname: PChar = '9x15';
  begin
    font_info^ := XLoadQueryFont(display, fontname);
    if font_info^ = nil then begin
      fprintf(stderr, '%s: Cannot open 9x15 font'#10);
      Halt(-1);
    end;
  end;

  procedure getGC(win: TWindow; gc: PGC; font_info: PXFontStruct);
  var
    valuemask: clong = 0;
    values: TXGCValues;
    linw_width: cuint = 6;
    line_style: cint = LineOnOffDash;
    cap_style: cint = CapRound;
    join_style: cint = JoinRound;
    dash_offfset: cint = 0;
  const
    dash_list: array[0..1] of char = (#12, #24);
  var
    list_length: cint = length(dash_list);
  begin
    gc^ := XCreateGC(display, win, valuemask, @values);
    XSetFont(display, gc^, font_info^.fid);

    XSetForeground(display, gc^, BlackPixel(display, screen_num));
    XSetLineAttributes(display, gc^, linw_width, line_style, cap_style, join_style);
    XSetDashes(display, gc^, dash_offfset, dash_list, list_length);
  end;

  procedure place_text(win: TWindow; gc: TGC; font_info: PXFontStruct; win_width, win_height: cuint);
  const
    string1: PChar = 'Hi! I''m a window, who are you?';
    string2: PChar = 'To terminate program; Press any key';
    string3: PChar = 'or button while in this window.';
    string4: PChar = 'Screen Dimensions:';
  var
    cd_height, cd_width, cd_depth: array [0..49] of char;
    len1, len2, len3, len4: SizeInt;
    width1, width2, width3, font_height, initial_y_offset: cint;
    x_offset: cuint;
  begin
    len1 := StrLen(string1);
    len2 := StrLen(string2);
    len3 := StrLen(string3);
    len4 := StrLen(string4);

    width1 := XTextWidth(font_info, string1, len1);
    width2 := XTextWidth(font_info, string1, len2);
    width3 := XTextWidth(font_info, string1, len3);

    font_height := font_info^.ascent + font_info^.descent;

    XDrawString(display, win, gc, (win_width - width1) div 2, font_height, string1, len1);
    XDrawString(display, win, gc, (win_width - width2) div 2, win_height - (2 * font_height), string2, len2);
    XDrawString(display, win, gc, (win_width - width3) div 2, win_height - font_height, string3, len3);

    sprintf(cd_height, ' Height - %d pixels', DisplayHeight(display, screen_num));
    sprintf(cd_width, ' Width  - %d pixels', DisplayWidth(display, screen_num));
    sprintf(cd_depth, ' Depth  - %d pixels', DefaultDepth(display, screen_num));

    len1 := StrLen(cd_height);
    len2 := StrLen(cd_width);
    len3 := StrLen(cd_depth);

    initial_y_offset := win_height div 2 - font_height - font_info^.descent;
    x_offset := win_width div 4;

    XDrawString(display, win, gc, x_offset, initial_y_offset, string4, len4);

    XDrawString(display, win, gc, x_offset, initial_y_offset + font_height, cd_height, len1);
    XDrawString(display, win, gc, x_offset, initial_y_offset + font_height * 2, cd_width, len2);
    XDrawString(display, win, gc, x_offset, initial_y_offset + font_height * 3, cd_depth, len3);
  end;

  procedure place_graphics(win: TWindow; gc: TGC; window_width, window_height: cuint);
  var
    Height, Width, x, y: cuint;
  begin
    Height := window_height div 2;
    Width := 3 * window_height div 2;
    x := window_width div 2 - Width div 2;
    y := window_height div 2 - Height div 2;
    XDrawRectangle(display, win, gc, x, y, Width, Height);
  end;

  procedure TooSmall(win: TWindow; gc: TGC; font_info: PXFontStruct);
  var
    string1: PChar;
    x_offset, y_offset: cint;
  begin
    string1 := PChar('Too Small');
    y_offset := font_info^.ascent + 2;
    x_offset := 2;
    XDrawString(display, win, gc, x_offset, y_offset, string1, StrLen(string1));
  end;

  procedure main;
  const
    BITMAPDEPTH = 1;
    TOO_SMALL = 0;
    BIG_ENOUGH = 1;
  var
    display_name: PChar = nil;
    progname: PChar;
    x, y, Count: cint;
    display_width, display_heigth,
    Width, Height: cuint;
    border_width: cint = 4;
    win: TWindow;
    icon_pixmap: TPixmap;
    size_hints: PXSizeHints;
    wm_hints: PXWMHints;
    class_hints: PXClassHint;
    Event: TXEvent;
    window_size: cint = 0;
    windowName, iconname: TXTextProperty;
    font_info: PXFontStruct;
    gc: TGC;
    size_list: PXIconSize;

  begin
    progname := argv[0];

    size_hints := XAllocSizeHints;
    if size_hints = nil then begin
      fprintf(stderr, '%s: failure allocating memory'#10, progname);
      Halt(0);
    end;

    wm_hints := XAllocWMHints;
    if wm_hints = nil then begin
      fprintf(stderr, '%s: failure allocating memory'#10, progname);
      Halt(0);
    end;

    class_hints := XAllocClassHint;
    if class_hints = nil then begin
      fprintf(stderr, '%s: failure allocating memory'#10, progname);
      Halt(0);
    end;

    display := XOpenDisplay(display_name);
    if display = nil then begin
      fprintf(stderr, '%s: connat connect to X server %s'#10, progname, XDisplayName(display_name));
      Halt(-1);
    end;

    screen_num := DefaultScreen(display);
    display_width := DisplayWidth(display, screen_num);
    display_heigth := DisplayHeight(display, screen_num);

    x := 0;
    y := 0;

    Width := display_width div 3;
    Height := display_heigth div 4;
    win := XCreateSimpleWindow(display, RootWindow(display, screen_num), x, y, Width, Height, border_width, BlackPixel(display, screen_num), WhitePixel(display, screen_num));


    if XGetIconSizes(display, RootWindow(display, screen_num), @size_list, @Count) = 0 then begin
      fprintf(stderr, '%s: Window manager didn’t set icon sizes − using default.\n', progname);
    end else begin
      WriteLn('icon io');
      WriteLn('Icon Count: ', Count);
    end;

    icon_pixmap := XCreateBitmapFromData(display, win, PChar(icon_bitmap_bits), icon_bitmap_width, icon_bitmap_height);

    size_hints^.flags := PPosition or PSize or PMinSize;
    size_hints^.min_width := 300;
    size_hints^.min_height := 200;

    if XStringListToTextProperty(@window_name, 1, @windowname) = 0 then begin
      fprintf(stderr, '%s: structure allocation for iconName failed.'#10, progname);
      Halt(-1);
    end;

    if XStringListToTextProperty(@icon_name, 1, @iconname) = 0 then begin
      fprintf(stderr, '%s: structure allocation for iconName failed.'#10, progname);
      Halt(-1);
    end;

    wm_hints^.initial_state := NormalState;
    wm_hints^.input := 1;
    wm_hints^.icon_pixmap := icon_pixmap;
    wm_hints^.flags := StateHint or IconPixmapHint or InputHint;

    class_hints^.res_name := progname;
    class_hints^.res_class := 'Basicwin';

    XSetWMProperties(display, win, @windowname, @iconname, argv, argc, size_hints, wm_hints, class_hints);
    XSelectInput(display, win, KeyPressMask or ExposureMask or ButtonPressMask or StructureNotifyMask);

    load_font(@font_info);

    getGC(win, @gc, font_info);

    XMapWindow(display, win);
    while (True) do begin
      XNextEvent(display, @Event);
      case Event._type of
        Expose: begin
          if Event.xexpose.Count <> 0 then begin
            Continue;
          end;
          if window_size = TOO_SMALL then begin
            TooSmall(win, gc, font_info);
          end else begin
            place_text(win, gc, font_info, Width, Height);
            place_graphics(win, gc, Width, Height);
          end;
        end;
        ConfigureNotify: begin
          Width := Event.xconfigure.Width;
          Height := Event.xconfigure.Height;
          if (Width < size_hints^.min_width) or (Height < size_hints^.min_height) then begin
            window_size := TOO_SMALL;
          end else begin
            window_size := BIG_ENOUGH;
          end;
        end;
        ButtonPress: begin
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            XUnloadFont(display, font_info^.fid);
            XFreeGC(display, gc);
            XCloseDisplay(display);
            Break;
          end;
        end;
      end;
    end;
  end;

begin
  main;
end.
