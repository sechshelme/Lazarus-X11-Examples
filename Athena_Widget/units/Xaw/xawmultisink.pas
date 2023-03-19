unit XawMultiSink;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
{
 * MultiSink Object
  }
//{$include <X11/Xaw/TextSink.h>}

{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 echo                Output             Boolean         True
 displayNonprinting  Output             Boolean         True
 fontSet             FontSet            XFontSet        XtDefaultFontSet

 }

const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  

const
  XtNfontSet = 'fontSet';  

const
  XtCFontSet = 'FontSet';  

var
    multiSinkObjectClass : TWidgetClass;cvar;external libXaw;

//type
//  PMultiSinkObjectClass = ^TMultiSinkObjectClass;
//  TMultiSinkObjectClass = PMultiSinkClassRec;
//
//  PMultiSinkObject = ^TMultiSinkObject;
//  TMultiSinkObject = PMultiSinkRec;

implementation

end.
