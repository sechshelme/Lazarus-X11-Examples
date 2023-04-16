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

  // https://gist.github.com/sladen/833d4d23d89aa12e9dc8

const
  fallback_colours: array of PChar = ('red', 'white', 'blue', 'pink', 'cyan');

begin
  dis := XOpenDisplay(nil);
  if dis = nil then begin
    WriteLn('Kann nicht das Display öffnen');
    Halt(1);
  end;
  scr := DefaultScreen(dis);
  map := XDefaultColormap(dis, scr);

  for i := 0 to Length(fallback_colours) - 1 do begin
    XLookupColor(dis, map, fallback_colours[i], @rgb, @nearest_rgb);
    WriteLn(rgb.red: 6, ' ', rgb.green: 6, ' ', rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn(nearest_rgb.red: 6, ' ', nearest_rgb.green: 6, ' ', nearest_rgb.blue: 6, ' ', fallback_colours[i]);
    WriteLn();
  end;

  XCloseDisplay(dis);
end.
