unit XmList;

interface

uses
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}
// {$include <Xm/Xm.h>}

var
    xmListWidgetClass : TWidgetClass;cvar;external libXm;

const
  XmINITIAL = 0;  
  XmADDITION = 1;  
  XmMODIFICATION = 2;  

function XmIsList(w : TWidget) : TBoolean;

{ XmIsList  }
//type
//  PXmListWidgetClass = ^TXmListWidgetClass;
//  TXmListWidgetClass = PXmListClassRec;
//
//  PXmListWidget = ^TXmListWidget;
//  TXmListWidget = PXmListRec;
{*******    Public Function Declarations    ******* }

procedure XmListAddItem(w:TWidget; item:TXmString; pos:longint);cdecl;external libXm;
procedure XmListAddItems(w:TWidget; items:PXmString; item_count:longint; pos:longint);cdecl;external libXm;
procedure XmListAddItemsUnselected(w:TWidget; items:PXmString; item_count:longint; pos:longint);cdecl;external libXm;
procedure XmListAddItemUnselected(w:TWidget; item:TXmString; pos:longint);cdecl;external libXm;
procedure XmListDeleteItem(w:TWidget; item:TXmString);cdecl;external libXm;
procedure XmListDeleteItems(w:TWidget; items:PXmString; item_count:longint);cdecl;external libXm;
procedure XmListDeletePositions(w:TWidget; position_list:Plongint; position_count:longint);cdecl;external libXm;
procedure XmListDeletePos(w:TWidget; pos:longint);cdecl;external libXm;
procedure XmListDeleteItemsPos(w:TWidget; item_count:longint; pos:longint);cdecl;external libXm;
procedure XmListDeleteAllItems(w:TWidget);cdecl;external libXm;
procedure XmListReplaceItems(w:TWidget; old_items:PXmString; item_count:longint; new_items:PXmString);cdecl;external libXm;
procedure XmListReplaceItemsPos(w:TWidget; new_items:PXmString; item_count:longint; position:longint);cdecl;external libXm;
procedure XmListReplaceItemsUnselected(w:TWidget; old_items:PXmString; item_count:longint; new_items:PXmString);cdecl;external libXm;
procedure XmListReplaceItemsPosUnselected(w:TWidget; new_items:PXmString; item_count:longint; position:longint);cdecl;external libXm;
procedure XmListReplacePositions(w:TWidget; position_list:Plongint; item_list:PXmString; item_count:longint);cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int notify) ; }
{#else }
procedure XmListSelectItem(w:TWidget; item:TXmString; notify:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
{#if NeedWidePrototypes }
{                        int notify) ; }
{#else }
procedure XmListSelectPos(w:TWidget; pos:longint; notify:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
procedure XmListDeselectItem(w:TWidget; item:TXmString);cdecl;external libXm;
procedure XmListDeselectPos(w:TWidget; pos:longint);cdecl;external libXm;
procedure XmListDeselectAllItems(w:TWidget);cdecl;external libXm;
procedure XmListSetPos(w:TWidget; pos:longint);cdecl;external libXm;
procedure XmListSetBottomPos(w:TWidget; pos:longint);cdecl;external libXm;
procedure XmListSetItem(w:TWidget; item:TXmString);cdecl;external libXm;
procedure XmListSetBottomItem(w:TWidget; item:TXmString);cdecl;external libXm;
{#if NeedWidePrototypes }
{                        int add_mode) ; }
{#else }
procedure XmListSetAddMode(w:TWidget; add_mode:TBoolean);cdecl;external libXm;
{#endif /* NeedWidePrototypes */ }
function XmListItemExists(w:TWidget; item:TXmString):TBoolean;cdecl;external libXm;
function XmListItemPos(w:TWidget; item:TXmString):longint;cdecl;external libXm;
function XmListGetKbdItemPos(w:TWidget):longint;cdecl;external libXm;
function XmListSetKbdItemPos(w:TWidget; pos:longint):TBoolean;cdecl;external libXm;
function XmListYToPos(w:TWidget; y:TPosition):longint;cdecl;external libXm;
{ NeedWidePrototypes ?????  }
function XmListPosToBounds(w:TWidget; position:longint; x:PPosition; y:PPosition; width:PDimension; 
           height:PDimension):TBoolean;cdecl;external libXm;
function XmListGetMatchPos(w:TWidget; item:TXmString; pos_list:PPlongint; pos_count:Plongint):TBoolean;cdecl;external libXm;
function XmListGetSelectedPos(w:TWidget; pos_list:PPlongint; pos_count:Plongint):TBoolean;cdecl;external libXm;
procedure XmListSetHorizPos(w:TWidget; position:longint);cdecl;external libXm;
procedure XmListUpdateSelectedList(w:TWidget);cdecl;external libXm;
function XmListPosSelected(w:TWidget; pos:longint):TBoolean;cdecl;external libXm;


function XmCreateList(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;
function XmCreateScrolledList(parent:TWidget; name:Pchar; args:TArgList; argCount:TCardinal):TWidget;cdecl;external libXm;

//function XmVaCreateList(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateList(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
//function XmVaCreateManagedList(parent:TWidget; name:Pchar; args:array of const):TWidget;cdecl;external libXm;
function XmVaCreateManagedList(parent:TWidget; name:Pchar):TWidget;cdecl; varargs external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XmIsList(w: TWidget): TBoolean;
begin
  XmIsList:=XtIsSubclass(w,xmListWidgetClass);
end;

end.
