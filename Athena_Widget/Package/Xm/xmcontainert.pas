unit XmContainerT;

interface

uses
  x,
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 * HISTORY
  }
// {$include <Xm/Xm.h>}
  var
    XmQTcontainer : TXrmQuark;cvar;external libXm;
{ Trait structures and typedefs, place typedefs first  }
{ this one can be expanded in the future  }
type
  PXmContainerDataRec = ^TXmContainerDataRec;
  TXmContainerDataRec = record
      valueMask : TMask;
      detail_order : PCardinal;
      detail_order_count : TCardinal;
      detail_tablist : TXmTabList;
      first_column_width : TDimension;
      selection_mode : TXtEnum;
      select_color : TPixel;
    end;
  TXmContainerData = PXmContainerDataRec;
  PXmContainerData = ^TXmContainerData;

const
  ContAllValid = $FFFF;  
  ContDetailOrder = 1 shl 0;  
  ContDetailTabList = 1 shl 1;  
  ContFirstColumnWidth = 1 shl 2;  
  ContSelectionMode = 1 shl 3;  
  ContSelectColor = 1 shl 4;  
type

  TXmContainerGetValuesProc = procedure (w:TWidget; contData:TXmContainerData);cdecl;
{ Version 0: initial release.  }
{ 0  }

  PXmContainerTraitRec = ^TXmContainerTraitRec;
  TXmContainerTraitRec = record
      version : longint;
      getValues : TXmContainerGetValuesProc;
    end;
  TXmContainerTrait = PXmContainerTraitRec;
  PXmContainerTrait = ^TXmContainerTrait;

implementation


end.
