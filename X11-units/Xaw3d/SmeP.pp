
unit SmeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SmeP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SmeP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SmeP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeP_h}
{$define _XawSmeP_h}  

{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Sme.h>}


  type
    _SmeClassPart = record
        highlight : procedure ;cdecl;
        unhighlight : procedure ;cdecl;
        notify : procedure ;cdecl;
        extension : XtPointer;
      end;
    SmeClassPart = _SmeClassPart;


    _SmeClassRec = record
        rect_class : RectObjClassPart;
        sme_class : SmeClassPart;
      end;
    SmeClassRec = _SmeClassRec;

    var
      smeClassRec : SmeClassRec;cvar;external;



{$ifdef XAW_INTERNATIONALIZATION}
{$endif}

  type
    SmePart = record
        callbacks : XtCallbackList;
        international : Boolean;
      end;


    _SmeRec = record
        object : ObjectPart;
        rectangle : RectObjPart;
        sme : SmePart;
      end;
    SmeRec = _SmeRec;


    _XawEntryVoidFunc = procedure ;cdecl;

  function XtInheritHighlight : _XawEntryVoidFunc;    

  const
    XtInheritUnhighlight = XtInheritHighlight;    
    XtInheritNotify = XtInheritHighlight;    
{$endif}


implementation

  function XtInheritHighlight : _XawEntryVoidFunc;
    begin
      XtInheritHighlight:=_XawEntryVoidFunc(_XtInherit);
    end;


end.
