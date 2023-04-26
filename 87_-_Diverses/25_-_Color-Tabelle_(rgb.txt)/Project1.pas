program Project1;

uses
  unixtype,
  ctypes,
  xlib,
  xutil,
  keysym,
  x;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;
  scr: cint;
  map: TColormap;
  i: integer;
  rgb, nearest_rgb: TXColor;
  gc: TGC;

  // https://gist.github.com/sladen/833d4d23d89aa12e9dc8

const
  EventMask = KeyPressMask or ExposureMask or PropertyChangeMask or StructureNotifyMask;
  fallback_colours: array of PChar = ('red', 'white', 'yellow', 'green', 'blue', 'pink', 'cyan');
  Width = 30;

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);

  win := XCreateSimpleWindow(dis, RootWindow(dis, scr), 10, 10, 320, 240, 1, BlackPixel(dis, scr), WhitePixel(dis, scr));
  XStoreName(dis, win, 'Farb Fenster');
  XSelectInput(dis, win, EventMask);
  XMapWindow(dis, win);

  map := XDefaultColormap(dis, scr);
  gc := XCreateGC(dis, win, 0, nil);

  for i := 0 to Length(fallback_colours) - 1 do begin
    XLookupColor(dis, map, fallback_colours[i], @rgb, @nearest_rgb);
    WriteLn('XLookupColor:');
    WriteLn(rgb.red: 6, ' ', rgb.green: 6, ' ', rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn(nearest_rgb.red: 6, ' ', nearest_rgb.green: 6, ' ', nearest_rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn();
    XAllocNamedColor(dis, map, fallback_colours[i], @rgb, @nearest_rgb);
    WriteLn('XAllocNamedColor:');
    WriteLn(rgb.red: 6, ' ', rgb.green: 6, ' ', rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn(nearest_rgb.red: 6, ' ', nearest_rgb.green: 6, ' ', nearest_rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn('-----------------------------------------------');
  end;

  while (True) do begin
    XNextEvent(dis, @Event);
    case Event._type of
      KeyPress: begin
        if XLookupKeysym(@Event.xkey, 0) = XK_Escape then begin
          Break;
        end;
      end;
      Expose: begin
        for i := 0 to Length(fallback_colours) - 1 do begin
          if XAllocNamedColor(dis, map, fallback_colours[i], @rgb, @nearest_rgb) = 0 then begin
            WriteLn('Can''t alloc ', fallback_colours[i]);
          end else begin
            XSetForeground(dis, gc, rgb.pixel);
            XFillRectangle(dis, win, gc, 10, i * Width + 10, 200, Width - 5);
            XSetForeground(dis, gc, not rgb.pixel);
            XDrawString(dis, win, gc, 20, i * Width + Width, fallback_colours[i], Length(fallback_colours[i]));
          end;
        end;
      end;
    end;
  end;
  XDestroyWindow(dis, win);
  XCloseDisplay(dis);
end.
