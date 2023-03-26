unit MyMesssageDialog;

interface

uses
  XTIntrinsic,
  XTComposite,
  XTStringdefs,
  XmXm,
  XmXmStrDefs,
  XmText,
  XmContainer,
  XmPushB,
  XmMessageB;

procedure CreateMessageBox(Parent,toplevel: TWidget);

implementation

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


procedure CreateMessageBox(Parent, toplevel: TWidget);
var
  box, command, mb, dialog: TWidget;
  label1, msg: TXmString;
  args: array[0..0] of TArg;
begin
//  box := XmVaCreateManagedContainer(Parent, 'box', XtNwidth, 320, XtNheight, 320, nil);
  box:=Parent;

  label1 := XmStringCreateLocalized('Message Box');
  command := XmVaCreateManagedPushButton(box, 'Hello World !', XtNwidth, 100, XtNheight, 100, nil);
  XtAddCallback(command, XmNactivateCallback, @press_hello, nil);
  XtVaSetValues(command, XtNwidth, 300, XmNlabelString, label1, nil);
  XmStringFree(label1);

  label1 := XmStringCreateLocalized('Message Box');
  mb := XmVaCreateManagedMessageBox(box, 'box', XmNlabelString, label1, nil);
  XmStringFree(label1);

  msg := XmStringCreateLtoR('Ich bin die Meldung in der "Message Box" !', XmFONTLIST_DEFAULT_TAG);
  XtSetArg(args[0], XmNmessageString, msg);
//  XmStringFree(msg);
  dialog := XmCreateErrorDialog(toplevel, 'eb', @args, Length(args));
  XtManageChild(dialog);
  XtPopup(XtParent(dialog), XtGrabNone);
  XmStringFree(msg);

end;

end.
