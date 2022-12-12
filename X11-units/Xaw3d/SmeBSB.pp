
unit SmeBSB;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeBSB.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeBSB.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeBSB.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _SmeBSB_h}
{$define _SmeBSB_h}  
{$include <X11/Xmu/Converters.h>}
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Sme.h>}



  type
    SmeBSBObjectClass = ^_SmeBSBClassRec;

    SmeBSBObject = ^_SmeBSBRec;

    var
      smeBSBObjectClass : WidgetClass;cvar;external;

  const
    XtNleftBitmap = 'leftBitmap';    
    XtNleftMargin = 'leftMargin';    
    XtNleftWhitespace = 'leftWhitespace';    
    XtNrightBitmap = 'rightBitmap';    
    XtNrightMargin = 'rightMargin';    
    XtNrightWhitespace = 'rightWhitespace';    
    XtNvertSpace = 'vertSpace';    
    XtNmenuName = 'menuName';    
    XtNunderline = 'underline';    
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
    XtCLeftBitmap = 'LeftBitmap';    
    XtCRightBitmap = 'RightBitmap';    
    XtCHorizontalMargins = 'HorizontalMargins';    
    XtCVertSpace = 'VertSpace';    
    XtCMenuName = 'MenuName';    
    XtCUnderline = 'Underline';    
{$endif}


implementation


end.
