
unit PassivGraI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/PassivGraI.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/PassivGraI.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/PassivGraI.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PMask  = ^Mask;
    PWidget  = ^Widget;
    PXButtonEvent  = ^XButtonEvent;
    PXEvent  = ^XEvent;
    PXKeyEvent  = ^XKeyEvent;
    PXtDevice  = ^XtDevice;
    PXtDeviceRec  = ^XtDeviceRec;
    PXtGeneology  = ^XtGeneology;
    PXtGrabExtRec  = ^XtGrabExtRec;
    PXtPerDisplayInput  = ^XtPerDisplayInput;
    PXtPerDisplayInputRec  = ^XtPerDisplayInputRec;
    PXtPerWidgetInput  = ^XtPerWidgetInput;
    PXtPerWidgetInputRec  = ^XtPerWidgetInputRec;
    PXtServerGrabExtPtr  = ^XtServerGrabExtPtr;
    PXtServerGrabExtRec  = ^XtServerGrabExtRec;
    PXtServerGrabPtr  = ^XtServerGrabPtr;
    PXtServerGrabRec  = ^XtServerGrabRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _PDI_h_}
{$define _PDI_h_}

const
  KEYBOARD = _TRUE;  
  POINTER = _FALSE;  
(* error 
typedef enum {
in declaration at line 66 *)
    type
      PXtServerGrabRec = ^TXtServerGrabRec;
      TXtServerGrabRec = record
          next : PXtServerGrabRec;
          widget : TWidget;
          flag0 : word;
          keybut : TKeyCode;
          modifiers : word;
          eventMask : word;
        end;
      TXtServerGrabPtr = PXtServerGrabRec;
      PXtServerGrabPtr = ^TXtServerGrabPtr;

    const
      bm__XtServerGrabRec_ownerEvents = $1;
      bp__XtServerGrabRec_ownerEvents = 0;
      bm__XtServerGrabRec_pointerMode = $2;
      bp__XtServerGrabRec_pointerMode = 1;
      bm__XtServerGrabRec_keyboardMode = $4;
      bp__XtServerGrabRec_keyboardMode = 2;
      bm__XtServerGrabRec_hasExt = $8;
      bp__XtServerGrabRec_hasExt = 3;
      bm__XtServerGrabRec_confineToIsWidgetWin = $10;
      bp__XtServerGrabRec_confineToIsWidgetWin = 4;

    function ownerEvents(var a : _XtServerGrabRec) : dword;
    procedure set_ownerEvents(var a : _XtServerGrabRec; __ownerEvents : dword);
    function pointerMode(var a : _XtServerGrabRec) : dword;
    procedure set_pointerMode(var a : _XtServerGrabRec; __pointerMode : dword);
    function keyboardMode(var a : _XtServerGrabRec) : dword;
    procedure set_keyboardMode(var a : _XtServerGrabRec; __keyboardMode : dword);
    function hasExt(var a : _XtServerGrabRec) : dword;
    procedure set_hasExt(var a : _XtServerGrabRec; __hasExt : dword);
    function confineToIsWidgetWin(var a : _XtServerGrabRec) : dword;
    procedure set_confineToIsWidgetWin(var a : _XtServerGrabRec; __confineToIsWidgetWin : dword);
    type
      PXtGrabExtRec = ^TXtGrabExtRec;
      TXtGrabExtRec = record
          pKeyButMask : PMask;
          pModifiersMask : PMask;
          confineTo : TWindow;
          cursor : TCursor;
        end;
      TXtServerGrabExtRec = TXtGrabExtRec;
      PXtServerGrabExtRec = ^TXtServerGrabExtRec;
      TXtServerGrabExtPtr = PXtGrabExtRec;
      PXtServerGrabExtPtr = ^TXtServerGrabExtPtr;

    function GRABEXT(p : longint) : TXtServerGrabExtPtr;    


    type
      PXtDeviceRec = ^TXtDeviceRec;
      TXtDeviceRec = record
          grab : TXtServerGrabRec;
          grabType : TXtServerGrabType;
        end;
      TXtDevice = PXtDeviceRec;
      PXtDevice = ^TXtDevice;

    const
      XtMyAncestor = 0;      
      XtMyDescendant = 1;      
      XtMyCousin = 2;      
      XtMySelf = 3;      
      XtUnrelated = 4;      
    type
      PXtGeneology = ^TXtGeneology;
      TXtGeneology = char;


      PXtPerWidgetInputRec = ^TXtPerWidgetInputRec;
      TXtPerWidgetInputRec = record
          focusKid : TWidget;
          keyList : TXtServerGrabPtr;
          ptrList : TXtServerGrabPtr;
          queryEventDescendant : TWidget;
          flag0 : word;
          focalPoint : TXtGeneology;
        end;
      TXtPerWidgetInput = PXtPerWidgetInputRec;
      PXtPerWidgetInput = ^TXtPerWidgetInput;

    const
      bm_XtPerWidgetInputRec_map_handler_added = $1;
      bp_XtPerWidgetInputRec_map_handler_added = 0;
      bm_XtPerWidgetInputRec_realize_handler_added = $2;
      bp_XtPerWidgetInputRec_realize_handler_added = 1;
      bm_XtPerWidgetInputRec_active_handler_added = $4;
      bp_XtPerWidgetInputRec_active_handler_added = 2;
      bm_XtPerWidgetInputRec_haveFocus = $8;
      bp_XtPerWidgetInputRec_haveFocus = 3;

    function map_handler_added(var a : XtPerWidgetInputRec) : dword;
    procedure set_map_handler_added(var a : XtPerWidgetInputRec; __map_handler_added : dword);
    function realize_handler_added(var a : XtPerWidgetInputRec) : dword;
    procedure set_realize_handler_added(var a : XtPerWidgetInputRec; __realize_handler_added : dword);
    function active_handler_added(var a : XtPerWidgetInputRec) : dword;
    procedure set_active_handler_added(var a : XtPerWidgetInputRec; __active_handler_added : dword);
    function haveFocus(var a : XtPerWidgetInputRec) : dword;
    procedure set_haveFocus(var a : XtPerWidgetInputRec; __haveFocus : dword);
    type
      PXtPerDisplayInputRec = ^TXtPerDisplayInputRec;
      TXtPerDisplayInputRec = record
          grabList : TXtGrabList;
          keyboard : TXtDeviceRec;
          pointer : TXtDeviceRec;
          activatingKey : TKeyCode;
          trace : PWidget;
          traceDepth : longint;
          traceMax : longint;
          focusWidget : TWidget;
        end;
      TXtPerDisplayInput = PXtPerDisplayInputRec;
      PXtPerDisplayInput = ^TXtPerDisplayInput;
(* error 
#define IsServerGrab(g) ((g == XtPassiveServerGrab) ||\
in define line 124 *)
(* error 
#define IsAnyGrab(g) ((g == XtPassiveServerGrab) ||\
in define line 128 *)
(* error 
#define IsEitherPassiveGrab(g) ((g == XtPassiveServerGrab) ||\
in define line 131 *)

    function IsPseudoGrab(g : longint) : longint;    



procedure _XtDestroyServerGrabs(para1:TWidget; para2:TXtPointer; para3:TXtPointer);cdecl;external;

function _XtGetPerWidgetInput(para1:TWidget; para2:TXtBoolean):TXtPerWidgetInput;cdecl;external;

function _XtCheckServerGrabsOnWidget(para1:PXEvent; para2:TWidget; para3:TXtBoolean):TXtServerGrabPtr;cdecl;external;

    function _XtGetGrabList(pdi : longint) : longint;    


procedure _XtFreePerWidgetInput(para1:TWidget; para2:TXtPerWidgetInput);cdecl;external;

function _XtProcessKeyboardEvent(para1:PXKeyEvent; para2:TWidget; para3:TXtPerDisplayInput):TWidget;cdecl;external;

function _XtProcessPointerEvent(para1:PXButtonEvent; para2:TWidget; para3:TXtPerDisplayInput):TWidget;cdecl;external;

procedure _XtRegisterPassiveGrabs(para1:TWidget);cdecl;external;

procedure _XtClearAncestorCache(para1:TWidget);cdecl;external;
{$endif}

(* error 
#endif /* _PDI_h_ */

implementation

    function ownerEvents(var a : _XtServerGrabRec) : dword;
    begin
      ownerEvents:=(a.flag0 and bm__XtServerGrabRec_ownerEvents) shr bp__XtServerGrabRec_ownerEvents;
    end;

    procedure set_ownerEvents(var a : _XtServerGrabRec; __ownerEvents : dword);
    begin
      a.flag0:=a.flag0 or ((__ownerEvents shl bp__XtServerGrabRec_ownerEvents) and bm__XtServerGrabRec_ownerEvents);
    end;

    function pointerMode(var a : _XtServerGrabRec) : dword;
    begin
      pointerMode:=(a.flag0 and bm__XtServerGrabRec_pointerMode) shr bp__XtServerGrabRec_pointerMode;
    end;

    procedure set_pointerMode(var a : _XtServerGrabRec; __pointerMode : dword);
    begin
      a.flag0:=a.flag0 or ((__pointerMode shl bp__XtServerGrabRec_pointerMode) and bm__XtServerGrabRec_pointerMode);
    end;

    function keyboardMode(var a : _XtServerGrabRec) : dword;
    begin
      keyboardMode:=(a.flag0 and bm__XtServerGrabRec_keyboardMode) shr bp__XtServerGrabRec_keyboardMode;
    end;

    procedure set_keyboardMode(var a : _XtServerGrabRec; __keyboardMode : dword);
    begin
      a.flag0:=a.flag0 or ((__keyboardMode shl bp__XtServerGrabRec_keyboardMode) and bm__XtServerGrabRec_keyboardMode);
    end;

    function hasExt(var a : _XtServerGrabRec) : dword;
    begin
      hasExt:=(a.flag0 and bm__XtServerGrabRec_hasExt) shr bp__XtServerGrabRec_hasExt;
    end;

    procedure set_hasExt(var a : _XtServerGrabRec; __hasExt : dword);
    begin
      a.flag0:=a.flag0 or ((__hasExt shl bp__XtServerGrabRec_hasExt) and bm__XtServerGrabRec_hasExt);
    end;

    function confineToIsWidgetWin(var a : _XtServerGrabRec) : dword;
    begin
      confineToIsWidgetWin:=(a.flag0 and bm__XtServerGrabRec_confineToIsWidgetWin) shr bp__XtServerGrabRec_confineToIsWidgetWin;
    end;

    procedure set_confineToIsWidgetWin(var a : _XtServerGrabRec; __confineToIsWidgetWin : dword);
    begin
      a.flag0:=a.flag0 or ((__confineToIsWidgetWin shl bp__XtServerGrabRec_confineToIsWidgetWin) and bm__XtServerGrabRec_confineToIsWidgetWin);
    end;

    function GRABEXT(p : longint) : TXtServerGrabExtPtr;
    begin
      GRABEXT:=TXtServerGrabExtPtr(Tp(+(1)));
    end;

    function map_handler_added(var a : XtPerWidgetInputRec) : dword;
    begin
      map_handler_added:=(a.flag0 and bm_XtPerWidgetInputRec_map_handler_added) shr bp_XtPerWidgetInputRec_map_handler_added;
    end;

    procedure set_map_handler_added(var a : XtPerWidgetInputRec; __map_handler_added : dword);
    begin
      a.flag0:=a.flag0 or ((__map_handler_added shl bp_XtPerWidgetInputRec_map_handler_added) and bm_XtPerWidgetInputRec_map_handler_added);
    end;

    function realize_handler_added(var a : XtPerWidgetInputRec) : dword;
    begin
      realize_handler_added:=(a.flag0 and bm_XtPerWidgetInputRec_realize_handler_added) shr bp_XtPerWidgetInputRec_realize_handler_added;
    end;

    procedure set_realize_handler_added(var a : XtPerWidgetInputRec; __realize_handler_added : dword);
    begin
      a.flag0:=a.flag0 or ((__realize_handler_added shl bp_XtPerWidgetInputRec_realize_handler_added) and bm_XtPerWidgetInputRec_realize_handler_added);
    end;

    function active_handler_added(var a : XtPerWidgetInputRec) : dword;
    begin
      active_handler_added:=(a.flag0 and bm_XtPerWidgetInputRec_active_handler_added) shr bp_XtPerWidgetInputRec_active_handler_added;
    end;

    procedure set_active_handler_added(var a : XtPerWidgetInputRec; __active_handler_added : dword);
    begin
      a.flag0:=a.flag0 or ((__active_handler_added shl bp_XtPerWidgetInputRec_active_handler_added) and bm_XtPerWidgetInputRec_active_handler_added);
    end;

    function haveFocus(var a : XtPerWidgetInputRec) : dword;
    begin
      haveFocus:=(a.flag0 and bm_XtPerWidgetInputRec_haveFocus) shr bp_XtPerWidgetInputRec_haveFocus;
    end;

    procedure set_haveFocus(var a : XtPerWidgetInputRec; __haveFocus : dword);
    begin
      a.flag0:=a.flag0 or ((__haveFocus shl bp_XtPerWidgetInputRec_haveFocus) and bm_XtPerWidgetInputRec_haveFocus);
    end;

    function IsPseudoGrab(g : longint) : longint;
    begin
      IsPseudoGrab:=g=XtPseudoPassiveServerGrab;
    end;

    function _XtGetGrabList(pdi : longint) : longint;
    begin
      _XtGetGrabList:=@(pdi^.grabList);
    end;


end.
