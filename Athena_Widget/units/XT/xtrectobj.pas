unit XTRectObj;

interface

uses
  XTIntrinsic;

const
  libXt = 'libXt.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

  var
    rectObjClass : TWidgetClass;cvar;external libXt;

  //type
  //  PRectObj = ^TRectObj;
  //  TRectObj = PRectObjRec;
  //
  //  PRectObjClass = ^TRectObjClass;
  //  TRectObjClass = PRectObjClassRec;

implementation

end.
