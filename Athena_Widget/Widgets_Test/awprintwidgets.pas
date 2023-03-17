unit awPrintWidgets;

interface

uses
  XmuWidgetNode,
  XawAllWidgets;

procedure PrintWidgets;

implementation

const
  libXt = 'libXt.so';

var
  XtShellStrings : Pchar;cvar;external libXt;


procedure PrintWidgets;
// XawWidgetArray : PXmuWidgetNode;
var
  p: PXmuWidgetNode;
  i: integer;
begin
//  WriteLn(XtShellStrings[0]);
  WriteLn(pchar(@XtShellStrings)+18);

//  WriteLn(TString(@(XtShellStrings[0])));

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
