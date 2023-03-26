unit MyMenuBox;

interface

uses
  XTIntrinsic,
  XTComposite,
  XTStringdefs,
  XmXm,
  XmXmStrDefs,
  XmText,
  XmContainer,
  XmMainW,
  XmPushB,
  XmMessageB;

procedure CreateMenuBox(Parent: TWidget);

implementation

procedure Close(w: TWidget; client, call: TXtPointer);
begin
  halt;
end;

procedure CreateMenuBox(Parent: TWidget);
var
  main_w, menubar, menu, text_w: TWidget;
  file1, quit1, help1, edit1: TXmString;
begin
  main_w := XtVaCreateManagedWidget('main_w', xmMainWindowWidgetClass, Parent, XmNcommandWindowLocation, XmCOMMAND_BELOW_WORKSPACE, XtNbackground, $FFFF, nil);

  file1 := XmStringCreateLocalized('Datei');
  edit1 := XmStringCreateLocalized('Bearbeiten');
  help1 := XmStringCreateLocalized('Hilfe');
  menubar := XmVaCreateSimpleMenuBar(main_w, 'menubar', XmVaCASCADEBUTTON, help1, 'H', XmVaCASCADEBUTTON, edit1, 'B', XmVaCASCADEBUTTON, file1, 'D', nil);
  XmStringFree(file1);
  XmStringFree(edit1);
  XmStringFree(help1);


  quit1 := XmStringCreateLocalized('Beenden');
  menu := XmVaCreateSimpleMenuBar(menubar, 'file_menu', 0, @Close, XmVaPUSHBUTTON, quit1, 'B', nil, nil, nil);
  XmStringFree(quit1);
  XtManageChild(menubar);

  text_w := XmCreateScrolledText(main_w, 'text_w', nil, 0);
  XtVaSetValues(text_w, XmNrows, 24, XmNcolumns, 80, XmNeditable, True, XmNbackground, $FFFFFF, XmNeditMode, XmMULTI_LINE_EDIT);
  XtManageChild(text_w);

  XtVaSetValues(menu, XmNuserData, text_w, nil);

end;

end.
