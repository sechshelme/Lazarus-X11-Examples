
unit Label;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Label.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Label.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Label.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawLabel_h}
{$define _XawLabel_h}  

{$include <X11/Xaw/Simple.h>}


  const
    XawTextEncoding8bit = 0;    
    XawTextEncodingChar2b = 1;    
    XtNleftBitmap = 'leftBitmap';    
    XtCLeftBitmap = 'LeftBitmap';    
    XtNencoding = 'encoding';    
    XtCEncoding = 'Encoding';    
{$ifndef XtNfontSet}

  const
    XtNfontSet = 'fontSet';    
{$endif}
{$ifndef XtCFontSet}

  const
    XtCFontSet = 'FontSet';    
{$endif}
{$ifndef _XtStringDefs_h_}

  const
    XtNbitmap = 'bitmap';    
    XtNforeground = 'foreground';    
    XtNlabel = 'label';    
    XtNfont = 'font';    
    XtNinternalWidth = 'internalWidth';    
    XtNinternalHeight = 'internalHeight';    
    XtNresize = 'resize';    
    XtCResize = 'Resize';    
    XtCBitmap = 'Bitmap';    
{$endif}
{$ifndef XtNlabelX}

  const
    XtNlabelX = 'labelX';    
{$endif}
{$ifndef XtNlabelY}

  const
    XtNlabelY = 'labelY';    
{$endif}


    var
      labelWidgetClass : WidgetClass;cvar;external;

  type
    LabelWidgetClass = ^_LabelClassRec;

    LabelWidget = ^_LabelRec;
{$endif}


implementation


end.
