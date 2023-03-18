unit awAscii;

interface

uses
  Classes,
  XTStringdefs,
  XTIntrinsic,
  XawLabel,
  XawAsciiText,
  XawText;

procedure CreateAsciiText(Parent: TWidget);

implementation

procedure CreateAsciiText(Parent: TWidget);
var
  ascii: TWidget;
  sl: TStringList;

begin
  sl := TStringList.Create;
  sl.LoadFromFile('project1.lpr');

  ascii := XtVaCreateManagedWidget('Listen Box', asciiTextWidgetClass, Parent, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, XtNwidth, 500, XtNheight, 300, XtNstring, PChar(sl.Text), nil);
  XtVaSetValues(ascii, XtNscrollHorizontal, XawtextScrollAlways, XtNscrollVertical, XawtextScrollAlways, nil);

  sl.Free;
end;

end.
