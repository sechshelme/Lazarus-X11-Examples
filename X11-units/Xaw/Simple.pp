
unit Simple;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Simple.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Simple.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Simple.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Simple_h}
{$define _Simple_h}  
{$include <X11/Xmu/Converters.h>}


  const
    XtNcursor = 'cursor';    
    XtNcursorName = 'cursorName';    
    XtNinsensitiveBorder = 'insensitiveBorder';    
    XtCInsensitive = 'Insensitive';    
{$ifndef XtCInternational}

  const
    XtCInternational = 'International';    
{$endif}
{$ifndef XtNinternational}

  const
    XtNinternational = 'international';    
{$endif}
{$ifndef OLDXAW}
{$ifndef XawNdisplayList}

  const
    XawNdisplayList = 'displayList';    
{$endif}
{$ifndef XawCDisplayList}

  const
    XawCDisplayList = 'DisplayList';    
{$endif}
{$ifndef XawRDisplayList}

  const
    XawRDisplayList = 'XawDisplayList';    
{$endif}

  const
    XtNtip = 'tip';    
    XtCTip = 'Tip';    
{$endif}


  type
    SimpleWidgetClass = ^_SimpleClassRec;

    SimpleWidget = ^_SimpleRec;

    var
      simpleWidgetClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
