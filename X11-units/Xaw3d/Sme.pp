
unit Sme;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Sme.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Sme.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Sme.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Sme_h}
{$define _Sme_h}  
{$include "Xaw3dP.h"}
{$include <X11/RectObj.h>}


{$ifdef XAW_INTERNATIONALIZATION}
{$ifndef XtCInternational}

  const
    XtCInternational = 'International';    
{$endif}
{$ifndef XtNinternational}

  const
    XtNinternational = 'international';    
{$endif}
{$endif}

  type
    SmeObjectClass = ^_SmeClassRec;

    SmeObject = ^_SmeRec;

    var
      smeObjectClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
