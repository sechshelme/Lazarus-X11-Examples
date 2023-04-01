unit XmContItemT;

interface

uses
  unixtype,
  x, xlib,
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

var
    XmQTcontainerItem : TXrmQuark;cvar;external libXm;

{ Trait structures and typedefs, place typedefs first  }
{ this one can be expanded in the future  }
{ on setValues, give the information on
  what to change in the Icon, on getValues,
  on what to put in the record returned  }

type
  PXmContainerItemDataRec = ^TXmContainerItemDataRec;
  TXmContainerItemDataRec = record
      valueMask : TMask;
      view_type : byte;
      visual_emphasis : byte;
      icon_width : TDimension;
      detail_count : TCardinal;
    end;
  TXmContainerItemData = PXmContainerItemDataRec;
  PXmContainerItemData = ^TXmContainerItemData;

const
  ContItemAllValid = $FFFF;  
  ContItemViewType = 1 shl 0;  
  ContItemVisualEmphasis = 1 shl 1;  
  ContItemIconWidth = 1 shl 2;  
  ContItemDetailCount = 1 shl 3;  
type

  TXmContainerItemSetValuesProc = procedure (w:TWidget; contItemData:TXmContainerItemData);cdecl;
  TXmContainerItemGetValuesProc = procedure (w:TWidget; contItemData:TXmContainerItemData);cdecl;

{ Version 0: initial release.  }

  PXmContainerItemTraitRec = ^TXmContainerItemTraitRec;
  TXmContainerItemTraitRec = record
      version : longint;
      setValues : TXmContainerItemSetValuesProc;
      getValues : TXmContainerItemGetValuesProc;
    end;
  TXmContainerItemTrait = PXmContainerItemTraitRec;
  PXmContainerItemTrait = ^TXmContainerItemTrait;

implementation

end.
