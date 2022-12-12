
unit SmeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/SmeP.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PSmeClassPart  = ^SmeClassPart;
PSmeClassRec  = ^SmeClassRec;
PSmePart  = ^SmePart;
PSmeRec  = ^SmeRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeP_h}
{$define _XawSmeP_h}

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Sme.h>}

type
  PSmeClassPart = ^TSmeClassPart;
  TSmeClassPart = record
      highlight : procedure ;cdecl;
      unhighlight : procedure ;cdecl;
      notify : procedure ;cdecl;
      extension : TXtPointer;
    end;


  PSmeClassRec = ^TSmeClassRec;
  TSmeClassRec = record
      rect_class : TRectObjClassPart;
      sme_class : TSmeClassPart;
    end;
  var
    smeClassRec : TSmeClassRec;cvar;external;



{$ifdef XAW_INTERNATIONALIZATION}
{$endif}
type
  PSmePart = ^TSmePart;
  TSmePart = record
      callbacks : TXtCallbackList;
      international : TBoolean;
    end;


  PSmeRec = ^TSmeRec;
  TSmeRec = record
      object : TObjectPart;
      rectangle : TRectObjPart;
      sme : TSmePart;
    end;


  TXawEntryVoidFunc = procedure ;cdecl;

function XtInheritHighlight : TXawEntryVoidFunc;  

const
  XtInheritUnhighlight = XtInheritHighlight;  
  XtInheritNotify = XtInheritHighlight;  
{$endif}


implementation

function XtInheritHighlight : TXawEntryVoidFunc;
  begin
    XtInheritHighlight:=TXawEntryVoidFunc(_XtInherit);
  end;


end.
