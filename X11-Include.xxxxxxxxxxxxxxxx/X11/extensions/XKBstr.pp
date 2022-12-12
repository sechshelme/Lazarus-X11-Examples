
unit XKBstr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBstr.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBstr.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBstr.pp
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
    PAtom  = ^Atom;
    Pbyte  = ^byte;
    Pchar  = ^char;
    PKeySym  = ^KeySym;
    Pword  = ^word;
    PXDisplay  = ^XDisplay;
    PXkbAction  = ^XkbAction;
    PXkbAnyAction  = ^XkbAnyAction;
    PXkbBehavior  = ^XkbBehavior;
    PXkbChanges  = ^XkbChanges;
    PXkbChangesPtr  = ^XkbChangesPtr;
    PXkbChangesRec  = ^XkbChangesRec;
    PXkbClientMapPtr  = ^XkbClientMapPtr;
    PXkbClientMapRec  = ^XkbClientMapRec;
    PXkbCompatChanges  = ^XkbCompatChanges;
    PXkbCompatChangesPtr  = ^XkbCompatChangesPtr;
    PXkbCompatChangesRec  = ^XkbCompatChangesRec;
    PXkbCompatMapPtr  = ^XkbCompatMapPtr;
    PXkbCompatMapRec  = ^XkbCompatMapRec;
    PXkbComponentList  = ^XkbComponentList;
    PXkbComponentListPtr  = ^XkbComponentListPtr;
    PXkbComponentListRec  = ^XkbComponentListRec;
    PXkbComponentName  = ^XkbComponentName;
    PXkbComponentNamePtr  = ^XkbComponentNamePtr;
    PXkbComponentNameRec  = ^XkbComponentNameRec;
    PXkbComponentNames  = ^XkbComponentNames;
    PXkbComponentNamesPtr  = ^XkbComponentNamesPtr;
    PXkbComponentNamesRec  = ^XkbComponentNamesRec;
    PXkbControls  = ^XkbControls;
    PXkbControlsChanges  = ^XkbControlsChanges;
    PXkbControlsChangesPtr  = ^XkbControlsChangesPtr;
    PXkbControlsChangesRec  = ^XkbControlsChangesRec;
    PXkbControlsPtr  = ^XkbControlsPtr;
    PXkbControlsRec  = ^XkbControlsRec;
    PXkbCtrlsAction  = ^XkbCtrlsAction;
    PXkbDesc  = ^XkbDesc;
    PXkbDescPtr  = ^XkbDescPtr;
    PXkbDescRec  = ^XkbDescRec;
    PXkbDeviceBtnAction  = ^XkbDeviceBtnAction;
    PXkbDeviceChanges  = ^XkbDeviceChanges;
    PXkbDeviceChangesPtr  = ^XkbDeviceChangesPtr;
    PXkbDeviceChangesRec  = ^XkbDeviceChangesRec;
    PXkbDeviceInfo  = ^XkbDeviceInfo;
    PXkbDeviceInfoPtr  = ^XkbDeviceInfoPtr;
    PXkbDeviceInfoRec  = ^XkbDeviceInfoRec;
    PXkbDeviceLedChanges  = ^XkbDeviceLedChanges;
    PXkbDeviceLedChangesPtr  = ^XkbDeviceLedChangesPtr;
    PXkbDeviceLedChangesRec  = ^XkbDeviceLedChangesRec;
    PXkbDeviceLedInfo  = ^XkbDeviceLedInfo;
    PXkbDeviceLedInfoPtr  = ^XkbDeviceLedInfoPtr;
    PXkbDeviceLedInfoRec  = ^XkbDeviceLedInfoRec;
    PXkbDeviceValuatorAction  = ^XkbDeviceValuatorAction;
    PXkbGeometry  = ^XkbGeometry;
    PXkbGeometryPtr  = ^XkbGeometryPtr;
    PXkbGroupAction  = ^XkbGroupAction;
    PXkbIndicatorChanges  = ^XkbIndicatorChanges;
    PXkbIndicatorChangesPtr  = ^XkbIndicatorChangesPtr;
    PXkbIndicatorChangesRec  = ^XkbIndicatorChangesRec;
    PXkbIndicatorMapPtr  = ^XkbIndicatorMapPtr;
    PXkbIndicatorMapRec  = ^XkbIndicatorMapRec;
    PXkbIndicatorPtr  = ^XkbIndicatorPtr;
    PXkbIndicatorRec  = ^XkbIndicatorRec;
    PXkbISOAction  = ^XkbISOAction;
    PXkbKeyAliasPtr  = ^XkbKeyAliasPtr;
    PXkbKeyAliasRec  = ^XkbKeyAliasRec;
    PXkbKeyNamePtr  = ^XkbKeyNamePtr;
    PXkbKeyNameRec  = ^XkbKeyNameRec;
    PXkbKeyType  = ^XkbKeyType;
    PXkbKeyTypePtr  = ^XkbKeyTypePtr;
    PXkbKeyTypeRec  = ^XkbKeyTypeRec;
    PXkbKTMapEntry  = ^XkbKTMapEntry;
    PXkbKTMapEntryPtr  = ^XkbKTMapEntryPtr;
    PXkbKTMapEntryRec  = ^XkbKTMapEntryRec;
    PXkbMapChanges  = ^XkbMapChanges;
    PXkbMapChangesPtr  = ^XkbMapChangesPtr;
    PXkbMapChangesRec  = ^XkbMapChangesRec;
    PXkbMessageAction  = ^XkbMessageAction;
    PXkbModAction  = ^XkbModAction;
    PXkbMods  = ^XkbMods;
    PXkbModsPtr  = ^XkbModsPtr;
    PXkbModsRec  = ^XkbModsRec;
    PXkbNameChanges  = ^XkbNameChanges;
    PXkbNameChangesPtr  = ^XkbNameChangesPtr;
    PXkbNameChangesRec  = ^XkbNameChangesRec;
    PXkbNamesPtr  = ^XkbNamesPtr;
    PXkbNamesRec  = ^XkbNamesRec;
    PXkbPtrAction  = ^XkbPtrAction;
    PXkbPtrBtnAction  = ^XkbPtrBtnAction;
    PXkbPtrDfltAction  = ^XkbPtrDfltAction;
    PXkbRedirectKeyAction  = ^XkbRedirectKeyAction;
    PXkbServerMapPtr  = ^XkbServerMapPtr;
    PXkbServerMapRec  = ^XkbServerMapRec;
    PXkbStatePtr  = ^XkbStatePtr;
    PXkbStateRec  = ^XkbStateRec;
    PXkbSwitchScreenAction  = ^XkbSwitchScreenAction;
    PXkbSymInterpretPtr  = ^XkbSymInterpretPtr;
    PXkbSymInterpretRec  = ^XkbSymInterpretRec;
    PXkbSymMapPtr  = ^XkbSymMapPtr;
    PXkbSymMapRec  = ^XkbSymMapRec;
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
      PXkbStateRec = ^TXkbStateRec;
      TXkbStateRec = record
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
      TXkbStatePtr = PXkbStateRec;
      PXkbStatePtr = ^TXkbStatePtr;

    function XkbModLocks(s : longint) : longint;    

    function XkbStateMods(s : longint) : longint;    

    function XkbGroupLock(s : longint) : longint;    

    function XkbStateGroup(s : longint) : longint;    

    function XkbStateFieldFromRec(s : longint) : longint;    

    function XkbGrabStateFromRec(s : longint) : longint;    


    type
      PXkbMods = ^TXkbMods;
      TXkbMods = record
          mask : byte;
          real_mods : byte;
          vmods : word;
        end;
      TXkbModsRec = TXkbMods;
      PXkbModsRec = ^TXkbModsRec;
      TXkbModsPtr = PXkbMods;
      PXkbModsPtr = ^TXkbModsPtr;

      PXkbKTMapEntry = ^TXkbKTMapEntry;
      TXkbKTMapEntry = record
          active : TBool;
          level : byte;
          mods : TXkbModsRec;
        end;
      TXkbKTMapEntryRec = TXkbKTMapEntry;
      PXkbKTMapEntryRec = ^TXkbKTMapEntryRec;
      TXkbKTMapEntryPtr = PXkbKTMapEntry;
      PXkbKTMapEntryPtr = ^TXkbKTMapEntryPtr;




      PXkbKeyType = ^TXkbKeyType;
      TXkbKeyType = record
          mods : TXkbModsRec;
          num_levels : byte;
          map_count : byte;
          map : TXkbKTMapEntryPtr;
          preserve : TXkbModsPtr;
          name : TAtom;
          level_names : PAtom;
        end;
      TXkbKeyTypeRec = TXkbKeyType;
      PXkbKeyTypeRec = ^TXkbKeyTypeRec;
      TXkbKeyTypePtr = PXkbKeyType;
      PXkbKeyTypePtr = ^TXkbKeyTypePtr;

    function XkbNumGroups(g : longint) : Tg;    

    function XkbOutOfRangeGroupInfo(g : longint) : Tg;    

    function XkbOutOfRangeGroupAction(g : longint) : Tg;    

    function XkbOutOfRangeGroupNumber(g : longint) : longint;    

    function XkbSetGroupInfo(g,w,n : longint) : longint;    

    function XkbSetNumGroups(g,n : longint) : longint;    


    type
      PXkbBehavior = ^TXkbBehavior;
      TXkbBehavior = record
          _type : byte;
          data : byte;
        end;

    const
      XkbAnyActionDataSize = 7;      
    type
      PXkbAnyAction = ^TXkbAnyAction;
      TXkbAnyAction = record
          _type : byte;
          data : array[0..(XkbAnyActionDataSize)-1] of byte;
        end;

      PXkbModAction = ^TXkbModAction;
      TXkbModAction = record
          _type : byte;
          flags : byte;
          mask : byte;
          real_mods : byte;
          vmods1 : byte;
          vmods2 : byte;
        end;

    function XkbModActionVMods(a : longint) : smallint;    

(* error 
	(((a)->vmods1=(((v)>>8)&0xff)),(a)->vmods2=((v)&0xff))
in define line 132 *)
    type
      PXkbGroupAction = ^TXkbGroupAction;
      TXkbGroupAction = record
          _type : byte;
          flags : byte;
          group_XXX : char;
        end;

    function XkbSAGroup(a : longint) : longint;    

    function XkbSASetGroup(a,g : longint) : longint;    

    type
      PXkbISOAction = ^TXkbISOAction;
      TXkbISOAction = record
          _type : byte;
          flags : byte;
          mask : byte;
          real_mods : byte;
          group_XXX : char;
          affect : byte;
          vmods1 : byte;
          vmods2 : byte;
        end;

      PXkbPtrAction = ^TXkbPtrAction;
      TXkbPtrAction = record
          _type : byte;
          flags : byte;
          high_XXX : byte;
          low_XXX : byte;
          high_YYY : byte;
          low_YYY : byte;
        end;

    function XkbPtrActionX(a : longint) : longint;    

    function XkbPtrActionY(a : longint) : longint;    

    function XkbSetPtrActionX(a,x : longint) : longint;    

    function XkbSetPtrActionY(a,y : longint) : longint;    

    type
      PXkbPtrBtnAction = ^TXkbPtrBtnAction;
      TXkbPtrBtnAction = record
          _type : byte;
          flags : byte;
          count : byte;
          button : byte;
        end;

      PXkbPtrDfltAction = ^TXkbPtrDfltAction;
      TXkbPtrDfltAction = record
          _type : byte;
          flags : byte;
          affect : byte;
          valueXXX : char;
        end;

    function XkbSAPtrDfltValue(a : longint) : longint;    

    function XkbSASetPtrDfltValue(a,c : longint) : longint;    

    type
      PXkbSwitchScreenAction = ^TXkbSwitchScreenAction;
      TXkbSwitchScreenAction = record
          _type : byte;
          flags : byte;
          screenXXX : char;
        end;

    function XkbSAScreen(a : longint) : longint;    

    function XkbSASetScreen(a,s : longint) : longint;    

    type
      PXkbCtrlsAction = ^TXkbCtrlsAction;
      TXkbCtrlsAction = record
          _type : byte;
          flags : byte;
          ctrls3 : byte;
          ctrls2 : byte;
          ctrls1 : byte;
          ctrls0 : byte;
        end;
(* error 
#define	XkbActionSetCtrls(a,c)	(((a)->ctrls3=(((c)>>24)&0xff)),\
in define line 201 *)

    function XkbActionCtrls(a : longint) : longint;    

    type
      PXkbMessageAction = ^TXkbMessageAction;
      TXkbMessageAction = record
          _type : byte;
          flags : byte;
          message : array[0..5] of byte;
        end;

      PXkbRedirectKeyAction = ^TXkbRedirectKeyAction;
      TXkbRedirectKeyAction = record
          _type : byte;
          new_key : byte;
          mods_mask : byte;
          mods : byte;
          vmods_mask0 : byte;
          vmods_mask1 : byte;
          vmods0 : byte;
          vmods1 : byte;
        end;

    function XkbSARedirectVMods(a : longint) : longint;    

(* error 
#define	XkbSARedirectSetVMods(a,m)	(((a)->vmods1=(((m)>>8)&0xff)),\
in define line 227 *)
    function XkbSARedirectVModsMask(a : longint) : longint;    

(* error 
#define	XkbSARedirectSetVModsMask(a,m)	(((a)->vmods_mask1=(((m)>>8)&0xff)),\
in define line 231 *)
    type
      PXkbDeviceBtnAction = ^TXkbDeviceBtnAction;
      TXkbDeviceBtnAction = record
          _type : byte;
          flags : byte;
          count : byte;
          button : byte;
          device : byte;
        end;

      PXkbDeviceValuatorAction = ^TXkbDeviceValuatorAction;
      TXkbDeviceValuatorAction = record
          _type : byte;
          device : byte;
          v1_what : byte;
          v1_ndx : byte;
          v1_value : byte;
          v2_what : byte;
          v2_ndx : byte;
          v2_value : byte;
        end;

      PXkbAction = ^TXkbAction;
      TXkbAction = record
          case longint of
            0 : ( any : TXkbAnyAction );
            1 : ( mods : TXkbModAction );
            2 : ( group : TXkbGroupAction );
            3 : ( iso : TXkbISOAction );
            4 : ( ptr : TXkbPtrAction );
            5 : ( btn : TXkbPtrBtnAction );
            6 : ( dflt : TXkbPtrDfltAction );
            7 : ( screen : TXkbSwitchScreenAction );
            8 : ( ctrls : TXkbCtrlsAction );
            9 : ( msg : TXkbMessageAction );
            10 : ( redirect : TXkbRedirectKeyAction );
            11 : ( devbtn : TXkbDeviceBtnAction );
            12 : ( devval : TXkbDeviceValuatorAction );
            13 : ( _type : byte );
          end;

      PXkbControls = ^TXkbControls;
      TXkbControls = record
          mk_dflt_btn : byte;
          num_groups : byte;
          groups_wrap : byte;
          internal : TXkbModsRec;
          ignore_lock : TXkbModsRec;
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
      TXkbControlsRec = TXkbControls;
      PXkbControlsRec = ^TXkbControlsRec;
      TXkbControlsPtr = PXkbControls;
      PXkbControlsPtr = ^TXkbControlsPtr;

    function XkbAX_AnyFeedback(c : longint) : longint;    

    function XkbAX_NeedOption(c,w : longint) : longint;    

    function XkbAX_NeedFeedback(c,w : longint) : longint;    



{$if defined(__cplusplus) || defined(c_plusplus)}

{$else}
{$endif}
    type
      PXkbServerMapRec = ^TXkbServerMapRec;
      TXkbServerMapRec = record
          num_acts : word;
          size_acts : word;
          acts : PXkbAction;
          behaviors : PXkbBehavior;
          key_acts : Pword;
          c_explicit : Pbyte;
          explicit : Pbyte;
          vmods : array[0..(XkbNumVirtualMods)-1] of byte;
          vmodmap : Pword;
        end;
      TXkbServerMapPtr = PXkbServerMapRec;
      PXkbServerMapPtr = ^TXkbServerMapPtr;

    function XkbSMKeyActionsPtr(m,k : longint) : longint;    


    type
      PXkbSymMapRec = ^TXkbSymMapRec;
      TXkbSymMapRec = record
          kt_index : array[0..(XkbNumKbdGroups)-1] of byte;
          group_info : byte;
          width : byte;
          offset : word;
        end;
      TXkbSymMapPtr = PXkbSymMapRec;
      PXkbSymMapPtr = ^TXkbSymMapPtr;





      PXkbClientMapRec = ^TXkbClientMapRec;
      TXkbClientMapRec = record
          size_types : byte;
          num_types : byte;
          types : TXkbKeyTypePtr;
          size_syms : word;
          num_syms : word;
          syms : PKeySym;
          key_sym_map : TXkbSymMapPtr;
          modmap : Pbyte;
        end;
      TXkbClientMapPtr = PXkbClientMapRec;
      PXkbClientMapPtr = ^TXkbClientMapPtr;

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
      PXkbSymInterpretRec = ^TXkbSymInterpretRec;
      TXkbSymInterpretRec = record
          sym : TKeySym;
          flags : byte;
          match : byte;
          mods : byte;
          virtual_mod : byte;
          act : TXkbAnyAction;
        end;
      TXkbSymInterpretPtr = PXkbSymInterpretRec;
      PXkbSymInterpretPtr = ^TXkbSymInterpretPtr;


      PXkbCompatMapRec = ^TXkbCompatMapRec;
      TXkbCompatMapRec = record
          sym_interpret : TXkbSymInterpretPtr;
          groups : array[0..(XkbNumKbdGroups)-1] of TXkbModsRec;
          num_si : word;
          size_si : word;
        end;
      TXkbCompatMapPtr = PXkbCompatMapRec;
      PXkbCompatMapPtr = ^TXkbCompatMapPtr;

      PXkbIndicatorMapRec = ^TXkbIndicatorMapRec;
      TXkbIndicatorMapRec = record
          flags : byte;
          which_groups : byte;
          groups : byte;
          which_mods : byte;
          mods : TXkbModsRec;
          ctrls : dword;
        end;
      TXkbIndicatorMapPtr = PXkbIndicatorMapRec;
      PXkbIndicatorMapPtr = ^TXkbIndicatorMapPtr;
(* error 
			    (((i)->which_groups&&(i)->groups)||\
in define line 394 *)
(* error 
#define	XkbIM_InUse(i)	(((i)->flags)||((i)->which_groups)||\
in define line 396 *)

      PXkbIndicatorRec = ^TXkbIndicatorRec;
      TXkbIndicatorRec = record
          phys_indicators : dword;
          maps : array[0..(XkbNumIndicators)-1] of TXkbIndicatorMapRec;
        end;
      TXkbIndicatorPtr = PXkbIndicatorRec;
      PXkbIndicatorPtr = ^TXkbIndicatorPtr;
(* error 
	char	name[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

      PXkbKeyNameRec = ^TXkbKeyNameRec;
      TXkbKeyNameRec = record
          XkbKeyNameLength : char;
        end;
      TXkbKeyNamePtr = PXkbKeyNameRec;
      PXkbKeyNamePtr = ^TXkbKeyNamePtr;
(* error 
	char	real[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)
(* error 
	char	alias[XkbKeyNameLength]	_X_NONSTRING;
 in declarator_list *)

      PXkbKeyAliasRec = ^TXkbKeyAliasRec;
      TXkbKeyAliasRec = record
          XkbKeyNameLength : char;
          XkbKeyNameLength : char;
        end;
      TXkbKeyAliasPtr = PXkbKeyAliasRec;
      PXkbKeyAliasPtr = ^TXkbKeyAliasPtr;






      PXkbNamesRec = ^TXkbNamesRec;
      TXkbNamesRec = record
          keycodes : TAtom;
          geometry : TAtom;
          symbols : TAtom;
          types : TAtom;
          compat : TAtom;
          vmods : array[0..(XkbNumVirtualMods)-1] of TAtom;
          indicators : array[0..(XkbNumIndicators)-1] of TAtom;
          groups : array[0..(XkbNumKbdGroups)-1] of TAtom;
          keys : TXkbKeyNamePtr;
          key_aliases : TXkbKeyAliasPtr;
          radio_groups : PAtom;
          phys_symbols : TAtom;
          num_keys : byte;
          num_key_aliases : byte;
          num_rg : word;
        end;
      TXkbNamesPtr = PXkbNamesRec;
      PXkbNamesPtr = ^TXkbNamesPtr;

      PXkbGeometryPtr = ^TXkbGeometryPtr;
      TXkbGeometryPtr = PXkbGeometry;


      PXkbDesc = ^TXkbDesc;
      TXkbDesc = record
          dpy : PXDisplay;
          flags : word;
          device_spec : word;
          min_key_code : TKeyCode;
          max_key_code : TKeyCode;
          ctrls : TXkbControlsPtr;
          server : TXkbServerMapPtr;
          map : TXkbClientMapPtr;
          indicators : TXkbIndicatorPtr;
          names : TXkbNamesPtr;
          compat : TXkbCompatMapPtr;
          geom : TXkbGeometryPtr;
        end;
      TXkbDescRec = TXkbDesc;
      PXkbDescRec = ^TXkbDescRec;
      TXkbDescPtr = PXkbDesc;
      PXkbDescPtr = ^TXkbDescPtr;

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
      PXkbMapChanges = ^TXkbMapChanges;
      TXkbMapChanges = record
          changed : word;
          min_key_code : TKeyCode;
          max_key_code : TKeyCode;
          first_type : byte;
          num_types : byte;
          first_key_sym : TKeyCode;
          num_key_syms : byte;
          first_key_act : TKeyCode;
          num_key_acts : byte;
          first_key_behavior : TKeyCode;
          num_key_behaviors : byte;
          first_key_explicit : TKeyCode;
          num_key_explicit : byte;
          first_modmap_key : TKeyCode;
          num_modmap_keys : byte;
          first_vmodmap_key : TKeyCode;
          num_vmodmap_keys : byte;
          pad : byte;
          vmods : word;
        end;
      TXkbMapChangesRec = TXkbMapChanges;
      PXkbMapChangesRec = ^TXkbMapChangesRec;
      TXkbMapChangesPtr = PXkbMapChanges;
      PXkbMapChangesPtr = ^TXkbMapChangesPtr;

      PXkbControlsChanges = ^TXkbControlsChanges;
      TXkbControlsChanges = record
          changed_ctrls : dword;
          enabled_ctrls_changes : dword;
          num_groups_changed : TBool;
        end;
      TXkbControlsChangesRec = TXkbControlsChanges;
      PXkbControlsChangesRec = ^TXkbControlsChangesRec;
      TXkbControlsChangesPtr = PXkbControlsChanges;
      PXkbControlsChangesPtr = ^TXkbControlsChangesPtr;

      PXkbIndicatorChanges = ^TXkbIndicatorChanges;
      TXkbIndicatorChanges = record
          state_changes : dword;
          map_changes : dword;
        end;
      TXkbIndicatorChangesRec = TXkbIndicatorChanges;
      PXkbIndicatorChangesRec = ^TXkbIndicatorChangesRec;
      TXkbIndicatorChangesPtr = PXkbIndicatorChanges;
      PXkbIndicatorChangesPtr = ^TXkbIndicatorChangesPtr;

      PXkbNameChanges = ^TXkbNameChanges;
      TXkbNameChanges = record
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
      TXkbNameChangesRec = TXkbNameChanges;
      PXkbNameChangesRec = ^TXkbNameChangesRec;
      TXkbNameChangesPtr = PXkbNameChanges;
      PXkbNameChangesPtr = ^TXkbNameChangesPtr;

      PXkbCompatChanges = ^TXkbCompatChanges;
      TXkbCompatChanges = record
          changed_groups : byte;
          first_si : word;
          num_si : word;
        end;
      TXkbCompatChangesRec = TXkbCompatChanges;
      PXkbCompatChangesRec = ^TXkbCompatChangesRec;
      TXkbCompatChangesPtr = PXkbCompatChanges;
      PXkbCompatChangesPtr = ^TXkbCompatChangesPtr;

      PXkbChanges = ^TXkbChanges;
      TXkbChanges = record
          device_spec : word;
          state_changes : word;
          map : TXkbMapChangesRec;
          ctrls : TXkbControlsChangesRec;
          indicators : TXkbIndicatorChangesRec;
          names : TXkbNameChangesRec;
          compat : TXkbCompatChangesRec;
        end;
      TXkbChangesRec = TXkbChanges;
      PXkbChangesRec = ^TXkbChangesRec;
      TXkbChangesPtr = PXkbChanges;
      PXkbChangesPtr = ^TXkbChangesPtr;


      PXkbComponentNames = ^TXkbComponentNames;
      TXkbComponentNames = record
          keymap : Pchar;
          keycodes : Pchar;
          types : Pchar;
          compat : Pchar;
          symbols : Pchar;
          geometry : Pchar;
        end;
      TXkbComponentNamesRec = TXkbComponentNames;
      PXkbComponentNamesRec = ^TXkbComponentNamesRec;
      TXkbComponentNamesPtr = PXkbComponentNames;
      PXkbComponentNamesPtr = ^TXkbComponentNamesPtr;

      PXkbComponentName = ^TXkbComponentName;
      TXkbComponentName = record
          flags : word;
          name : Pchar;
        end;
      TXkbComponentNameRec = TXkbComponentName;
      PXkbComponentNameRec = ^TXkbComponentNameRec;
      TXkbComponentNamePtr = PXkbComponentName;
      PXkbComponentNamePtr = ^TXkbComponentNamePtr;

      PXkbComponentList = ^TXkbComponentList;
      TXkbComponentList = record
          num_keymaps : longint;
          num_keycodes : longint;
          num_types : longint;
          num_compat : longint;
          num_symbols : longint;
          num_geometry : longint;
          keymaps : TXkbComponentNamePtr;
          keycodes : TXkbComponentNamePtr;
          types : TXkbComponentNamePtr;
          compat : TXkbComponentNamePtr;
          symbols : TXkbComponentNamePtr;
          geometry : TXkbComponentNamePtr;
        end;
      TXkbComponentListRec = TXkbComponentList;
      PXkbComponentListRec = ^TXkbComponentListRec;
      TXkbComponentListPtr = PXkbComponentList;
      PXkbComponentListPtr = ^TXkbComponentListPtr;


      PXkbDeviceLedInfo = ^TXkbDeviceLedInfo;
      TXkbDeviceLedInfo = record
          led_class : word;
          led_id : word;
          phys_indicators : dword;
          maps_present : dword;
          names_present : dword;
          state : dword;
          names : array[0..(XkbNumIndicators)-1] of TAtom;
          maps : array[0..(XkbNumIndicators)-1] of TXkbIndicatorMapRec;
        end;
      TXkbDeviceLedInfoRec = TXkbDeviceLedInfo;
      PXkbDeviceLedInfoRec = ^TXkbDeviceLedInfoRec;
      TXkbDeviceLedInfoPtr = PXkbDeviceLedInfo;
      PXkbDeviceLedInfoPtr = ^TXkbDeviceLedInfoPtr;



      PXkbDeviceInfo = ^TXkbDeviceInfo;
      TXkbDeviceInfo = record
          name : Pchar;
          _type : TAtom;
          device_spec : word;
          has_own_state : TBool;
          supported : word;
          unsupported : word;
          num_btns : word;
          btn_acts : PXkbAction;
          sz_leds : word;
          num_leds : word;
          dflt_kbd_fb : word;
          dflt_led_fb : word;
          leds : TXkbDeviceLedInfoPtr;
        end;
      TXkbDeviceInfoRec = TXkbDeviceInfo;
      PXkbDeviceInfoRec = ^TXkbDeviceInfoRec;
      TXkbDeviceInfoPtr = PXkbDeviceInfo;
      PXkbDeviceInfoPtr = ^TXkbDeviceInfoPtr;

    function XkbXI_DevHasBtnActs(d : longint) : longint;    

    function XkbXI_LegalDevBtn(d,b : longint) : longint;    

    function XkbXI_DevHasLeds(d : longint) : longint;    


    type
      PXkbDeviceLedChanges = ^TXkbDeviceLedChanges;
      TXkbDeviceLedChanges = record
          led_class : word;
          led_id : word;
          defined : dword;
          next : PXkbDeviceLedChanges;
        end;
      TXkbDeviceLedChangesRec = TXkbDeviceLedChanges;
      PXkbDeviceLedChangesRec = ^TXkbDeviceLedChangesRec;
      TXkbDeviceLedChangesPtr = PXkbDeviceLedChanges;
      PXkbDeviceLedChangesPtr = ^TXkbDeviceLedChangesPtr;

      PXkbDeviceChanges = ^TXkbDeviceChanges;
      TXkbDeviceChanges = record
          changed : dword;
          first_btn : word;
          num_btns : word;
          leds : TXkbDeviceLedChangesRec;
        end;
      TXkbDeviceChangesRec = TXkbDeviceChanges;
      PXkbDeviceChangesRec = ^TXkbDeviceChangesRec;
      TXkbDeviceChangesPtr = PXkbDeviceChanges;
      PXkbDeviceChangesPtr = ^TXkbDeviceChangesPtr;
{$ifdef __clang__}
{$endif}
{$endif}


implementation

function XkbCharToInt(v : longint) : longint;
var
   if_local1 : longint;
(* result types are not known *)
begin
  if Tv(@($80)) then
    if_local1:=longint(v or ( not ($ff)))
  else
    if_local1:=longint(Tv(@($7f)));
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

    function XkbNumGroups(g : longint) : Tg;
    begin
      XkbNumGroups:=Tg(@($0f));
    end;

    function XkbOutOfRangeGroupInfo(g : longint) : Tg;
    begin
      XkbOutOfRangeGroupInfo:=Tg(@($f0));
    end;

    function XkbOutOfRangeGroupAction(g : longint) : Tg;
    begin
      XkbOutOfRangeGroupAction:=Tg(@($c0));
    end;

    function XkbOutOfRangeGroupNumber(g : longint) : longint;
    begin
      XkbOutOfRangeGroupNumber:=(Tg(@($30))) shr 4;
    end;

    function XkbSetGroupInfo(g,w,n : longint) : longint;
    begin
      XkbSetGroupInfo:=((Tw(@($c0))) or ((Tn(@(3))) shl 4)) or (Tg(@($0f)));
    end;

    function XkbSetNumGroups(g,n : longint) : longint;
    begin
      XkbSetNumGroups:=(Tg(@($f0))) or (Tn(@($0f)));
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
      XkbSASetPtrDfltValue:=(a^.valueXXX):=(Tc(@($ff)));
    end;

    function XkbSAScreen(a : longint) : longint;
    begin
      XkbSAScreen:=XkbCharToInt(a^.screenXXX);
    end;

    function XkbSASetScreen(a,s : longint) : longint;
    begin
      XkbSASetScreen:=(a^.screenXXX):=(Ts(@($ff)));
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
