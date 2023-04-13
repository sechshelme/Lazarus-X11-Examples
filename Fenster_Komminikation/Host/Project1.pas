program Project1;

uses
  xlib,
  xutil,
  x;

var
  dis: PDisplay;
  win: TWindow;
  Event: TXEvent;

begin
  //hDisplay = XOpenDisplay(":0.0");
  //hDisplay = XOpenDisplay("somehost:0.0");
  //hDisplay = XOpenDisplay("192.168.1.10:0.0");
  //  dis := XOpenDisplay(nil);
    dis := XOpenDisplay(':0.0');
//  dis := XOpenDisplay('192.168.0.158:0');
//  dis := XOpenDisplay('192.168.0.200:0.0');
  if dis = nil then begin
    WriteLn('fehler');
    halt;
  end;
  win := XCreateSimpleWindow(dis, RootWindow(dis, DefaultScreen(dis)), 10, 10, 320, 240, 1, 0, $FF8888);
  XSelectInput(dis, win, KeyPressMask or ExposureMask);
  XMapWindow(dis, win);
  WriteLn('DisplayString :', XDisplayString(dis));
  WriteLn('Fenster Nummer: ', win);

  //  WriteLn('Display Nummer: ', PtrInt(dis));

  while (True) do begin
    XNextEvent(dis, @Event);
  end;
  XCloseDisplay(dis);
end.
