
unit Xrandr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/Xrandr.h
  The following command line parameters were used:
    /usr/include/X11/extensions/Xrandr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/Xrandr.pp
}

    Type
    PAtom  = ^Atom;
    Pbyte  = ^byte;
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PRotation  = ^Rotation;
    PRROutput  = ^RROutput;
    Psmallint  = ^smallint;
    PTime  = ^Time;
    PXEvent  = ^XEvent;
    PXRRCrtcGamma  = ^XRRCrtcGamma;
    PXRRCrtcInfo  = ^XRRCrtcInfo;
    PXRRCrtcTransformAttributes  = ^XRRCrtcTransformAttributes;
    PXRRModeInfo  = ^XRRModeInfo;
    PXRRMonitorInfo  = ^XRRMonitorInfo;
    PXRROutputInfo  = ^XRROutputInfo;
    PXRRPanning  = ^XRRPanning;
    PXRRPropertyInfo  = ^XRRPropertyInfo;
    PXRRProviderInfo  = ^XRRProviderInfo;
    PXRRProviderResources  = ^XRRProviderResources;
    PXRRScreenConfiguration  = ^XRRScreenConfiguration;
    PXRRScreenResources  = ^XRRScreenResources;
    PXRRScreenSize  = ^XRRScreenSize;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XRANDR_H_}
{$define _XRANDR_H_}  
{$include <X11/extensions/randr.h>}
{$include <X11/extensions/Xrender.h>}
{$include <X11/Xfuncproto.h>}
(* error 
typedef XID RROutput;
in declaration at line 39 *)

    type
      RRCrtc = XID;

      RRMode = XID;

      RRProvider = XID;

      XRRScreenSize = record
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
        end;










      XRRScreenChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          root : Window;
          timestamp : Time;
          config_timestamp : Time;
          size_index : SizeID;
          subpixel_order : SubpixelOrder;
          rotation : Rotation;
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
        end;







      XRRNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
        end;












      XRROutputChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          output : RROutput;
          crtc : RRCrtc;
          mode : RRMode;
          rotation : Rotation;
          connection : Connection;
          subpixel_order : SubpixelOrder;
        end;












      XRRCrtcChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          crtc : RRCrtc;
          mode : RRMode;
          rotation : Rotation;
          x : longint;
          y : longint;
          width : dword;
          height : dword;
        end;











      XRROutputPropertyNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          output : RROutput;
          _property : Atom;
          timestamp : Time;
          state : longint;
        end;









      XRRProviderChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          provider : RRProvider;
          timestamp : Time;
          current_role : dword;
        end;











      XRRProviderPropertyNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          provider : RRProvider;
          _property : Atom;
          timestamp : Time;
          state : longint;
        end;








      XRRResourceChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : Bool;
          display : ^Display;
          window : Window;
          subtype : longint;
          timestamp : Time;
        end;

      _XRRScreenConfiguration = XRRScreenConfiguration;

    function XRRQueryExtension(dpy:PDisplay; event_base_return:Plongint; error_base_return:Plongint):Bool;

    function XRRQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;

    function XRRGetScreenInfo(dpy:PDisplay; window:Window):^XRRScreenConfiguration;

    procedure XRRFreeScreenConfigInfo(config:PXRRScreenConfiguration);


    function XRRSetScreenConfig(dpy:PDisplay; config:PXRRScreenConfiguration; draw:Drawable; size_index:longint; rotation:Rotation; 
               timestamp:Time):Status;


    function XRRSetScreenConfigAndRate(dpy:PDisplay; config:PXRRScreenConfiguration; draw:Drawable; size_index:longint; rotation:Rotation; 
               rate:smallint; timestamp:Time):Status;

    function XRRConfigRotations(config:PXRRScreenConfiguration; current_rotation:PRotation):Rotation;

    function XRRConfigTimes(config:PXRRScreenConfiguration; config_timestamp:PTime):Time;

    function XRRConfigSizes(config:PXRRScreenConfiguration; nsizes:Plongint):^XRRScreenSize;

    function XRRConfigRates(config:PXRRScreenConfiguration; sizeID:longint; nrates:Plongint):^smallint;

    function XRRConfigCurrentConfiguration(config:PXRRScreenConfiguration; rotation:PRotation):SizeID;

    function XRRConfigCurrentRate(config:PXRRScreenConfiguration):smallint;

    function XRRRootToScreen(dpy:PDisplay; root:Window):longint;


    procedure XRRSelectInput(dpy:PDisplay; window:Window; mask:longint);


    function XRRRotations(dpy:PDisplay; screen:longint; current_rotation:PRotation):Rotation;

    function XRRSizes(dpy:PDisplay; screen:longint; nsizes:Plongint):^XRRScreenSize;

    function XRRRates(dpy:PDisplay; screen:longint; sizeID:longint; nrates:Plongint):^smallint;

    function XRRTimes(dpy:PDisplay; screen:longint; config_timestamp:PTime):Time;



    function XRRGetScreenSizeRange(dpy:PDisplay; window:Window; minWidth:Plongint; minHeight:Plongint; maxWidth:Plongint; 
               maxHeight:Plongint):Status;

    procedure XRRSetScreenSize(dpy:PDisplay; window:Window; width:longint; height:longint; mmWidth:longint; 
                mmHeight:longint);


    type
      XRRModeFlags = dword;

      _XRRModeInfo = record
          id : RRMode;
          width : dword;
          height : dword;
          dotClock : dword;
          hSyncStart : dword;
          hSyncEnd : dword;
          hTotal : dword;
          hSkew : dword;
          vSyncStart : dword;
          vSyncEnd : dword;
          vTotal : dword;
          name : ^char;
          nameLength : dword;
          modeFlags : XRRModeFlags;
        end;
      XRRModeInfo = _XRRModeInfo;

      _XRRScreenResources = record
          timestamp : Time;
          configTimestamp : Time;
          ncrtc : longint;
          crtcs : ^RRCrtc;
          noutput : longint;
          outputs : ^RROutput;
          nmode : longint;
          modes : ^XRRModeInfo;
        end;
      XRRScreenResources = _XRRScreenResources;

    function XRRGetScreenResources(dpy:PDisplay; window:Window):^XRRScreenResources;

    procedure XRRFreeScreenResources(resources:PXRRScreenResources);


    type
      _XRROutputInfo = record
          timestamp : Time;
          crtc : RRCrtc;
          name : ^char;
          nameLen : longint;
          mm_width : dword;
          mm_height : dword;
          connection : Connection;
          subpixel_order : SubpixelOrder;
          ncrtc : longint;
          crtcs : ^RRCrtc;
          nclone : longint;
          clones : ^RROutput;
          nmode : longint;
          npreferred : longint;
          modes : ^RRMode;
        end;
      XRROutputInfo = _XRROutputInfo;

    function XRRGetOutputInfo(dpy:PDisplay; resources:PXRRScreenResources; output:RROutput):^XRROutputInfo;

    procedure XRRFreeOutputInfo(outputInfo:PXRROutputInfo);

    function XRRListOutputProperties(dpy:PDisplay; output:RROutput; nprop:Plongint):^Atom;


    type
      XRRPropertyInfo = record
          pending : Bool;
          range : Bool;
          immutable : Bool;
          num_values : longint;
          values : ^longint;
        end;

    function XRRQueryOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom):^XRRPropertyInfo;

    procedure XRRConfigureOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom; pending:Bool; range:Bool; 
                num_values:longint; values:Plongint);

(* error 
			 _Xconst unsigned char *data, int nelements);
(* error 
			 _Xconst unsigned char *data, int nelements);
 in declarator_list *)
 in declarator_list *)
    procedure XRRDeleteOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom);

    function XRRGetOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom; offset:longint; length:longint; 
               _delete:Bool; pending:Bool; req_type:Atom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;

(* error 
XRRAllocModeInfo (_Xconst char *name, int nameLength);
(* error 
XRRAllocModeInfo (_Xconst char *name, int nameLength);
 in declarator_list *)
 in declarator_list *)
    function XRRCreateMode(dpy:PDisplay; window:Window; modeInfo:PXRRModeInfo):RRMode;

    procedure XRRDestroyMode(dpy:PDisplay; mode:RRMode);

    procedure XRRAddOutputMode(dpy:PDisplay; output:RROutput; mode:RRMode);

    procedure XRRDeleteOutputMode(dpy:PDisplay; output:RROutput; mode:RRMode);

    procedure XRRFreeModeInfo(modeInfo:PXRRModeInfo);


    type
      _XRRCrtcInfo = record
          timestamp : Time;
          x : longint;
          y : longint;
          width : dword;
          height : dword;
          mode : RRMode;
          rotation : Rotation;
          noutput : longint;
          outputs : ^RROutput;
          rotations : Rotation;
          npossible : longint;
          possible : ^RROutput;
        end;
      XRRCrtcInfo = _XRRCrtcInfo;

    function XRRGetCrtcInfo(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc):^XRRCrtcInfo;

    procedure XRRFreeCrtcInfo(crtcInfo:PXRRCrtcInfo);

    function XRRSetCrtcConfig(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc; timestamp:Time; x:longint; 
               y:longint; mode:RRMode; rotation:Rotation; outputs:PRROutput; noutputs:longint):Status;

    function XRRGetCrtcGammaSize(dpy:PDisplay; crtc:RRCrtc):longint;


    type
      _XRRCrtcGamma = record
          size : longint;
          red : ^word;
          green : ^word;
          blue : ^word;
        end;
      XRRCrtcGamma = _XRRCrtcGamma;

    function XRRGetCrtcGamma(dpy:PDisplay; crtc:RRCrtc):^XRRCrtcGamma;

    function XRRAllocGamma(size:longint):^XRRCrtcGamma;

    procedure XRRSetCrtcGamma(dpy:PDisplay; crtc:RRCrtc; gamma:PXRRCrtcGamma);

    procedure XRRFreeGamma(gamma:PXRRCrtcGamma);


    function XRRGetScreenResourcesCurrent(dpy:PDisplay; window:Window):^XRRScreenResources;

(* error 
		     _Xconst char *filter,
(* error 
		     XFixed	*params,
(* error 
		     int	nparams);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    type
      _XRRCrtcTransformAttributes = record
          pendingTransform : XTransform;
          pendingFilter : ^char;
          pendingNparams : longint;
          pendingParams : ^XFixed;
          currentTransform : XTransform;
          currentFilter : ^char;
          currentNparams : longint;
          currentParams : ^XFixed;
        end;
      XRRCrtcTransformAttributes = _XRRCrtcTransformAttributes;


    function XRRGetCrtcTransform(dpy:PDisplay; crtc:RRCrtc; attributes:PPXRRCrtcTransformAttributes):Status;


    function XRRUpdateConfiguration(event:PXEvent):longint;


    type
      _XRRPanning = record
          timestamp : Time;
          left : dword;
          top : dword;
          width : dword;
          height : dword;
          track_left : dword;
          track_top : dword;
          track_width : dword;
          track_height : dword;
          border_left : longint;
          border_top : longint;
          border_right : longint;
          border_bottom : longint;
        end;
      XRRPanning = _XRRPanning;

    function XRRGetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc):^XRRPanning;

    procedure XRRFreePanning(panning:PXRRPanning);

    function XRRSetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc; panning:PXRRPanning):Status;

    procedure XRRSetOutputPrimary(dpy:PDisplay; window:Window; output:RROutput);

    function XRRGetOutputPrimary(dpy:PDisplay; window:Window):RROutput;


    type
      _XRRProviderResources = record
          timestamp : Time;
          nproviders : longint;
          providers : ^RRProvider;
        end;
      XRRProviderResources = _XRRProviderResources;

    function XRRGetProviderResources(dpy:PDisplay; window:Window):^XRRProviderResources;

    procedure XRRFreeProviderResources(resources:PXRRProviderResources);


    type
      _XRRProviderInfo = record
          capabilities : dword;
          ncrtcs : longint;
          crtcs : ^RRCrtc;
          noutputs : longint;
          outputs : ^RROutput;
          name : ^char;
          nassociatedproviders : longint;
          associated_providers : ^RRProvider;
          associated_capability : ^dword;
          nameLen : longint;
        end;
      XRRProviderInfo = _XRRProviderInfo;

    function XRRGetProviderInfo(dpy:PDisplay; resources:PXRRScreenResources; provider:RRProvider):^XRRProviderInfo;

    procedure XRRFreeProviderInfo(provider:PXRRProviderInfo);

    function XRRSetProviderOutputSource(dpy:PDisplay; provider:XID; source_provider:XID):longint;

    function XRRSetProviderOffloadSink(dpy:PDisplay; provider:XID; sink_provider:XID):longint;

    function XRRListProviderProperties(dpy:PDisplay; provider:RRProvider; nprop:Plongint):^Atom;

    function XRRQueryProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom):^XRRPropertyInfo;

    procedure XRRConfigureProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom; pending:Bool; range:Bool; 
                num_values:longint; values:Plongint);

(* error 
			 _Xconst unsigned char *data, int nelements);
(* error 
			 _Xconst unsigned char *data, int nelements);
 in declarator_list *)
 in declarator_list *)
    procedure XRRDeleteProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom);

    function XRRGetProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom; offset:longint; length:longint; 
               _delete:Bool; pending:Bool; req_type:Atom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;


    type
      _XRRMonitorInfo = record
          name : Atom;
          primary : Bool;
          automatic : Bool;
          noutput : longint;
          x : longint;
          y : longint;
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
          outputs : ^RROutput;
        end;
      XRRMonitorInfo = _XRRMonitorInfo;

    function XRRAllocateMonitor(dpy:PDisplay; noutput:longint):^XRRMonitorInfo;

    function XRRGetMonitors(dpy:PDisplay; window:Window; get_active:Bool; nmonitors:Plongint):^XRRMonitorInfo;

    procedure XRRSetMonitor(dpy:PDisplay; window:Window; monitor:PXRRMonitorInfo);

    procedure XRRDeleteMonitor(dpy:PDisplay; window:Window; name:Atom);

    procedure XRRFreeMonitors(monitors:PXRRMonitorInfo);

{$endif}

(* error 
#endif /* _XRANDR_H_ */

implementation

    function XRRQueryExtension(dpy:PDisplay; event_base_return:Plongint; error_base_return:Plongint):Bool;
    begin
      { You must implement this function }
    end;
    function XRRQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):Status;
    begin
      { You must implement this function }
    end;
    function XRRGetScreenInfo(dpy:PDisplay; window:Window):PXRRScreenConfiguration;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeScreenConfigInfo(config:PXRRScreenConfiguration);
    begin
      { You must implement this function }
    end;
    function XRRSetScreenConfig(dpy:PDisplay; config:PXRRScreenConfiguration; draw:Drawable; size_index:longint; rotation:Rotation; 
               timestamp:Time):Status;
    begin
      { You must implement this function }
    end;
    function XRRSetScreenConfigAndRate(dpy:PDisplay; config:PXRRScreenConfiguration; draw:Drawable; size_index:longint; rotation:Rotation; 
               rate:smallint; timestamp:Time):Status;
    begin
      { You must implement this function }
    end;
    function XRRConfigRotations(config:PXRRScreenConfiguration; current_rotation:PRotation):Rotation;
    begin
      { You must implement this function }
    end;
    function XRRConfigTimes(config:PXRRScreenConfiguration; config_timestamp:PTime):Time;
    begin
      { You must implement this function }
    end;
    function XRRConfigSizes(config:PXRRScreenConfiguration; nsizes:Plongint):PXRRScreenSize;
    begin
      { You must implement this function }
    end;
    function XRRConfigRates(config:PXRRScreenConfiguration; sizeID:longint; nrates:Plongint):Psmallint;
    begin
      { You must implement this function }
    end;
    function XRRConfigCurrentConfiguration(config:PXRRScreenConfiguration; rotation:PRotation):SizeID;
    begin
      { You must implement this function }
    end;
    function XRRConfigCurrentRate(config:PXRRScreenConfiguration):smallint;
    begin
      { You must implement this function }
    end;
    function XRRRootToScreen(dpy:PDisplay; root:Window):longint;
    begin
      { You must implement this function }
    end;
    procedure XRRSelectInput(dpy:PDisplay; window:Window; mask:longint);
    begin
      { You must implement this function }
    end;
    function XRRRotations(dpy:PDisplay; screen:longint; current_rotation:PRotation):Rotation;
    begin
      { You must implement this function }
    end;
    function XRRSizes(dpy:PDisplay; screen:longint; nsizes:Plongint):PXRRScreenSize;
    begin
      { You must implement this function }
    end;
    function XRRRates(dpy:PDisplay; screen:longint; sizeID:longint; nrates:Plongint):Psmallint;
    begin
      { You must implement this function }
    end;
    function XRRTimes(dpy:PDisplay; screen:longint; config_timestamp:PTime):Time;
    begin
      { You must implement this function }
    end;
    function XRRGetScreenSizeRange(dpy:PDisplay; window:Window; minWidth:Plongint; minHeight:Plongint; maxWidth:Plongint; 
               maxHeight:Plongint):Status;
    begin
      { You must implement this function }
    end;
    procedure XRRSetScreenSize(dpy:PDisplay; window:Window; width:longint; height:longint; mmWidth:longint; 
                mmHeight:longint);
    begin
      { You must implement this function }
    end;
    function XRRGetScreenResources(dpy:PDisplay; window:Window):PXRRScreenResources;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeScreenResources(resources:PXRRScreenResources);
    begin
      { You must implement this function }
    end;
    function XRRGetOutputInfo(dpy:PDisplay; resources:PXRRScreenResources; output:RROutput):PXRROutputInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeOutputInfo(outputInfo:PXRROutputInfo);
    begin
      { You must implement this function }
    end;
    function XRRListOutputProperties(dpy:PDisplay; output:RROutput; nprop:Plongint):PAtom;
    begin
      { You must implement this function }
    end;
    function XRRQueryOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom):PXRRPropertyInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRConfigureOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom; pending:Bool; range:Bool; 
                num_values:longint; values:Plongint);
    begin
      { You must implement this function }
    end;
    procedure XRRDeleteOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom);
    begin
      { You must implement this function }
    end;
    function XRRGetOutputProperty(dpy:PDisplay; output:RROutput; _property:Atom; offset:longint; length:longint; 
               _delete:Bool; pending:Bool; req_type:Atom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;
    begin
      { You must implement this function }
    end;
    function XRRCreateMode(dpy:PDisplay; window:Window; modeInfo:PXRRModeInfo):RRMode;
    begin
      { You must implement this function }
    end;
    procedure XRRDestroyMode(dpy:PDisplay; mode:RRMode);
    begin
      { You must implement this function }
    end;
    procedure XRRAddOutputMode(dpy:PDisplay; output:RROutput; mode:RRMode);
    begin
      { You must implement this function }
    end;
    procedure XRRDeleteOutputMode(dpy:PDisplay; output:RROutput; mode:RRMode);
    begin
      { You must implement this function }
    end;
    procedure XRRFreeModeInfo(modeInfo:PXRRModeInfo);
    begin
      { You must implement this function }
    end;
    function XRRGetCrtcInfo(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc):PXRRCrtcInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeCrtcInfo(crtcInfo:PXRRCrtcInfo);
    begin
      { You must implement this function }
    end;
    function XRRSetCrtcConfig(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc; timestamp:Time; x:longint; 
               y:longint; mode:RRMode; rotation:Rotation; outputs:PRROutput; noutputs:longint):Status;
    begin
      { You must implement this function }
    end;
    function XRRGetCrtcGammaSize(dpy:PDisplay; crtc:RRCrtc):longint;
    begin
      { You must implement this function }
    end;
    function XRRGetCrtcGamma(dpy:PDisplay; crtc:RRCrtc):PXRRCrtcGamma;
    begin
      { You must implement this function }
    end;
    function XRRAllocGamma(size:longint):PXRRCrtcGamma;
    begin
      { You must implement this function }
    end;
    procedure XRRSetCrtcGamma(dpy:PDisplay; crtc:RRCrtc; gamma:PXRRCrtcGamma);
    begin
      { You must implement this function }
    end;
    procedure XRRFreeGamma(gamma:PXRRCrtcGamma);
    begin
      { You must implement this function }
    end;
    function XRRGetScreenResourcesCurrent(dpy:PDisplay; window:Window):PXRRScreenResources;
    begin
      { You must implement this function }
    end;
    function XRRGetCrtcTransform(dpy:PDisplay; crtc:RRCrtc; attributes:PPXRRCrtcTransformAttributes):Status;
    begin
      { You must implement this function }
    end;
    function XRRUpdateConfiguration(event:PXEvent):longint;
    begin
      { You must implement this function }
    end;
    function XRRGetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc):PXRRPanning;
    begin
      { You must implement this function }
    end;
    procedure XRRFreePanning(panning:PXRRPanning);
    begin
      { You must implement this function }
    end;
    function XRRSetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:RRCrtc; panning:PXRRPanning):Status;
    begin
      { You must implement this function }
    end;
    procedure XRRSetOutputPrimary(dpy:PDisplay; window:Window; output:RROutput);
    begin
      { You must implement this function }
    end;
    function XRRGetOutputPrimary(dpy:PDisplay; window:Window):RROutput;
    begin
      { You must implement this function }
    end;
    function XRRGetProviderResources(dpy:PDisplay; window:Window):PXRRProviderResources;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeProviderResources(resources:PXRRProviderResources);
    begin
      { You must implement this function }
    end;
    function XRRGetProviderInfo(dpy:PDisplay; resources:PXRRScreenResources; provider:RRProvider):PXRRProviderInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRFreeProviderInfo(provider:PXRRProviderInfo);
    begin
      { You must implement this function }
    end;
    function XRRSetProviderOutputSource(dpy:PDisplay; provider:XID; source_provider:XID):longint;
    begin
      { You must implement this function }
    end;
    function XRRSetProviderOffloadSink(dpy:PDisplay; provider:XID; sink_provider:XID):longint;
    begin
      { You must implement this function }
    end;
    function XRRListProviderProperties(dpy:PDisplay; provider:RRProvider; nprop:Plongint):PAtom;
    begin
      { You must implement this function }
    end;
    function XRRQueryProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom):PXRRPropertyInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRConfigureProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom; pending:Bool; range:Bool; 
                num_values:longint; values:Plongint);
    begin
      { You must implement this function }
    end;
    procedure XRRDeleteProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom);
    begin
      { You must implement this function }
    end;
    function XRRGetProviderProperty(dpy:PDisplay; provider:RRProvider; _property:Atom; offset:longint; length:longint; 
               _delete:Bool; pending:Bool; req_type:Atom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;
    begin
      { You must implement this function }
    end;
    function XRRAllocateMonitor(dpy:PDisplay; noutput:longint):PXRRMonitorInfo;
    begin
      { You must implement this function }
    end;
    function XRRGetMonitors(dpy:PDisplay; window:Window; get_active:Bool; nmonitors:Plongint):PXRRMonitorInfo;
    begin
      { You must implement this function }
    end;
    procedure XRRSetMonitor(dpy:PDisplay; window:Window; monitor:PXRRMonitorInfo);
    begin
      { You must implement this function }
    end;
    procedure XRRDeleteMonitor(dpy:PDisplay; window:Window; name:Atom);
    begin
      { You must implement this function }
    end;
    procedure XRRFreeMonitors(monitors:PXRRMonitorInfo);
    begin
      { You must implement this function }
    end;

end.
