unit awPrintWidgets;

interface

uses
  XmuWidgetNode,
  XawAllWidgets;

procedure PrintWidgets;

implementation

procedure PrintWidgets;
// XawWidgetArray : PXmuWidgetNode;
var
  p: PXmuWidgetNode;
  i: integer;
begin
  WriteLn('Widget Count: ', XawWidgetCount);

  p := XawWidgetArray;
  WriteLn(PtrUInt(p));

  for i := 0 to XawWidgetCount - 1 do begin
    //    WriteLn(PtrUInt(p^.lowered_classname));
    //    WriteLn(p^.have_resources);
  end;
  Inc(p);

end;

end.
