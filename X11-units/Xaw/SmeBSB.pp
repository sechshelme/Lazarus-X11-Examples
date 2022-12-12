
unit SmeBSB;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SmeBSB.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SmeBSB.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SmeBSB.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SmeBSB_h}
{$define _SmeBSB_h}  
{$include <X11/Xmu/Converters.h>}
{$include <X11/Xaw/Sme.h>}


  type
    SmeBSBObjectClass = ^_SmeBSBClassRec;

    SmeBSBObject = ^_SmeBSBRec;

    var
      smeBSBObjectClass : WidgetClass;cvar;external;

  const
    XtNleftBitmap = 'leftBitmap';    
    XtNleftMargin = 'leftMargin';    
    XtNrightBitmap = 'rightBitmap';    
    XtNrightMargin = 'rightMargin';    
    XtNvertSpace = 'vertSpace';    
    XtNmenuName = 'menuName';    
    XtCMenuName = 'MenuName';    
{$ifndef XtNfontSet}

  const
    XtNfontSet = 'fontSet';    
{$endif}
{$ifndef XtCFontSet}

  const
    XtCFontSet = 'FontSet';    
{$endif}

  const
    XtCLeftBitmap = 'LeftBitmap';    
    XtCHorizontalMargins = 'HorizontalMargins';    
    XtCRightBitmap = 'RightBitmap';    
    XtCVertSpace = 'VertSpace';    
{$endif}


implementation


end.
