unit XTObject;

interface

uses
  x, xlib,
  XTIntrinsic;

const
  libXt = 'libXt.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

  var
    objectClass : TWidgetClass;cvar;external libXt;

//type
//  PObject = ^TObject;
//  TObject = PObjectRec;
//
//  PObjectClass = ^TObjectClass;
//  TObjectClass = PObjectClassRec;

implementation

end.
