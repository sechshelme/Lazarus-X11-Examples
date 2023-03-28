unit MyButtons;

interface

uses
  xlib,
  x,
  XmXm,
  XmPushB,
  XTIntrinsic,
  XTStringdefs,
  XmXmStrDefs;

procedure CreateButtons(Parent: TWidget);

implementation


// http://euklid.mi.uni-koeln.de/c/mirror/www.cs.curtin.edu.au/units/cg351-551/notes/lect1ha1.html
procedure press_hello(w: TWidget; p: TXtPointer; p2: TXtPointer); cdecl;
var
  ls: TXmString;
  pc: PChar;
begin
  XtVaGetValues(w, XmNlabelString, @ls, nil);
//  XmStringGetLtoR(ls, XmFONTLIST_DEFAULT_TAG, @pc);
  XmStringGetLtoR(ls, XmSTRING_DEFAULT_CHARSET, @pc);
  WriteLn('Button: "', pc, '" wurde gedrückt');
end;

procedure CreateButtons(Parent: TWidget);
var
  command: TWidget;
  label1, ToolTipLabel1: TXmString;
begin

  command := XtCreateManagedWidget('Ich bin ein ganz grosser'#10'Button', xmPushButtonWidgetClass, Parent, nil, 0);
  XtAddCallback(command, XmNactivateCallback, @press_hello, nil);
  command := XtCreateManagedWidget('Ich bin ein ganz grosser'#10'zweiter Button', xmPushButtonWidgetClass, Parent, nil, 0);
  XtAddCallback(command, XmNactivateCallback, @press_hello, nil);

  label1 := XmStringCreateLocalized('Ha ha ha');
  command := XmVaCreateManagedPushButton(Parent, 'Hello World !', XtNwidth, 100, XtNheight, 100, nil);
  XtAddCallback(command, XmNactivateCallback, @press_hello, nil);
  XtVaSetValues(command, XtNwidth, 300, XmNlabelString, label1, nil);
  XmStringFree(label1);

  ToolTipLabel1 := XmStringCreateLocalized('Ha ha ha');
  command := XtVaCreateManagedWidget('Ich bin ein 3. Button', xmPushButtonWidgetClass, Parent,XmNtoolTipString, ToolTipLabel1, nil);
  XtAddCallback(command, XmNactivateCallback, @press_hello, nil);
  XmStringFree(ToolTipLabel1);

end;

end.
