program Project1;
uses
  xlib, xutil, x;
var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;

begin
  dis := XOpenDisplay(nil);
//  dis := XOpenDisplay('localhost:10.0');
  win := XCreateSimpleWindow(dis, RootWindow(dis, DefaultScreen(dis)), 10, 10, 320, 240, 1, 0, $FF8888);
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XMapWindow(dis, win);
  WriteLn('DisplayString :',XDisplayString(dis));
  WriteLn('Fenster Nummer: ', win);

//  WriteLn('Display Nummer: ', PtrInt(dis));

  while (True) do begin
    XNextEvent(dis, @Event);
  end;
  XCloseDisplay(dis);
end.
