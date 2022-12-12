program Project1;

function xXtCreateManagedWidget(_XtString:PChar; _para2:Pointer; _para3:Pointer; _para4:Pointer; _para5:Cardinal):Pointer;cdecl external 'X11';


//uses
// xlib, x,Box,Command;

begin
  xXtCreateManagedWidget('1234',nil,nil,nil,1);
end.

