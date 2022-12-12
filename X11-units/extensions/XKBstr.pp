
unit XKBstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XKBstr.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XKBstr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XKBstr.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XKBSTR_H_}
{$define _XKBSTR_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/XKB.h>}

  function XkbCharToInt(v : longint) : longint;  

(* error 
#define	XkbIntTo2Chars(i,h,l)	(((h)=((i>>8)&0xff)),((l)=((i)&0xff)))
in define line 34 *)
    function Xkb2CharsToInt(h,l : longint) : smallint;    


{$ifdef __clang__}
{$endif}


  type
    _XkbStateRec = record
        group : byte;
        locked_group : byte;
        base_group : word;
        latched_group : word;
        mods : byte;
        base_mods : byte;
        latched_mods : byte;
        locked_mods : byte;
        compat_state : byte;
        grab_mods : byte;
        compat_grab_mods : byte;
        lookup_mods : byte;
        compat_lookup_mods : byte;
        ptr_buttons : word;
      end;
    XkbStateRec = _XkbStateRec;
    XkbStatePtr = ^_XkbStateRec;

  function XkbModLocks(s : longint) : longint;  

  function XkbStateMods(s : longint) : longint;  

  function XkbGroupLock(s : longint) : longint;  

  function XkbStateGroup(s : longint) : longint;  

  function XkbStateFieldFromRec(s : longint) : longint;  

  function XkbGrabStateFromRec(s : longint) : longint;  



  type
    _XkbMods = record
        mask : byte;
        real_mods : byte;
        vmods : word;
      end;
    XkbModsRec = _XkbMods;
    XkbModsPtr = ^_XkbMods;

    _XkbKTMapEntry = record
        active : Bool;
        level : byte;
        mods : XkbModsRec;
      end;
    XkbKTMapEntryRec = _XkbKTMapEntry;
    XkbKTMapEntryPtr = ^_XkbKTMapEntry;




    _XkbKeyType = record
        mods : XkbModsRec;
        num_levels : byte;
        map_count : byte;
        map : XkbKTMapEntryPtr;
        preserve : XkbModsPtr;
        name : Atom;
        level_names : ^Atom;
      end;
    XkbKeyTypeRec = _XkbKeyType;
    XkbKeyTypePtr = ^_XkbKeyType;

  function XkbNumGroups(g : longint) : g;  

  function XkbOutOfRangeGroupInfo(g : longint) : g;  

  function XkbOutOfRangeGroupAction(g : longint) : g;  

  function XkbOutOfRangeGroupNumber(g : longint) : longint;  

  function XkbSetGroupInfo(g,w,n : longint) : longint;  

  function XkbSetNumGroups(g,n : longint) : longint;  



  type
    _XkbBehavior = record
        _type : byte;
        data : byte;
      end;
    XkbBehavior = _XkbBehavior;

  const
    XkbAnyActionDataSize = 7;    

  type
    _XkbAnyAction = record
        _type : byte;
        data : array[0..(XkbAnyActionDataSize)-1] of byte;
      end;
    XkbAnyAction = _XkbAnyAction;

    _XkbModAction = record
        _type : byte;
        flags : byte;
        mask : byte;
        real_mods : byte;
        vmods1 : byte;
        vmods2 : byte;
      end;
    XkbModAction = _XkbModAction;

  function XkbModActionVMods(a : longint) : smallint;  

(* error 
	(((a)->vmods1=(((v)>>8)&0xff)),(a)->vmods2=((v)&0xff))
in define line 132 *)

    type
      _XkbGroupAction = record
          _type : byte;
          flags : byte;
          group_XXX : char;
        end;
      XkbGroupAction = _XkbGroupAction;

    function XkbSAGroup(a : longint) : longint;    

  function XkbSASetGroup(a,g : longint) : longint;  


type
  _XkbISOAction = record
      _type : byte;
      flags : byte;
      mask : byte;
      real_mods : byte;
      group_XXX : char;
      affect : byte;
      vmods1 : byte;
      vmods2 : byte;
    end;
  XkbISOAction = _XkbISOAction;

  _XkbPtrAction = record
      _type : byte;
      flags : byte;
      high_XXX : byte;
      low_XXX : byte;
      high_YYY : byte;
      low_YYY : byte;
    end;
  XkbPtrAction = _XkbPtrAction;

function XkbPtrActionX(a : longint) : longint;

function XkbPtrActionY(a : longint) : longint;

function XkbSetPtrActionX(a,x : longint) : longint;

function XkbSetPtrActionY(a,y : longint) : longint;


type
  _XkbPtrBtnAction = record
      _type : byte;
      flags : byte;
      count : byte;
      button : byte;
    end;
  XkbPtrBtnAction = _XkbPtrBtnAction;

  _XkbPtrDfltAction = record
      _type : byte;
      flags : byte;
      affect : byte;
      valueXXX : char;
    end;
  XkbPtrDfltAction = _XkbPtrDfltAction;

function XkbSAPtrDfltValue(a : longint) : longint;

function XkbSASetPtrDfltValue(a,c : longint) : longint;


type
  _XkbSwitchScreenAction = record
      _type : byte;
      flags : byte;
      screenXXX : char;
    end;
  XkbSwitchScreenAction = _XkbSwitchScreenAction;

function XkbSAScreen(a : longint) : longint;

function XkbSASetScreen(a,s : longint) : longint;


type
  _XkbCtrlsAction = record
      _type : byte;
      flags : byte;
      ctrls3 : byte;
      ctrls2 : byte;
      ctrls1 : byte;
      ctrls0 : byte;
    end;
  XkbCtrlsAction = _XkbCtrlsAction;
(* error 
#define	XkbActionSetCtrls(a,c)	(((a)->ctrls3=(((c)>>24)&0xff)),\
in define line 201 *)

    function XkbActionCtrls(a : longint) : longint;    


  type
    _XkbMessageAction = record
        _type : byte;
        flags : byte;
        message : array[0..5] of byte;
      end;
    XkbMessageAction = _XkbMessageAction;

    _XkbRedirectKeyAction = record
        _type : byte;
        new_key : byte;
        mods_mask : byte;
        mods : byte;
        vmods_mask0 : byte;
        vmods_mask1 : byte;
        vmods0 : byte;
        vmods1 : byte;
      end;
    XkbRedirectKeyAction = _XkbRedirectKeyAction;

  function XkbSARedirectVMods(a : longint) : longint;  

(* error 
#define	XkbSARedirectSetVMods(a,m)	(((a)->vmods1=(((m)>>8)&0xff)),\
in define line 227 *)
    function XkbSARedirectVModsMask(a : longint) : longint;    

(* error 
#define	XkbSARedirectSetVModsMask(a,m)	(((a)->vmods_mask1=(((m)>>8)&0xff)),\
in define line 231 *)

    type
      _XkbDeviceBtnAction = record
          _type : byte;
          flags : byte;
          count : byte;
          button : byte;
          device : byte;
        end;
      XkbDeviceBtnAction = _XkbDeviceBtnAction;

      _XkbDeviceValuatorAction = record
          _type : byte;
          device : byte;
          v1_what : byte;
          v1_ndx : byte;
          v1_value : byte;
          v2_what : byte;
          v2_ndx : byte;
          v2_value : byte;
        end;
      XkbDeviceValuatorAction = _XkbDeviceValuatorAction;

      _XkbAction = record
          case longint of
            0 : ( any : XkbAnyAction );
            1 : ( mods : XkbModAction );
            2 : ( group : XkbGroupAction );
            3 : ( iso : XkbISOAction );
            4 : ( ptr : XkbPtrAction );
            5 : ( btn : XkbPtrBtnAction );
            6 : ( dflt : XkbPtrDfltAction );
            7 : ( screen : XkbSwitchScreenAction );
            8 : ( ctrls : XkbCtrlsAction );
            9 : ( msg : XkbMessageAction );
            10 : ( redirect : XkbRedirectKeyAction );
            11 : ( devbtn : XkbDeviceBtnAction );
            12 : ( devval : XkbDeviceValuatorAction );
            13 : ( _type : byte );
          end;
      XkbAction = _XkbAction;

      _XkbControls = record
          mk_dflt_btn : byte;
          num_groups : byte;
          groups_wrap : byte;
          internal : XkbModsRec;
          ignore_lock : XkbModsRec;
          enabled_ctrls : dword;
          repeat_delay : word;
          repeat_interval : word;
          slow_keys_delay : word;
          debounce_delay : word;
          mk_delay : word;
          mk_interval : word;
          mk_time_to_max : word;
          mk_max_speed : word;
          mk_curve : smallint;
          ax_options : word;
          ax_timeout : word;
          axt_opts_mask : word;
          axt_opts_values : word;
          axt_ctrls_mask : dword;
          axt_ctrls_values : dword;
          per_key_repeat : array[0..(XkbPerKeyBitArraySize)-1] of byte;
        end;
      XkbControlsRec = _XkbControls;
      XkbControlsPtr = ^_XkbControls;

    function XkbAX_AnyFeedback(c : longint) : longint;    

  function XkbAX_NeedOption(c,w : longint) : longint;  

function XkbAX_NeedFeedback(c,w : longint) : longint;



{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}

type
  _XkbServerMapRec = record
      num_acts : word;
      size_acts : word;
      acts : ^XkbAction;
      behaviors : ^XkbBehavior;
      key_acts : ^word;
      c_explicit : ^byte;
      explicit : ^byte;
      vmods : array[0..(XkbNumVirtualMods)-1] of byte;
      vmodmap : ^word;
    end;
  XkbServerMapRec = _XkbServerMapRec;
  XkbServerMapPtr = ^_XkbServerMapRec;

function XkbSMKeyActionsPtr(m,k : longint) : longint;



type
  _XkbSymMapRec = record
      kt_index : array[0..(XkbNumKbdGroups)-1] of byte;
      group_info : byte;
      width : byte;
      offset : word;
    end;
  XkbSymMapRec = _XkbSymMapRec;
  XkbSymMapPtr = ^_XkbSymMapRec;





  _XkbClientMapRec = record
      size_types : byte;
      num_types : byte;
      types : XkbKeyTypePtr;
      size_syms : word;
      num_syms : word;
      syms : ^KeySym;
      key_sym_map : XkbSymMapPtr;
      modmap : ^byte;
    end;
  XkbClientMapRec = _XkbClientMapRec;
  XkbClientMapPtr = ^_XkbClientMapRec;

function XkbCMKeyGroupInfo(m,k : longint) : longint;

function XkbCMKeyNumGroups(m,k : longint) : longint;

function XkbCMKeyGroupWidth(m,k,g : longint) : longint;

function XkbCMKeyGroupsWidth(m,k : longint) : longint;

function XkbCMKeyTypeIndex(m,k,g : longint) : longint;

function XkbCMKeyType(m,k,g : longint) : longint;

function XkbCMKeyNumSyms(m,k : longint) : longint;

function XkbCMKeySymsOffset(m,k : longint) : longint;

function XkbCMKeySymsPtr(m,k : longint) : longint;



type
  _XkbSymInterpretRec = record
      sym : KeySym;
      flags : byte;
      match : byte;
      mods : byte;
      virtual_mod : byte;
      act : XkbAnyAction;
    end;
  XkbSymInterpretRec = _XkbSymInterpretRec;
  XkbSymInterpretPtr = ^_XkbSymInterpretRec;


  _XkbCompatMapRec = record
      sym_interpret : XkbSymInterpretPtr;
      groups : array[0..(XkbNumKbdGroups)-1] of XkbModsRec;
      num_si : word;
      size_si : word;
    end;
  XkbCompatMapRec = _XkbCompatMapRec;
  XkbCompatMapPtr = ^_XkbCompatMapRec;

  _XkbIndicatorMapRec = record
      flags : byte;
      which_groups : byte;
      groups : byte;
      which_mods : byte;
      mods : XkbModsRec;
      ctrls : dword;
    end;
  XkbIndicatorMapRec = _XkbIndicatorMapRec;
  XkbIndicatorMapPtr = ^_XkbIndicatorMapRec;
(* error 
			    (((i)->which_groups&&(i)->groups)||\
in define line 394 *)
(* error 
#define	XkbIM_InUse(i)	(((i)->flags)||((i)->which_groups)||\
in define line 396 *)

      _XkbIndicatorRec = record
          phys_indicators : dword;
          maps : array[0..(XkbNumIndicators)-1] of XkbIndicatorMapRec;
        end;
      XkbIndicatorRec = _XkbIndicatorRec;
      XkbIndicatorPtr = ^_XkbIndicatorRec;
(* error 
	char	name[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

      _XkbKeyNameRec = record
          XkbKeyNameLength : char;
        end;
      XkbKeyNameRec = _XkbKeyNameRec;
      XkbKeyNamePtr = ^_XkbKeyNameRec;
(* error 
	char	real[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
(* error 
	char	alias[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

      _XkbKeyAliasRec = record
          XkbKeyNameLength : char;
          XkbKeyNameLength : char;
        end;
      XkbKeyAliasRec = _XkbKeyAliasRec;
      XkbKeyAliasPtr = ^_XkbKeyAliasRec;






      _XkbNamesRec = record
          keycodes : Atom;
          geometry : Atom;
          symbols : Atom;
          types : Atom;
          compat : Atom;
          vmods : array[0..(XkbNumVirtualMods)-1] of Atom;
          indicators : array[0..(XkbNumIndicators)-1] of Atom;
          groups : array[0..(XkbNumKbdGroups)-1] of Atom;
          keys : XkbKeyNamePtr;
          key_aliases : XkbKeyAliasPtr;
          radio_groups : ^Atom;
          phys_symbols : Atom;
          num_keys : byte;
          num_key_aliases : byte;
          num_rg : word;
        end;
      XkbNamesRec = _XkbNamesRec;
      XkbNamesPtr = ^_XkbNamesRec;

      XkbGeometryPtr = ^_XkbGeometry;


      _XkbDesc = record
          dpy : ^_XDisplay;
          flags : word;
          device_spec : word;
          min_key_code : KeyCode;
          max_key_code : KeyCode;
          ctrls : XkbControlsPtr;
          server : XkbServerMapPtr;
          map : XkbClientMapPtr;
          indicators : XkbIndicatorPtr;
          names : XkbNamesPtr;
          compat : XkbCompatMapPtr;
          geom : XkbGeometryPtr;
        end;
      XkbDescRec = _XkbDesc;
      XkbDescPtr = ^_XkbDesc;

    function XkbKeyKeyTypeIndex(d,k,g : longint) : longint;    

  function XkbKeyKeyType(d,k,g : longint) : longint;  

function XkbKeyGroupWidth(d,k,g : longint) : longint;

function XkbKeyGroupsWidth(d,k : longint) : longint;

function XkbKeyGroupInfo(d,k : longint) : longint;

function XkbKeyNumGroups(d,k : longint) : longint;

function XkbKeyNumSyms(d,k : longint) : longint;

function XkbKeySymsPtr(d,k : longint) : longint;

(* error 
#define	XkbKeySym(d,k,n)		(XkbKeySymsPtr(d,k)[n])
in define line 466 *)
    function XkbKeySymEntry(d,k,sl,g : longint) : longint;    

(* error 
	(XkbKeyHasActions(d,k)?&XkbKeyActionsPtr(d,k)[n]:NULL)
in define line 470 *)
    function XkbKeyActionEntry(d,k,sl,g : longint) : longint;    

  function XkbKeyHasActions(d,k : longint) : longint;  

function XkbKeyNumActions(d,k : longint) : longint;

function XkbKeyActionsPtr(d,k : longint) : longint;

function XkbKeycodeInRange(d,k : longint) : longint;

function XkbNumKeys(d : longint) : longint;



type
  _XkbMapChanges = record
      changed : word;
      min_key_code : KeyCode;
      max_key_code : KeyCode;
      first_type : byte;
      num_types : byte;
      first_key_sym : KeyCode;
      num_key_syms : byte;
      first_key_act : KeyCode;
      num_key_acts : byte;
      first_key_behavior : KeyCode;
      num_key_behaviors : byte;
      first_key_explicit : KeyCode;
      num_key_explicit : byte;
      first_modmap_key : KeyCode;
      num_modmap_keys : byte;
      first_vmodmap_key : KeyCode;
      num_vmodmap_keys : byte;
      pad : byte;
      vmods : word;
    end;
  XkbMapChangesRec = _XkbMapChanges;
  XkbMapChangesPtr = ^_XkbMapChanges;

  _XkbControlsChanges = record
      changed_ctrls : dword;
      enabled_ctrls_changes : dword;
      num_groups_changed : Bool;
    end;
  XkbControlsChangesRec = _XkbControlsChanges;
  XkbControlsChangesPtr = ^_XkbControlsChanges;

  _XkbIndicatorChanges = record
      state_changes : dword;
      map_changes : dword;
    end;
  XkbIndicatorChangesRec = _XkbIndicatorChanges;
  XkbIndicatorChangesPtr = ^_XkbIndicatorChanges;

  _XkbNameChanges = record
      changed : dword;
      first_type : byte;
      num_types : byte;
      first_lvl : byte;
      num_lvls : byte;
      num_aliases : byte;
      num_rg : byte;
      first_key : byte;
      num_keys : byte;
      changed_vmods : word;
      changed_indicators : dword;
      changed_groups : byte;
    end;
  XkbNameChangesRec = _XkbNameChanges;
  XkbNameChangesPtr = ^_XkbNameChanges;

  _XkbCompatChanges = record
      changed_groups : byte;
      first_si : word;
      num_si : word;
    end;
  XkbCompatChangesRec = _XkbCompatChanges;
  XkbCompatChangesPtr = ^_XkbCompatChanges;

  _XkbChanges = record
      device_spec : word;
      state_changes : word;
      map : XkbMapChangesRec;
      ctrls : XkbControlsChangesRec;
      indicators : XkbIndicatorChangesRec;
      names : XkbNameChangesRec;
      compat : XkbCompatChangesRec;
    end;
  XkbChangesRec = _XkbChanges;
  XkbChangesPtr = ^_XkbChanges;


  _XkbComponentNames = record
      keymap : ^char;
      keycodes : ^char;
      types : ^char;
      compat : ^char;
      symbols : ^char;
      geometry : ^char;
    end;
  XkbComponentNamesRec = _XkbComponentNames;
  XkbComponentNamesPtr = ^_XkbComponentNames;

  _XkbComponentName = record
      flags : word;
      name : ^char;
    end;
  XkbComponentNameRec = _XkbComponentName;
  XkbComponentNamePtr = ^_XkbComponentName;

  _XkbComponentList = record
      num_keymaps : longint;
      num_keycodes : longint;
      num_types : longint;
      num_compat : longint;
      num_symbols : longint;
      num_geometry : longint;
      keymaps : XkbComponentNamePtr;
      keycodes : XkbComponentNamePtr;
      types : XkbComponentNamePtr;
      compat : XkbComponentNamePtr;
      symbols : XkbComponentNamePtr;
      geometry : XkbComponentNamePtr;
    end;
  XkbComponentListRec = _XkbComponentList;
  XkbComponentListPtr = ^_XkbComponentList;


  _XkbDeviceLedInfo = record
      led_class : word;
      led_id : word;
      phys_indicators : dword;
      maps_present : dword;
      names_present : dword;
      state : dword;
      names : array[0..(XkbNumIndicators)-1] of Atom;
      maps : array[0..(XkbNumIndicators)-1] of XkbIndicatorMapRec;
    end;
  XkbDeviceLedInfoRec = _XkbDeviceLedInfo;
  XkbDeviceLedInfoPtr = ^_XkbDeviceLedInfo;



  _XkbDeviceInfo = record
      name : ^char;
      _type : Atom;
      device_spec : word;
      has_own_state : Bool;
      supported : word;
      unsupported : word;
      num_btns : word;
      btn_acts : ^XkbAction;
      sz_leds : word;
      num_leds : word;
      dflt_kbd_fb : word;
      dflt_led_fb : word;
      leds : XkbDeviceLedInfoPtr;
    end;
  XkbDeviceInfoRec = _XkbDeviceInfo;
  XkbDeviceInfoPtr = ^_XkbDeviceInfo;

function XkbXI_DevHasBtnActs(d : longint) : longint;

function XkbXI_LegalDevBtn(d,b : longint) : longint;

function XkbXI_DevHasLeds(d : longint) : longint;



type
  _XkbDeviceLedChanges = record
      led_class : word;
      led_id : word;
      defined : dword;
      next : ^_XkbDeviceLedChanges;
    end;
  XkbDeviceLedChangesRec = _XkbDeviceLedChanges;
  XkbDeviceLedChangesPtr = ^_XkbDeviceLedChanges;

  _XkbDeviceChanges = record
      changed : dword;
      first_btn : word;
      num_btns : word;
      leds : XkbDeviceLedChangesRec;
    end;
  XkbDeviceChangesRec = _XkbDeviceChanges;
  XkbDeviceChangesPtr = ^_XkbDeviceChanges;
{$ifdef __clang__}
{$endif}
{$endif}


implementation

  function XkbCharToInt(v : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if v(@($80)) then
      if_local1:=longint(v or ( not ($ff)))
    else
      if_local1:=longint(v(@($7f)));
    XkbCharToInt:=if_local1;
  end;

    function Xkb2CharsToInt(h,l : longint) : smallint;
    begin
      Xkb2CharsToInt:=smallint((h shl 8) or l);
    end;

  function XkbModLocks(s : longint) : longint;
  begin
    XkbModLocks:=s^.locked_mods;
  end;

  function XkbStateMods(s : longint) : longint;
  begin
    XkbStateMods:=((s^.base_mods) or (s^.latched_mods)) or (XkbModLocks(s));
  end;

  function XkbGroupLock(s : longint) : longint;
  begin
    XkbGroupLock:=s^.locked_group;
  end;

  function XkbStateGroup(s : longint) : longint;
  begin
    XkbStateGroup:=((s^.base_group)+(s^.latched_group))+(XkbGroupLock(s));
  end;

  function XkbStateFieldFromRec(s : longint) : longint;
  begin
    XkbStateFieldFromRec:=XkbBuildCoreState(s^.lookup_mods,s^.group);
  end;

  function XkbGrabStateFromRec(s : longint) : longint;
  begin
    XkbGrabStateFromRec:=XkbBuildCoreState(s^.grab_mods,s^.group);
  end;

  function XkbNumGroups(g : longint) : g;
  begin
    XkbNumGroups:=g(@($0f));
  end;

  function XkbOutOfRangeGroupInfo(g : longint) : g;
  begin
    XkbOutOfRangeGroupInfo:=g(@($f0));
  end;

  function XkbOutOfRangeGroupAction(g : longint) : g;
  begin
    XkbOutOfRangeGroupAction:=g(@($c0));
  end;

  function XkbOutOfRangeGroupNumber(g : longint) : longint;
  begin
    XkbOutOfRangeGroupNumber:=(g(@($30))) shr 4;
  end;

  function XkbSetGroupInfo(g,w,n : longint) : longint;
  begin
    XkbSetGroupInfo:=((w(@($c0))) or ((n(@(3))) shl 4)) or (g(@($0f)));
  end;

  function XkbSetNumGroups(g,n : longint) : longint;
  begin
    XkbSetNumGroups:=(g(@($f0))) or (n(@($0f)));
  end;

  function XkbModActionVMods(a : longint) : smallint;
  begin
    XkbModActionVMods:=smallint(((a^.vmods1) shl 8) or (a^.vmods2));
  end;

    function XkbSAGroup(a : longint) : longint;
    begin
      XkbSAGroup:=XkbCharToInt(a^.group_XXX);
    end;

  function XkbSASetGroup(a,g : longint) : longint;
  begin
    XkbSASetGroup:=(a^.group_XXX):=g;
  end;

function XkbPtrActionX(a : longint) : longint;
begin
  XkbPtrActionX:=Xkb2CharsToInt(a^.high_XXX,a^.low_XXX);
end;

function XkbPtrActionY(a : longint) : longint;
begin
  XkbPtrActionY:=Xkb2CharsToInt(a^.high_YYY,a^.low_YYY);
end;

function XkbSetPtrActionX(a,x : longint) : longint;
begin
  XkbSetPtrActionX:=XkbIntTo2Chars(x,a^.high_XXX,a^.low_XXX);
end;

function XkbSetPtrActionY(a,y : longint) : longint;
begin
  XkbSetPtrActionY:=XkbIntTo2Chars(y,a^.high_YYY,a^.low_YYY);
end;

function XkbSAPtrDfltValue(a : longint) : longint;
begin
  XkbSAPtrDfltValue:=XkbCharToInt(a^.valueXXX);
end;

function XkbSASetPtrDfltValue(a,c : longint) : longint;
begin
  XkbSASetPtrDfltValue:=(a^.valueXXX):=(c(@($ff)));
end;

function XkbSAScreen(a : longint) : longint;
begin
  XkbSAScreen:=XkbCharToInt(a^.screenXXX);
end;

function XkbSASetScreen(a,s : longint) : longint;
begin
  XkbSASetScreen:=(a^.screenXXX):=(s(@($ff)));
end;

    function XkbActionCtrls(a : longint) : longint;
    begin
      XkbActionCtrls:=((((dword(a^.ctrls3)) shl 24) or ((dword(a^.ctrls2)) shl 16)) or ((dword(a^.ctrls1)) shl 8)) or (dword(a^.ctrls0));
    end;

  function XkbSARedirectVMods(a : longint) : longint;
  begin
    XkbSARedirectVMods:=((dword(a^.vmods1)) shl 8) or (dword(a^.vmods0));
  end;

    function XkbSARedirectVModsMask(a : longint) : longint;
    begin
      XkbSARedirectVModsMask:=((dword(a^.vmods_mask1)) shl 8) or (dword(a^.vmods_mask0));
    end;

    function XkbAX_AnyFeedback(c : longint) : longint;
    begin
      XkbAX_AnyFeedback:=(c^.enabled_ctrls) and XkbAccessXFeedbackMask;
    end;

  function XkbAX_NeedOption(c,w : longint) : longint;
  begin
    XkbAX_NeedOption:=(c^.ax_options) and w;
  end;

function XkbAX_NeedFeedback(c,w : longint) : longint;
begin
  XkbAX_NeedFeedback:=(XkbAX_AnyFeedback(c)) and (@(XkbAX_NeedOption(c,w)));
end;

function XkbSMKeyActionsPtr(m,k : longint) : longint;
begin
  XkbSMKeyActionsPtr:=@(m^.(acts[m^.(key_acts[k])]));
end;

function XkbCMKeyGroupInfo(m,k : longint) : longint;
begin
  XkbCMKeyGroupInfo:=m^.((key_sym_map[k]).group_info);
end;

function XkbCMKeyNumGroups(m,k : longint) : longint;
begin
  XkbCMKeyNumGroups:=XkbNumGroups(m^.((key_sym_map[k]).group_info));
end;

function XkbCMKeyGroupWidth(m,k,g : longint) : longint;
begin
  XkbCMKeyGroupWidth:=(XkbCMKeyType(m,k,g))^.num_levels;
end;

function XkbCMKeyGroupsWidth(m,k : longint) : longint;
begin
  XkbCMKeyGroupsWidth:=m^.((key_sym_map[k]).width);
end;

function XkbCMKeyTypeIndex(m,k,g : longint) : longint;
begin
  XkbCMKeyTypeIndex:=m^.((key_sym_map[k]).(kt_index[g and $3]));
end;

function XkbCMKeyType(m,k,g : longint) : longint;
begin
  XkbCMKeyType:=@(m^.(types[XkbCMKeyTypeIndex(m,k,g)]));
end;

function XkbCMKeyNumSyms(m,k : longint) : longint;
begin
  XkbCMKeyNumSyms:=(XkbCMKeyGroupsWidth(m,k))*(XkbCMKeyNumGroups(m,k));
end;

function XkbCMKeySymsOffset(m,k : longint) : longint;
begin
  XkbCMKeySymsOffset:=m^.((key_sym_map[k]).offset);
end;

function XkbCMKeySymsPtr(m,k : longint) : longint;
begin
  XkbCMKeySymsPtr:=@(m^.(syms[XkbCMKeySymsOffset(m,k)]));
end;

    function XkbKeyKeyTypeIndex(d,k,g : longint) : longint;
    begin
      XkbKeyKeyTypeIndex:=XkbCMKeyTypeIndex(d^.map,k,g);
    end;

  function XkbKeyKeyType(d,k,g : longint) : longint;
  begin
    XkbKeyKeyType:=XkbCMKeyType(d^.map,k,g);
  end;

function XkbKeyGroupWidth(d,k,g : longint) : longint;
begin
  XkbKeyGroupWidth:=XkbCMKeyGroupWidth(d^.map,k,g);
end;

function XkbKeyGroupsWidth(d,k : longint) : longint;
begin
  XkbKeyGroupsWidth:=XkbCMKeyGroupsWidth(d^.map,k);
end;

function XkbKeyGroupInfo(d,k : longint) : longint;
begin
  XkbKeyGroupInfo:=XkbCMKeyGroupInfo(d^.map,k);
end;

function XkbKeyNumGroups(d,k : longint) : longint;
begin
  XkbKeyNumGroups:=XkbCMKeyNumGroups(d^.map,k);
end;

function XkbKeyNumSyms(d,k : longint) : longint;
begin
  XkbKeyNumSyms:=XkbCMKeyNumSyms(d^.map,k);
end;

function XkbKeySymsPtr(d,k : longint) : longint;
begin
  XkbKeySymsPtr:=XkbCMKeySymsPtr(d^.map,k);
end;

    function XkbKeySymEntry(d,k,sl,g : longint) : longint;
    begin
      XkbKeySymEntry:=XkbKeySym(d,k,((XkbKeyGroupsWidth(d,k))*g)+sl);
    end;

    function XkbKeyActionEntry(d,k,sl,g : longint) : longint;
    var
       if_local1 : longint;
    (* result types are not known *)
    begin
      if XkbKeyHasActions(d,k) then
        if_local1:=XkbKeyAction(d,k,((XkbKeyGroupsWidth(d,k))*g)+sl)
      else
        if_local1:=NULL;
      XkbKeyActionEntry:=if_local1;
    end;

  function XkbKeyHasActions(d,k : longint) : longint;
  begin
    XkbKeyHasActions:=(d^.(server^.(key_acts[k])))<>0;
  end;

function XkbKeyNumActions(d,k : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if XkbKeyHasActions(d,k) then
    if_local1:=XkbKeyNumSyms(d,k)
  else
    if_local1:=1;
  XkbKeyNumActions:=if_local1;
end;

function XkbKeyActionsPtr(d,k : longint) : longint;
begin
  XkbKeyActionsPtr:=XkbSMKeyActionsPtr(d^.server,k);
end;

function XkbKeycodeInRange(d,k : longint) : longint;
begin
  XkbKeycodeInRange:=(k>=(d^.min_key_code)) and (@(k<=(d^.max_key_code)));
end;

function XkbNumKeys(d : longint) : longint;
begin
  XkbNumKeys:=((d^.max_key_code)-(d^.min_key_code))+1;
end;

function XkbXI_DevHasBtnActs(d : longint) : longint;
begin
  XkbXI_DevHasBtnActs:=((d^.num_btns)>0) and (@((d^.btn_acts)<>NULL));
end;

function XkbXI_LegalDevBtn(d,b : longint) : longint;
begin
  XkbXI_LegalDevBtn:=(XkbXI_DevHasBtnActs(d)) and (@(b<(d^.num_btns)));
end;

function XkbXI_DevHasLeds(d : longint) : longint;
begin
  XkbXI_DevHasLeds:=((d^.num_leds)>0) and (@((d^.leds)<>NULL));
end;


end.
