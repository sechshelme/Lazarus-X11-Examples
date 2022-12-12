
unit AsciiSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/AsciiSink.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/AsciiSink.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/AsciiSink.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawAsciiSink_h}
{$define _XawAsciiSink_h}  

{$include <X11/Xaw3d/TextSink.h>}


  const
    XtCOutput = 'Output';    
    XtNdisplayNonprinting = 'displayNonprinting';    
    XtNecho = 'echo';    


    var
      asciiSinkObjectClass : WidgetClass;cvar;external;

  type
    AsciiSinkObjectClass = ^_AsciiSinkClassRec;

    AsciiSinkObject = ^_AsciiSinkRec;

{$endif}


implementation


end.
