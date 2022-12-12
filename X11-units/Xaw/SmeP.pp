
unit SmeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SmeP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SmeP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SmeP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawSmeP_h}
{$define _XawSmeP_h}  

{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/Sme.h>}

(* error 
typedef struct _SmeClassPart {
in declaration at line 51 *)

      var
        unhighlight : XtWidgetProc;cvar;public;
        notify : XtWidgetProc;cvar;public;
        extension : XtPointer;cvar;public;
(* error 
} SmeClassPart;
in declaration at line 55 *)


    type
      _SmeClassRec = record
          rect_class : RectObjClassPart;
          sme_class : SmeClassPart;
        end;
      SmeClassRec = _SmeClassRec;

      var
        smeClassRec : SmeClassRec;cvar;external;


{$ifndef OLDXAW}

{$endif}

    type
      SmePart = record
          callbacks : XtCallbackList;
          international : Boolean;
          pad : array[0..3] of XtPointer;
        end;


      _SmeRec = record
          object : ObjectPart;
          rectangle : RectObjPart;
          sme : SmePart;
        end;
      SmeRec = _SmeRec;

    function XtInheritHighlight : XtWidgetProc;      

    const
      XtInheritUnhighlight = XtInheritHighlight;      
      XtInheritNotify = XtInheritHighlight;      
{$endif}

(* error 
#endif /* _XawSmeP_h */

implementation

    function XtInheritHighlight : XtWidgetProc;
      begin
        XtInheritHighlight:=XtWidgetProc(_XtInherit);
      end;


end.
