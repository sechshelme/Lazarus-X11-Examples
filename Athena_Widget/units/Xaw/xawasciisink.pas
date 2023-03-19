unit XawAsciiSink;

interface

uses
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
{
 * AsciiSink Object
  }
// {$include <X11/Xaw/TextSink.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 echo                Output             Boolean         True
 displayNonprinting  Output             Boolean         True

 }

const
  XtCOutput = 'Output';  
  XtNdisplayNonprinting = 'displayNonprinting';  
  XtNecho = 'echo';  
{ Class record constants  }
  var
    asciiSinkObjectClass : TWidgetClass;cvar;external libXaw;

//type
//  PAsciiSinkObjectClass = ^TAsciiSinkObjectClass;
//  TAsciiSinkObjectClass = PAsciiSinkClassRec;
//
//  PAsciiSinkObject = ^TAsciiSinkObject;
//  TAsciiSinkObject = PAsciiSinkRec;

implementation

end.
