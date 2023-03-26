unit MyList;

interface

uses
  xlib,
  x,
  XTComposite,
  XmXm,
  XmPushB,
  XTIntrinsic,
  XTStringdefs,
  XmList,
  XmXmStrDefs;

procedure CreateList(Parent: TWidget);


implementation

procedure CreateList(Parent: TWidget);
var
  list1: TWidget;
  label1: TXmString;
  s: string;
  i: integer;
begin
  //  list1 := XmVaCreateManagedList(Parent, 'bb',XtNheight,200, XtNbackground, $FFFFFF, nil);

  list1 := XmCreateScrolledList(Parent, 'list', nil, 0);
  XtVaSetValues(list1, XtNheight, 200, XtNbackground, $FFFFFF, nil);

  for i := 0 to 15 do begin
    str(i, s);
    s := 'Eintrag: ' + s;

    label1 := XmStringCreateLocalized(PChar(s));
    XmListAddItem(list1, label1, 0);
    XmStringFree(label1);
  end;
  label1 := XmStringCreateLocalized('Position 3');
  XmListAddItem(list1, label1, 3);
  XmStringFree(label1);
//  XmListSetPos(list1,7);

  XtManageChild(list1);
end;

end.
