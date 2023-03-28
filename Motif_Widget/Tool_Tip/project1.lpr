program project1;

uses
  xlib,
  x,
  XmText,
  XmPushB,
  XmXm,
  XmXmStrDefs,
  XTIntrinsic,
  XmToolTipT;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


// h2pas -p -T -d -c -e Intrinsic.h

// https://www.softintegration.com/chhtml/toolkit/demos/X11/motif/

  procedure main;
  var
    tooltipString: TXmString;
    toplevel: TWidget;
    app: TXtAppContext;
  begin
    tooltipString := XmStringCreateLocalized('Dies ist ein Tooltip');
    XtSetLanguageProc(nil, nil, nil);
    // Dies ist wichtig: XmNtoolTipEnable, True !
    toplevel := XtVaAppInitialize(@app, 'Hallo ToolTip', nil, 0, @argc, argv, nil, XmNtoolTipEnable, True, XmNtoolTipPostDelay, 1000, nil);

    XtVaCreateManagedWidget('Bewegen Sie den Cursor hierher, um den Tooltip der Schaltfläche nach 5 Sekunden Verzögerung anzuzeigen', xmPushButtonWidgetClass, toplevel, XmNtoolTipString, tooltipString, nil);
    XmStringFree(tooltipString);

    XtRealizeWidget(toplevel);

    XtAppMainLoop(app);
  end;

begin
  main;
end.
