
unit Tip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Tip.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Tip.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Tip.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTip_h}
{$define _XawTip_h}  

{$include <X11/Xaw/Simple.h>}


  type
    TipWidgetClass = ^_TipClassRec;

    TipWidget = ^_TipRec;

    var
      tipWidgetClass : WidgetClass;cvar;external;

  const
    XtNbottomMargin = 'bottomMargin';    
    XawNdisplayList = 'displayList';    
    XtNencoding = 'encoding';    
    XtNleftMargin = 'leftMargin';    
    XtNrightMargin = 'rightMargin';    
    XtNtimeout = 'timeout';    
    XtNtopMargin = 'topMargin';    
    XtNtip = 'tip';    
    XawCDisplayList = 'DisplayList';    
    XtCHorizontalMargins = 'HorizontalMargins';    
    XtCTimeout = 'Timeout';    
    XtCVerticalMargins = 'VerticalMargins';    
    XtCTip = 'Tip';    
    XawRDisplayList = 'XawDisplayList';    



  procedure XawTipEnable(w:Widget);


  procedure XawTipDisable(w:Widget);

{$endif}


implementation

  procedure XawTipEnable(w:Widget);
  begin
    { You must implement this function }
  end;
  procedure XawTipDisable(w:Widget);
  begin
    { You must implement this function }
  end;

end.
