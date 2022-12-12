
unit PassivGraI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/PassivGraI.h
  The following command line parameters were used:
    /usr/include/X11/PassivGraI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/PassivGraI.pp
}

  Type
  PXButtonEvent  = ^XButtonEvent;
  PXEvent  = ^XEvent;
  PXKeyEvent  = ^XKeyEvent;
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
      _XtServerGrabRec = record
          next : ^_XtServerGrabRec;
          widget : Widget;
          flag0 : word;
          keybut : KeyCode;
          modifiers : word;
          eventMask : word;
        end;
      XtServerGrabRec = _XtServerGrabRec;
      XtServerGrabPtr = ^_XtServerGrabRec;

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
      _XtGrabExtRec = record
          pKeyButMask : ^Mask;
          pModifiersMask : ^Mask;
          confineTo : Window;
          cursor : Cursor;
        end;
      XtServerGrabExtRec = _XtGrabExtRec;
      XtServerGrabExtPtr = ^_XtGrabExtRec;

    function GRABEXT(p : longint) : XtServerGrabExtPtr;    



  type
    _XtDeviceRec = record
        grab : XtServerGrabRec;
        grabType : XtServerGrabType;
      end;
    XtDeviceRec = _XtDeviceRec;
    XtDevice = ^_XtDeviceRec;

  const
    XtMyAncestor = 0;    
    XtMyDescendant = 1;    
    XtMyCousin = 2;    
    XtMySelf = 3;    
    XtUnrelated = 4;    

  type
    XtGeneology = char;


    XtPerWidgetInputRec = record
        focusKid : Widget;
        keyList : XtServerGrabPtr;
        ptrList : XtServerGrabPtr;
        queryEventDescendant : Widget;
        flag0 : word;
        focalPoint : XtGeneology;
      end;
    XtPerWidgetInput = ^XtPerWidgetInputRec;

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
    XtPerDisplayInputRec = record
        grabList : XtGrabList;
        keyboard : XtDeviceRec;
        pointer : XtDeviceRec;
        activatingKey : KeyCode;
        trace : ^Widget;
        traceDepth : longint;
        traceMax : longint;
        focusWidget : Widget;
      end;
    XtPerDisplayInput = ^XtPerDisplayInputRec;
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



  procedure _XtDestroyServerGrabs(_para1:Widget; _para2:XtPointer; _para3:XtPointer);cdecl;


  function _XtGetPerWidgetInput(_para1:Widget; _para2:_XtBoolean):XtPerWidgetInput;cdecl;


  function _XtCheckServerGrabsOnWidget(_para1:PXEvent; _para2:Widget; _para3:_XtBoolean):XtServerGrabPtr;cdecl;


  function _XtGetGrabList(pdi : longint) : longint;  


  procedure _XtFreePerWidgetInput(_para1:Widget; _para2:XtPerWidgetInput);cdecl;


  function _XtProcessKeyboardEvent(_para1:PXKeyEvent; _para2:Widget; _para3:XtPerDisplayInput):Widget;cdecl;


  function _XtProcessPointerEvent(_para1:PXButtonEvent; _para2:Widget; _para3:XtPerDisplayInput):Widget;cdecl;


  procedure _XtRegisterPassiveGrabs(_para1:Widget);cdecl;


  procedure _XtClearAncestorCache(_para1:Widget);cdecl;

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

    function GRABEXT(p : longint) : XtServerGrabExtPtr;
    begin
      GRABEXT:=XtServerGrabExtPtr(p(+(1)));
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
