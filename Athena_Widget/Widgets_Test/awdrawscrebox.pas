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

procedure EventTest(w: TWidget; p: TXtPointer; ev: PXEvent; b: PBoolean); cdecl;
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

procedure draw_event(w: TWidget; p: TXtPointer; Pev: PXEvent; b: PBoolean); cdecl;
var
  dis: PDisplay;
  win: TWindow;
  gc: TGC;
  exposeEv:TXExposeEvent;
begin
  exposeEv:=Pev^.xexpose;
  WriteLn(exposeEv.x);
  WriteLn(exposeEv.y);
  WriteLn(exposeEv.Width);
  WriteLn(exposeEv.Height);

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
  XtAddEventHandler(Parent, ExposureMask or ButtonPressMask or KeyPressMask or ButtonReleaseMask, False, @EventTest, nil);
end;

end.
