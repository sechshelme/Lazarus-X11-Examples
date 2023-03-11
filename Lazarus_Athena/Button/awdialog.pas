unit awDialog;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XawDialog;

procedure CreateDialog(Parent: TWidget);

implementation

procedure DialogClick(w: TWidget; p: TXtPointer; p2: TXtPointer); cdecl;
var
  pc: PChar;
  pw: TWidget;
begin
  pw := XtParent(w);
  WriteLn(PtrUInt(w));
  WriteLn(PtrUInt(pw));
  Getmem(pc, 30);
  //  XawDialogGetValueString(pw);
  //  WriteLn(pc);
  XtDestroyWidget(pw);
end;


procedure CreateDialog(Parent: TWidget);
var
  dialog: TWidget;
begin
  dialog := XtVaCreateManagedWidget('dnnnrawing', dialogWidgetClass, Parent, XtNlabel, 'Äenderung im Projekt speichern ?', XtNbackground, $8888FF, nil);
  XawDialogAddButton(dialog, 'Yes', @DialogClick, Pointer(0));
  XawDialogAddButton(dialog, 'No', @DialogClick, Pointer(1));
  XawDialogAddButton(dialog, 'Help', @DialogClick, Pointer(2));
  XawDialogAddButton(dialog, 'Chancel', @DialogClick, Pointer(3));
  WriteLn(PtrUInt(dialog));
  //    WriteLn(PtrUInt(XtParent( dialog)));
end;

end.
