unit awViewport;

interface

uses
  XTStringdefs,
  XTIntrinsic,
  XawLabel,
  XawForm,
  XawCommand,
  XawViewport;

procedure CreateViewport(parent: TWidget);

// https://cpp.hotexamples.com/de/examples/-/-/XtDisplay/cpp-xtdisplay-function-examples.html

implementation

procedure CreateViewport(parent: TWidget);
var
  viewPort, command, form: TWidget;
begin
  form:= XtVaCreateManagedWidget('Ein Knopf', formWidgetClass, parent, XtNwidth, 500, XtNheight,500, nil);


  viewPort := XtVaCreateManagedWidget('ViewPort', viewportWidgetClass, form, XtNwidth, 200, XtNheight, 200,
  XtNinternalWidth, 300, XtNallowHoriz, True, XtNallowVert, True, XtNforceBars, True,XtNvertDistance,20, nil);


  command := XtVaCreateManagedWidget('ViewPort Knopf 1', commandWidgetClass, viewPort, XtNwidth, 150, nil);
  command := XtVaCreateManagedWidget('ViewPort Knopf 2 ', commandWidgetClass, viewPort, XtNwidth, 270, XtNheight, 50, nil);
end;

end.
