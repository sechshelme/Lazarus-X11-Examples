
unit Simple;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Simple.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Simple.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Simple.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Simple_h}
{$define _Simple_h}  
{$include "Xaw3dP.h"}
{$include <X11/Xmu/Converters.h>}



  const
    XtNcursor = 'cursor';    
    XtNcursorName = 'cursorName';    
    XtNinsensitiveBorder = 'insensitiveBorder';    
    XtCInsensitive = 'Insensitive';    
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
    SimpleWidgetClass = ^_SimpleClassRec;

    SimpleWidget = ^_SimpleRec;

    var
      simpleWidgetClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
