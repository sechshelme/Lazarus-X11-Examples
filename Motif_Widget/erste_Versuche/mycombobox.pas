unit MyComboBox;

interface

uses
  xlib,
  x,
  XTComposite,
  XmXm,
  XmPushB,
  XTIntrinsic,
  XTStringdefs,
  XmComboBox,
  XmXmStrDefs;

procedure CreateComboBox(Parent: TWidget);

implementation

procedure CreateComboBox(Parent: TWidget);
var
  s: string;
  cb: TWidget;
  label1: TXmString;
  i: integer;
begin
  cb := XmCreateComboBox(Parent, 'combobox', nil, 0);
  XtVaSetValues(cb, XtNwidth, 250, XtNheight, 250, XtNbackground, $00FF00, nil);
  XtManageChild(cb);

  for i := 0 to 16 do begin
    str(i, s);
    s := 'Item ' + s;
    label1 := XmStringCreateLocalized(PChar(s));
    XmComboBoxAddItem(cb, label1, 0, False);
    XmStringFree(label1);
  end;

  label1 := XmStringCreateLocalized('Item 2');
  XmComboBoxSetItem(cb, label1);
  XmStringFree(label1);

end;



end.
