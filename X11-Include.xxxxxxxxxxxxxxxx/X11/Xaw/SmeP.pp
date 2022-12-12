
unit SmeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/SmeP.pp
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
    PSmeClassRec  = ^SmeClassRec;
    PSmePart  = ^SmePart;
    PSmeRec  = ^SmeRec;
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
        unhighlight : TXtWidgetProc;cvar;public;
        notify : TXtWidgetProc;cvar;public;
        extension : TXtPointer;cvar;public;
(* error 
} SmeClassPart;
in declaration at line 55 *)

    type
      PSmeClassRec = ^TSmeClassRec;
      TSmeClassRec = record
          rect_class : TRectObjClassPart;
          sme_class : TSmeClassPart;
        end;
      var
        smeClassRec : TSmeClassRec;cvar;external;


{$ifndef OLDXAW}

{$endif}
    type
      PSmePart = ^TSmePart;
      TSmePart = record
          callbacks : TXtCallbackList;
          international : TBoolean;
          pad : array[0..3] of TXtPointer;
        end;


      PSmeRec = ^TSmeRec;
      TSmeRec = record
          object : TObjectPart;
          rectangle : TRectObjPart;
          sme : TSmePart;
        end;

    function XtInheritHighlight : TXtWidgetProc;      

    const
      XtInheritUnhighlight = XtInheritHighlight;      
      XtInheritNotify = XtInheritHighlight;      
{$endif}

(* error 
#endif /* _XawSmeP_h */

implementation

    function XtInheritHighlight : TXtWidgetProc;
      begin
        XtInheritHighlight:=TXtWidgetProc(_XtInherit);
      end;


end.
