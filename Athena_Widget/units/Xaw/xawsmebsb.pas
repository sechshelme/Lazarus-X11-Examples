unit XawSmeBSB;

interface

uses
  XTIntrinsic;

const
  libXaw = 'libXaw.so';

//{$include <X11/Xmu/Converters.h>}
//{$include <X11/Xaw/Sme.h>}
{ BSB Menu Entry Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback            Callback           Callback        NULL
 destroyCallback     Callback		Pointer		NULL
 font                Font               XFontStruct *   XtDefaultFont
 foreground          Foreground         Pixel           XtDefaultForeground
 height		     Height		Dimension	0
 label               Label              String          Name of entry
 leftBitmap          LeftBitmap         Pixmap          None
 leftMargin          HorizontalMargins  Dimension       4
 menuName	     MenuName		String		NULL
 rightBitmap         RightBitmap        Pixmap          None
 rightMargin         HorizontalMargins  Dimension       4
 sensitive	     Sensitive		Boolean		True
 vertSpace           VertSpace          int             25
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }
const
  XtNleftBitmap = 'leftBitmap';  
  XtNleftMargin = 'leftMargin';  
  XtNrightBitmap = 'rightBitmap';  
  XtNrightMargin = 'rightMargin';  
  XtNvertSpace = 'vertSpace';  
  XtNmenuName = 'menuName';  
  XtCMenuName = 'MenuName';  

const
  XtNfontSet = 'fontSet';  

const
  XtCFontSet = 'FontSet';  

const
  XtCLeftBitmap = 'LeftBitmap';  
  XtCHorizontalMargins = 'HorizontalMargins';  
  XtCRightBitmap = 'RightBitmap';  
  XtCVertSpace = 'VertSpace';  

var
  smeBSBObjectClass : TWidgetClass;cvar;external libXaw;

  //type
  //  PSmeBSBObjectClass = ^TSmeBSBObjectClass;
  //  TSmeBSBObjectClass = PSmeBSBClassRec;
  //
  //  PSmeBSBObject = ^TSmeBSBObject;
  //  TSmeBSBObject = PSmeBSBRec;

implementation

end.
