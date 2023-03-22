unit MyButtons;

interface

uses
  xlib,
  x,
  XmPushB,
  XawCommand,
  XTIntrinsic,
  XTStringdefs,
  XmXmStrDefs,
  XawBox;

procedure CreateButtons(Parent:TWidget);

implementation

//procedure On_Click(w: TWidget; client: TXtPointer; call: TXtPointer); cdecl;
//var
//  Caption: PChar;
//  s: string;
//begin
//  XtVaGetValues(w, XtNlabel, @Caption, nil);
//  s := 'Es wurde der Button: "' + Caption + '" gedrueckt';
//  WriteLn(s);
//  XtVaSetValues(label1, XtNlabel, PChar(s));
//end;
//
procedure press_hello(w:TWidget;p:TXtPointer;p2:TXtPointer); cdecl;
var
  Caption:PChar;
begin
  XtVaGetValues(w, XmNlabelString, @Caption,nil);
  WriteLn(Caption);
  WriteLn('Hello World');
end;

procedure CreateButtons(Parent: TWidget);
var
  command: TWidget;
begin

  command:=XtCreateManagedWidget('Ich bin ein ganz grosser'#10'Button', xmPushButtonWidgetClass, Parent,nil,0);
  command:=XtCreateManagedWidget('Ich bin ein ganz grosser'#10'zweiter Button', xmPushButtonWidgetClass, Parent,nil,0);
  XtAddCallback(command,  XmNactivateCallback,@press_hello,nil);

  command:=XmVaCreateManagedPushButton(Parent, 'Hello World !',XtNwidth,100,XtNheight,100,nil);
  XtVaSetValues(command,XtNwidth,300,XmNlabelString,'ha ha', nil);

  command:=XtCreateManagedWidget('Ich bin ein ganz grosser'#10'zweiter Button', xmPushButtonWidgetClass, Parent,nil,0);

end;

end.

