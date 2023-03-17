unit awList;

interface

uses
  xlib,
  x,
  XTStringdefs,
  XTIntrinsic,
  XawBox,
  XawCommand,
  XawLabel,
  XawList;

procedure CreateList(Parent:TWidget);

implementation

var
   LabelListBox: TWidget;


procedure ListSet3(w: TWidget; list: TWidget; p2: Pointer); cdecl;
begin
  XawListHighlight(list, 3);
end;

procedure ListClearHiglight(w: TWidget; list: TWidget; p2: Pointer); cdecl;
begin
  XawListUnhighlight(list);
end;

procedure ListShowSelect(w: TWidget; list: TWidget; p2: Pointer); cdecl;
var
  sl: PXawListReturnStruct;
begin
  sl := XawListShowCurrent(list);

  XtVaSetValues(LabelListBox, XtNlabel, sl^._string, nil);

  WriteLn('String: ', sl^._string);
  WriteLn('Iterm:  ', sl^.list_index);
  XFree(sl);
end;

procedure CreateList(Parent: TWidget);
const
  ListData: array of PChar = (
    'abcabcabcabc', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'Ich bin ein sehr langer Text',
    'abc', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'def', 'ghi', 'jkl', 'Ich bin ein sehr langer Text');
var
  BoxList, list, BtnListSet3, BtnListCleraHiglight,
    BtnListShowSelect: TWidget;
begin
  BoxList := XtVaCreateManagedWidget('Listen Box', boxWidgetClass, Parent, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, XtNwidth, 500, XtNheight, 300, nil);

  list := XtVaCreateManagedWidget('Liste', listWidgetClass, BoxList, XtNborderColor, $FF0000, XtNforeground, $FF88FF, XtNbackground, $88FF88, XtNwidth, 1, XtNinternalWidth, 200, XtNdefaultColumns, 5, XtNverticalList, True, nil);
  XawListChange(list, @ListData[0], Length(ListData), 50, True);

  LabelListBox := XtVaCreateManagedWidget('Label für ein Titel', labelWidgetClass, BoxList, XtNborderWidth, 0, nil);

  BtnListSet3 := XtCreateManagedWidget('List Set 3', commandWidgetClass, BoxList, nil, 0);
  XtAddCallback(BtnListSet3, XtNcallback, @ListSet3, list);

  BtnListCleraHiglight := XtCreateManagedWidget('List Clear Higlight', commandWidgetClass, BoxList, nil, 0);
  XtAddCallback(BtnListCleraHiglight, XtNcallback, @ListClearHiglight, list);

  BtnListShowSelect := XtCreateManagedWidget('List Show Select', commandWidgetClass, BoxList, nil, 0);
  XtAddCallback(BtnListShowSelect, XtNcallback, @ListShowSelect, list);
end;

end.

