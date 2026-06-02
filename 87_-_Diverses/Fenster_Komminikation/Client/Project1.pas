program Project1;
uses
  xlib, x;
var
  dis: Pointer;
  scr: LongInt;
  gc: TGC;
//  win:QWord=2097153;
  win:QWord=2621441;
begin
//  dis := XOpenDisplay(nil);
    dis := XOpenDisplay('localhost:10.0');
//  dis:=pointer( 9872032);
  WriteLn(int64(dis ));
//  exit;

//  dis:=9872032;
  scr := DefaultScreen(dis);
  gc:=XCreateGC(dis, win,0,nil);
  repeat
    XSetForeground(dis, gc, random($FFFFFF));
    XFillRectangle(dis, win, gc, 20, 20, 100, 100);
  until False;
end.
