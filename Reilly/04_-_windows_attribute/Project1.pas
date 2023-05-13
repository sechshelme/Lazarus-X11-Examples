program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x,
  libc;

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
    screen_num, x, y: cint;
    display_width, display_heigth,
    Width, Height, border_width, depth: cuint;
    screen_ptr: PScreen;
    win, root, root_win: TWindow;
    windowattr: TXWindowAttributes;
    setwinattr: TXSetWindowAttributes;
    icon_pixmap: TPixmap;
    size_hints: PXSizeHints;
    wm_hints: PXWMHints;
    class_hints: PXClassHint;
    Event: TXEvent;
    window_size: cint = 0;
    windowName, iconname: TXTextProperty;
    font_info:TXFontStruct;
    gc:TGC;

    class1: cuint=0;
    visual: PVisual=nil;
    valuemask: culong=0;

  begin
    fprintf(stdout, 'Hello World %d'#10, 1234);
    fflush(stdout);

    progname := argv[0];
    display := XOpenDisplay(display_name);
    if display = nil then begin
      fprintf(stderr, '%s: connat connect to X server %s'#10, progname, XDisplayName(display_name));
      Halt(-1);
    end;

    screen_num := DefaultScreen(display);
    screen_ptr := DefaultScreenOfDisplay(display);

    root_win:=RootWindow(display, screen_num);

    if XGetWindowAttributes(display, root_win, @windowattr) = 0 then begin
      fprintf(stderr, '%s: failed to get window attributes.'#10, progname);
      Halt(-1);
    end;

    display_width := windowattr.Width;
    display_heigth := windowattr.Height;
    printf('DisplayWidth: %d'#10, display_width);
    printf('DisplayHeight: %d'#10, display_heigth);

    x := 0;
    y := 0;
    border_width := 4;
    Width := display_width div 3;
    Height := display_heigth div 4;
    depth:=DefaultDepth(display,screen_num);



    valuemask:=CWBackPixel or CWBorderPixel;
    setwinattr.background_pixel:=WhitePixel(display,screen_num);
    setwinattr.border_pixel:=BlackPixel(display,screen_num);
//    setwinattr.border_pixmap:=icon_pixmap;


    win:=XCreateWindow(display,root_win,x,y,Width,Height, border_width,depth,class1, visual,valuemask, @setwinattr);
    icon_pixmap := XCreateBitmapFromData(display, win, PChar(icon_bitmap_bits), icon_bitmap_width, icon_bitmap_height);

    XSetWindowBorderPixmap(display,win,icon_pixmap);

//    win := XCreateSimpleWindow(display, RootWindow(display, screen_num), x, y, Width, Height, border_width, BlackPixel(display, screen_num), WhitePixel(display, screen_num));



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

    size_hints^.flags := PPosition or PSize or PMinSize;
    size_hints^.min_width := 300;
    size_hints^.min_height := 200;

    size_hints^.Width := 200;
    size_hints^.Height := 200;

    if XStringListToTextProperty(@window_name, 1, @windowname) = 0 then begin
      fprintf(stderr, '%s: structure allocation for iconName failed.'#10, progname);
      Halt(0);
    end;

    if XStringListToTextProperty(@icon_name, 1, @iconname) = 0 then begin
      fprintf(stderr, '%s: structure allocation for iconName failed.'#10, progname);
      Halt(0);
    end;


    wm_hints^.initial_state := NormalState;
    wm_hints^.input := 1;
    wm_hints^.icon_pixmap := icon_pixmap;
    wm_hints^.flags := StateHint or IconPixmapHint or InputHint;

    class_hints^.res_name := progname;
    class_hints^.res_class := 'Basicwin';

    XSetWMProperties(display, win, @windowname, @iconname, argv, argc, size_hints, wm_hints, class_hints);


    XSelectInput(display, win, KeyPressMask or ExposureMask or ButtonPressMask or SubstructureNotifyMask);
    XMapWindow(display, win);
    while (True) do begin
      XNextEvent(display, @Event);
      case Event._type of
        Expose: begin
//          if Event.xexpose.Count <> 0 then begin
//            Break;
//          end;
          if window_size = TOO_SMALL then begin
//            TooSmall(win, gc, font_info);
          end;
        end;
        KeyPress: begin
          // Beendet das Programm bei [ESC]
          if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
            Break;
          end;
        end;
      end;
    end;
  end;

begin
  main;
end.
