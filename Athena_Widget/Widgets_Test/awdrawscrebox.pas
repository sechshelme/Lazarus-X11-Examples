unit awDrawScreBox;

interface

uses
  xlib,
  x,
  XTStringdefs,
  XTIntrinsic,
  XTCore,
  XawDialog;

procedure CreateCoreBoxDraw(Parent: TWidget);

implementation

procedure EventTest(w: TWidget; p: Pointer; ev: PXEvent; b: Pointer); cdecl;
var
  dis: PDisplay;
  win: TWindow;
  gc: TGC;
begin
  WriteLn('event');
  case
    ev^._type of
    Expose: begin
      WriteLn('Expose');
      dis := XtDisplay(w);
      win := XtWindow(w);
      gc := XCreateGC(dis, win, 0, nil);
      XSetForeground(dis, gc, $0);
      XDrawLine(dis, win, gc, 10, 10, 100, 100);
      XFree(gc);
    end;
    KeyPress: begin
      WriteLn('Keypress');
    end;
    ButtonPress: begin
      WriteLn('ButtonPress');
    end;
    ButtonRelease: begin
      WriteLn('ButtonRelease');
    end;
  end;
end;

procedure draw_event(w: TWidget; p: Pointer; p2: PXExposeEvent; b: PXEvent); cdecl;
var
  dis: PDisplay;
  win: TWindow;
  gc: TGC;
begin
  WriteLn(p2^.x);
  WriteLn(p2^.y);
  WriteLn(p2^.Width);
  WriteLn(p2^.Height);

  dis := XtDisplay(w);
  win := XtWindow(w);
  gc := XCreateGC(dis, win, 0, nil);
  XSetForeground(dis, gc, $0);
  XDrawLine(dis, win, gc, 100, 10, 10, 100);
  XFree(gc);
end;

procedure CreateCoreBoxDraw(Parent: TWidget);
var
  drawing: TWidget;
begin
  drawing := XtVaCreateManagedWidget('drawing', coreWidgetClass, Parent, XtNheight, 300, XtNwidth, 300, XtNbackground, $FF8888, nil);
  XtAddEventHandler(drawing, ExposureMask, False, @draw_event, nil);
//  XtAddEventHandler(drawing, ButtonPressMask or KeyPressMask, False, @press_Hello, nil);
  XtAddEventHandler(Parent, ExposureMask or ButtonPressMask or KeyPressMask or ButtonReleaseMask, False, @EventTest, nil);
end;

end.
