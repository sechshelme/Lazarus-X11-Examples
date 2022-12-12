
unit Tip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Tip.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Tip.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Tip.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawTip_h}
{$define _XawTip_h}  

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Simple.h>}


  type
    TipWidgetClass = ^_TipClassRec;

    TipWidget = ^_TipRec;

    var
      tipWidgetClass : WidgetClass;cvar;external;

  const
    XawTextEncoding8bit = 0;    
    XawTextEncodingChar2b = 1;    
    XtNencoding = 'encoding';    
    XtNtimeout = 'timeout';    
    XtNtip = 'tip';    
{$ifdef XAW_INTERNATIONALIZATION}
{$ifndef XtNfontSet}

  const
    XtNfontSet = 'fontSet';    
{$endif}
{$ifndef XtCFontSet}

  const
    XtCFontSet = 'FontSet';    
{$endif}
{$endif}

  const
    XtCEncoding = 'Encoding';    
    XtCTimeout = 'Timeout';    
    XtCTip = 'Tip';    
{$ifndef _XtStringDefs_h_}

  const
    XtNforeground = 'foreground';    
    XtNlabel = 'label';    
    XtNfont = 'font';    
    XtNinternalWidth = 'internalWidth';    
    XtNinternalHeight = 'internalHeight';    
{$endif}


{$if NeedFunctionPrototypes}
{$endif}

  procedure XawTipEnable(_para1:Widget; _para2:String);


{$if NeedFunctionPrototypes}
{$endif}

  procedure XawTipDisable(_para1:Widget);

{$endif}


implementation

  procedure XawTipEnable(_para1:Widget; _para2:String);
  begin
    { You must implement this function }
  end;
  procedure XawTipDisable(_para1:Widget);
  begin
    { You must implement this function }
  end;

end.
