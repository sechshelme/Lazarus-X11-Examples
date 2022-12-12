
unit MultiSink;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MultiSink.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MultiSink.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MultiSink.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawMultiSink_h}
{$define _XawMultiSink_h}  

{$include <X11/Xaw/TextSink.h>}


  const
    XtCOutput = 'Output';    
    XtNdisplayNonprinting = 'displayNonprinting';    
    XtNecho = 'echo';    
{$ifndef XtNfontSet		/*Sheeran, Omron KK, 93/03/04*/}

  const
    XtNfontSet = 'fontSet';    
{$endif}
{$ifndef XtCFontSet		/*Sheeran, Omron KK, 93/03/04*/}

  const
    XtCFontSet = 'FontSet';    
{$endif}


    var
      multiSinkObjectClass : WidgetClass;cvar;external;

  type
    MultiSinkObjectClass = ^_MultiSinkClassRec;

    MultiSinkObject = ^_MultiSinkRec;
{$endif}


implementation


end.
