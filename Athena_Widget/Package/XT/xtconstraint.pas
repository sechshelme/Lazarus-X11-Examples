unit XTConstraint;

interface

uses
  XTIntrinsic;

const
  libXt = 'libXt.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

  var
    constraintWidgetClass : TWidgetClass;cvar;external libXt;

  //type
  //  PConstraintWidgetClass = ^TConstraintWidgetClass;
  //  TConstraintWidgetClass = PConstraintClassRec;

implementation

end.
