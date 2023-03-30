unit XmNavigatorT;

interface

uses
  unixtype,
  x,
  xresource,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

  var
    XmQTnavigator : TXrmQuark;cvar;external libXm;

{ Trait structures and typedefs, place typedefs first  }
{ this structure is equivalent to an XPoint but in int,
   not in Position, which are short  }
type
  PTwoDInt = ^TTwoDInt;
  TTwoDInt = record
      x : longint;
      y : longint;
    end;
  TTwoDIntRec = TTwoDInt;
  PTwoDIntRec = ^TTwoDIntRec;
{ this one can be expanded in the future  }

  PXmNavigatorDataRec = ^TXmNavigatorDataRec;
  TXmNavigatorDataRec = record
      valueMask : TMask;
      dimMask : TMask;
      value : TTwoDIntRec;
      minimum : TTwoDIntRec;
      maximum : TTwoDIntRec;
      slider_size : TTwoDIntRec;
      increment : TTwoDIntRec;
      page_increment : TTwoDIntRec;
    end;
  TXmNavigatorData = PXmNavigatorDataRec;
  PXmNavigatorData = ^TXmNavigatorData;

const
  NavAllValid = $FFFF;
  NavDimMask = 1 shl 0;  
  NavValue = 1 shl 1;  
  NavMinimum = 1 shl 2;  
  NavMaximum = 1 shl 3;  
  NavSliderSize = 1 shl 4;  
  NavIncrement = 1 shl 5;  
  NavPageIncrement = 1 shl 6;

type
  TXmNavigatorMoveCBProc = procedure (nav:TWidget; moveCB:TXtCallbackProc; closure:TXtPointer; setunset:TBoolean);cdecl;
  TXmNavigatorSetValueProc = procedure (nav:TWidget; nav_data:TXmNavigatorData; notify:TBoolean);cdecl;
  TXmNavigatorGetValueProc = procedure (nav:TWidget; nav_data:TXmNavigatorData);cdecl;
{ Version 0: initial release.  }

  PXmNavigatorTraitRec = ^TXmNavigatorTraitRec;
  TXmNavigatorTraitRec = record
      version : longint;
      changeMoveCB : TXmNavigatorMoveCBProc;
      setValue : TXmNavigatorSetValueProc;
      getValue : TXmNavigatorGetValueProc;
    end;
  TXmNavigatorTrait = PXmNavigatorTraitRec;
  PXmNavigatorTrait = ^TXmNavigatorTrait;

const
  NavigDimensionX = 1 shl 0;  
  NavigDimensionY = 1 shl 1;  

function ACCESS_DIM(mask:cslong;field : TTwoDInt) : TBoolean;
function ASSIGN_DIM(mask:cslong;field:TTwoDInt;val : cslong) : TBoolean;

implementation

//#define ACCESS_DIM(mask,field) ((mask & NavigDimensionX)?(field.x):(field.y))
function ACCESS_DIM(mask: cslong; field: TTwoDInt): TBoolean;
begin
  if mask and NavigDimensionX <> 0 then begin
    Result := field.x <> 0;
  end else begin
    Result := field.y <> 0;
  end;
end;

//#define ASSIGN_DIM(mask,field,val)	\
//  {					\
//    if (mask & NavigDimensionX)		\
//      (field.x)=(val);			\
//    else				\
//      (field.y)=(val);			\
//  }
function ASSIGN_DIM(mask: cslong; field: TTwoDInt; val: cslong): TBoolean;
begin
  if mask and NavigDimensionX <> 0 then begin
    Result := field.x = val;
  end else begin
    Result := field.y = val;
  end;
end;

end.
