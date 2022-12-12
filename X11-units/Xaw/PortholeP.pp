
unit PortholeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/PortholeP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/PortholeP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/PortholeP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawPortholeP_h}
{$define _XawPortholeP_h}  
{$include <X11/Xaw/Porthole.h>}


  type
    PortholeClassPart = record
        extension : XtPointer;
      end;


    _PortholeClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        porthole_class : PortholeClassPart;
      end;
    PortholeClassRec = _PortholeClassRec;



{$ifndef OLDXAW}

{$endif}

  type
    PortholePart = record
        report_callbacks : XtCallbackList;
        pad : array[0..3] of XtPointer;
      end;

    _PortholeRec = record
        core : CorePart;
        composite : CompositePart;
        porthole : PortholePart;
      end;
    PortholeRec = _PortholeRec;

    var
      portholeClassRec : PortholeClassRec;cvar;external;
{$endif}


implementation


end.
