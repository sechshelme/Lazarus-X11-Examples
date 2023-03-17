unit awScrollBar;

interface

uses
  xlib,
  x,
  XTStringdefs,
  XTIntrinsic,
  XawScrollbar;

procedure CreateScrollBar(Parent:TWidget);

implementation

procedure OnScrolled(w: TWidget; p: TXtPointer; p2: TXtPointer); cdecl;
begin
  WriteLn(PtrUInt(p2));
end;

procedure OnJumped(w: TWidget; p: TXtPointer; p2: TXtPointer); cdecl;
begin
  WriteLn(PtrUInt(p2));
end;

procedure CreateScrollBar(Parent: TWidget);
var
  scrollbar: TWidget;
begin
  scrollbar := XtVaCreateManagedWidget('grip', scrollbarWidgetClass, Parent, XtNlabel, 'grip',XtNlength,50, XtNheight, 200, XtNwidth, 15, XtNforeground, $FFFF88, XtNbackground, $8888FF, nil);
  XtAddCallback(scrollbar, XtNjumpProc, @OnJumped, nil);
  XtAddCallback(scrollbar, XtNscrollProc, @OnScrolled, nil);
end;

end.

