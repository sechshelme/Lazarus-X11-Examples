
unit Xrandr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrandr.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrandr.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/Xrandr.pp
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
    PDisplay  = ^Display;
    Pdword  = ^dword;
    Plongint  = ^longint;
    PRotation  = ^Rotation;
    PRRCrtc  = ^RRCrtc;
    PRRMode  = ^RRMode;
    PRROutput  = ^RROutput;
    PRRProvider  = ^RRProvider;
    Psmallint  = ^smallint;
    PTime  = ^Time;
    Pword  = ^word;
    PXEvent  = ^XEvent;
    PXFixed  = ^XFixed;
    PXRRCrtcChangeNotifyEvent  = ^XRRCrtcChangeNotifyEvent;
    PXRRCrtcGamma  = ^XRRCrtcGamma;
    PXRRCrtcInfo  = ^XRRCrtcInfo;
    PXRRCrtcTransformAttributes  = ^XRRCrtcTransformAttributes;
    PXRRModeFlags  = ^XRRModeFlags;
    PXRRModeInfo  = ^XRRModeInfo;
    PXRRMonitorInfo  = ^XRRMonitorInfo;
    PXRRNotifyEvent  = ^XRRNotifyEvent;
    PXRROutputChangeNotifyEvent  = ^XRROutputChangeNotifyEvent;
    PXRROutputInfo  = ^XRROutputInfo;
    PXRROutputPropertyNotifyEvent  = ^XRROutputPropertyNotifyEvent;
    PXRRPanning  = ^XRRPanning;
    PXRRPropertyInfo  = ^XRRPropertyInfo;
    PXRRProviderChangeNotifyEvent  = ^XRRProviderChangeNotifyEvent;
    PXRRProviderInfo  = ^XRRProviderInfo;
    PXRRProviderPropertyNotifyEvent  = ^XRRProviderPropertyNotifyEvent;
    PXRRProviderResources  = ^XRRProviderResources;
    PXRRResourceChangeNotifyEvent  = ^XRRResourceChangeNotifyEvent;
    PXRRScreenChangeNotifyEvent  = ^XRRScreenChangeNotifyEvent;
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
      PRRCrtc = ^TRRCrtc;
      TRRCrtc = TXID;

      PRRMode = ^TRRMode;
      TRRMode = TXID;

      PRRProvider = ^TRRProvider;
      TRRProvider = TXID;

      PXRRScreenSize = ^TXRRScreenSize;
      TXRRScreenSize = record
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
        end;










      PXRRScreenChangeNotifyEvent = ^TXRRScreenChangeNotifyEvent;
      TXRRScreenChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          root : TWindow;
          timestamp : TTime;
          config_timestamp : TTime;
          size_index : TSizeID;
          subpixel_order : TSubpixelOrder;
          rotation : TRotation;
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
        end;







      PXRRNotifyEvent = ^TXRRNotifyEvent;
      TXRRNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
        end;












      PXRROutputChangeNotifyEvent = ^TXRROutputChangeNotifyEvent;
      TXRROutputChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          output : TRROutput;
          crtc : TRRCrtc;
          mode : TRRMode;
          rotation : TRotation;
          connection : TConnection;
          subpixel_order : TSubpixelOrder;
        end;












      PXRRCrtcChangeNotifyEvent = ^TXRRCrtcChangeNotifyEvent;
      TXRRCrtcChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          crtc : TRRCrtc;
          mode : TRRMode;
          rotation : TRotation;
          x : longint;
          y : longint;
          width : dword;
          height : dword;
        end;











      PXRROutputPropertyNotifyEvent = ^TXRROutputPropertyNotifyEvent;
      TXRROutputPropertyNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          output : TRROutput;
          _property : TAtom;
          timestamp : TTime;
          state : longint;
        end;









      PXRRProviderChangeNotifyEvent = ^TXRRProviderChangeNotifyEvent;
      TXRRProviderChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          provider : TRRProvider;
          timestamp : TTime;
          current_role : dword;
        end;











      PXRRProviderPropertyNotifyEvent = ^TXRRProviderPropertyNotifyEvent;
      TXRRProviderPropertyNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          provider : TRRProvider;
          _property : TAtom;
          timestamp : TTime;
          state : longint;
        end;








      PXRRResourceChangeNotifyEvent = ^TXRRResourceChangeNotifyEvent;
      TXRRResourceChangeNotifyEvent = record
          _type : longint;
          serial : dword;
          send_event : TBool;
          display : PDisplay;
          window : TWindow;
          subtype : longint;
          timestamp : TTime;
        end;


function XRRQueryExtension(dpy:PDisplay; event_base_return:Plongint; error_base_return:Plongint):TBool;cdecl;external;
function XRRQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):TStatus;cdecl;external;
function XRRGetScreenInfo(dpy:PDisplay; window:TWindow):PXRRScreenConfiguration;cdecl;external;
procedure XRRFreeScreenConfigInfo(config:PXRRScreenConfiguration);cdecl;external;

function XRRSetScreenConfig(dpy:PDisplay; config:PXRRScreenConfiguration; draw:TDrawable; size_index:longint; rotation:TRotation; 
               timestamp:TTime):TStatus;cdecl;external;

function XRRSetScreenConfigAndRate(dpy:PDisplay; config:PXRRScreenConfiguration; draw:TDrawable; size_index:longint; rotation:TRotation; 
               rate:smallint; timestamp:TTime):TStatus;cdecl;external;
function XRRConfigRotations(config:PXRRScreenConfiguration; current_rotation:PRotation):TRotation;cdecl;external;
function XRRConfigTimes(config:PXRRScreenConfiguration; config_timestamp:PTime):TTime;cdecl;external;
function XRRConfigSizes(config:PXRRScreenConfiguration; nsizes:Plongint):PXRRScreenSize;cdecl;external;
function XRRConfigRates(config:PXRRScreenConfiguration; sizeID:longint; nrates:Plongint):Psmallint;cdecl;external;
function XRRConfigCurrentConfiguration(config:PXRRScreenConfiguration; rotation:PRotation):TSizeID;cdecl;external;
function XRRConfigCurrentRate(config:PXRRScreenConfiguration):smallint;cdecl;external;
function XRRRootToScreen(dpy:PDisplay; root:TWindow):longint;cdecl;external;

procedure XRRSelectInput(dpy:PDisplay; window:TWindow; mask:longint);cdecl;external;

function XRRRotations(dpy:PDisplay; screen:longint; current_rotation:PRotation):TRotation;cdecl;external;
function XRRSizes(dpy:PDisplay; screen:longint; nsizes:Plongint):PXRRScreenSize;cdecl;external;
function XRRRates(dpy:PDisplay; screen:longint; sizeID:longint; nrates:Plongint):Psmallint;cdecl;external;
function XRRTimes(dpy:PDisplay; screen:longint; config_timestamp:PTime):TTime;cdecl;external;


function XRRGetScreenSizeRange(dpy:PDisplay; window:TWindow; minWidth:Plongint; minHeight:Plongint; maxWidth:Plongint; 
               maxHeight:Plongint):TStatus;cdecl;external;
procedure XRRSetScreenSize(dpy:PDisplay; window:TWindow; width:longint; height:longint; mmWidth:longint; 
                mmHeight:longint);cdecl;external;
    type
      PXRRModeFlags = ^TXRRModeFlags;
      TXRRModeFlags = dword;

      PXRRModeInfo = ^TXRRModeInfo;
      TXRRModeInfo = record
          id : TRRMode;
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
          name : Pchar;
          nameLength : dword;
          modeFlags : TXRRModeFlags;
        end;

      PXRRScreenResources = ^TXRRScreenResources;
      TXRRScreenResources = record
          timestamp : TTime;
          configTimestamp : TTime;
          ncrtc : longint;
          crtcs : PRRCrtc;
          noutput : longint;
          outputs : PRROutput;
          nmode : longint;
          modes : PXRRModeInfo;
        end;

function XRRGetScreenResources(dpy:PDisplay; window:TWindow):PXRRScreenResources;cdecl;external;
procedure XRRFreeScreenResources(resources:PXRRScreenResources);cdecl;external;
    type
      PXRROutputInfo = ^TXRROutputInfo;
      TXRROutputInfo = record
          timestamp : TTime;
          crtc : TRRCrtc;
          name : Pchar;
          nameLen : longint;
          mm_width : dword;
          mm_height : dword;
          connection : TConnection;
          subpixel_order : TSubpixelOrder;
          ncrtc : longint;
          crtcs : PRRCrtc;
          nclone : longint;
          clones : PRROutput;
          nmode : longint;
          npreferred : longint;
          modes : PRRMode;
        end;

function XRRGetOutputInfo(dpy:PDisplay; resources:PXRRScreenResources; output:TRROutput):PXRROutputInfo;cdecl;external;
procedure XRRFreeOutputInfo(outputInfo:PXRROutputInfo);cdecl;external;
function XRRListOutputProperties(dpy:PDisplay; output:TRROutput; nprop:Plongint):PAtom;cdecl;external;
    type
      PXRRPropertyInfo = ^TXRRPropertyInfo;
      TXRRPropertyInfo = record
          pending : TBool;
          range : TBool;
          immutable : TBool;
          num_values : longint;
          values : Plongint;
        end;

function XRRQueryOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom):PXRRPropertyInfo;cdecl;external;
procedure XRRConfigureOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom; pending:TBool; range:TBool; 
                num_values:longint; values:Plongint);cdecl;external;
(* error 
			 _Xconst unsigned char *data, int nelements);
(* error 
			 _Xconst unsigned char *data, int nelements);
 in declarator_list *)
 in declarator_list *)
procedure XRRDeleteOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom);cdecl;external;
function XRRGetOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom; offset:longint; length:longint; 
               _delete:TBool; pending:TBool; req_type:TAtom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;cdecl;external;
(* error 
XRRAllocModeInfo (_Xconst char *name, int nameLength);
(* error 
XRRAllocModeInfo (_Xconst char *name, int nameLength);
 in declarator_list *)
 in declarator_list *)
function XRRCreateMode(dpy:PDisplay; window:TWindow; modeInfo:PXRRModeInfo):TRRMode;cdecl;external;
procedure XRRDestroyMode(dpy:PDisplay; mode:TRRMode);cdecl;external;
procedure XRRAddOutputMode(dpy:PDisplay; output:TRROutput; mode:TRRMode);cdecl;external;
procedure XRRDeleteOutputMode(dpy:PDisplay; output:TRROutput; mode:TRRMode);cdecl;external;
procedure XRRFreeModeInfo(modeInfo:PXRRModeInfo);cdecl;external;
    type
      PXRRCrtcInfo = ^TXRRCrtcInfo;
      TXRRCrtcInfo = record
          timestamp : TTime;
          x : longint;
          y : longint;
          width : dword;
          height : dword;
          mode : TRRMode;
          rotation : TRotation;
          noutput : longint;
          outputs : PRROutput;
          rotations : TRotation;
          npossible : longint;
          possible : PRROutput;
        end;

function XRRGetCrtcInfo(dpy:PDisplay; resources:PXRRScreenResources; crtc:TRRCrtc):PXRRCrtcInfo;cdecl;external;
procedure XRRFreeCrtcInfo(crtcInfo:PXRRCrtcInfo);cdecl;external;
function XRRSetCrtcConfig(dpy:PDisplay; resources:PXRRScreenResources; crtc:TRRCrtc; timestamp:TTime; x:longint; 
               y:longint; mode:TRRMode; rotation:TRotation; outputs:PRROutput; noutputs:longint):TStatus;cdecl;external;
function XRRGetCrtcGammaSize(dpy:PDisplay; crtc:TRRCrtc):longint;cdecl;external;
    type
      PXRRCrtcGamma = ^TXRRCrtcGamma;
      TXRRCrtcGamma = record
          size : longint;
          red : Pword;
          green : Pword;
          blue : Pword;
        end;

function XRRGetCrtcGamma(dpy:PDisplay; crtc:TRRCrtc):PXRRCrtcGamma;cdecl;external;
function XRRAllocGamma(size:longint):PXRRCrtcGamma;cdecl;external;
procedure XRRSetCrtcGamma(dpy:PDisplay; crtc:TRRCrtc; gamma:PXRRCrtcGamma);cdecl;external;
procedure XRRFreeGamma(gamma:PXRRCrtcGamma);cdecl;external;

function XRRGetScreenResourcesCurrent(dpy:PDisplay; window:TWindow):PXRRScreenResources;cdecl;external;
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
      PXRRCrtcTransformAttributes = ^TXRRCrtcTransformAttributes;
      TXRRCrtcTransformAttributes = record
          pendingTransform : TXTransform;
          pendingFilter : Pchar;
          pendingNparams : longint;
          pendingParams : PXFixed;
          currentTransform : TXTransform;
          currentFilter : Pchar;
          currentNparams : longint;
          currentParams : PXFixed;
        end;


function XRRGetCrtcTransform(dpy:PDisplay; crtc:TRRCrtc; attributes:PPXRRCrtcTransformAttributes):TStatus;cdecl;external;

function XRRUpdateConfiguration(event:PXEvent):longint;cdecl;external;
    type
      PXRRPanning = ^TXRRPanning;
      TXRRPanning = record
          timestamp : TTime;
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

function XRRGetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:TRRCrtc):PXRRPanning;cdecl;external;
procedure XRRFreePanning(panning:PXRRPanning);cdecl;external;
function XRRSetPanning(dpy:PDisplay; resources:PXRRScreenResources; crtc:TRRCrtc; panning:PXRRPanning):TStatus;cdecl;external;
procedure XRRSetOutputPrimary(dpy:PDisplay; window:TWindow; output:TRROutput);cdecl;external;
function XRRGetOutputPrimary(dpy:PDisplay; window:TWindow):TRROutput;cdecl;external;
    type
      PXRRProviderResources = ^TXRRProviderResources;
      TXRRProviderResources = record
          timestamp : TTime;
          nproviders : longint;
          providers : PRRProvider;
        end;

function XRRGetProviderResources(dpy:PDisplay; window:TWindow):PXRRProviderResources;cdecl;external;
procedure XRRFreeProviderResources(resources:PXRRProviderResources);cdecl;external;
    type
      PXRRProviderInfo = ^TXRRProviderInfo;
      TXRRProviderInfo = record
          capabilities : dword;
          ncrtcs : longint;
          crtcs : PRRCrtc;
          noutputs : longint;
          outputs : PRROutput;
          name : Pchar;
          nassociatedproviders : longint;
          associated_providers : PRRProvider;
          associated_capability : Pdword;
          nameLen : longint;
        end;

function XRRGetProviderInfo(dpy:PDisplay; resources:PXRRScreenResources; provider:TRRProvider):PXRRProviderInfo;cdecl;external;
procedure XRRFreeProviderInfo(provider:PXRRProviderInfo);cdecl;external;
function XRRSetProviderOutputSource(dpy:PDisplay; provider:TXID; source_provider:TXID):longint;cdecl;external;
function XRRSetProviderOffloadSink(dpy:PDisplay; provider:TXID; sink_provider:TXID):longint;cdecl;external;
function XRRListProviderProperties(dpy:PDisplay; provider:TRRProvider; nprop:Plongint):PAtom;cdecl;external;
function XRRQueryProviderProperty(dpy:PDisplay; provider:TRRProvider; _property:TAtom):PXRRPropertyInfo;cdecl;external;
procedure XRRConfigureProviderProperty(dpy:PDisplay; provider:TRRProvider; _property:TAtom; pending:TBool; range:TBool; 
                num_values:longint; values:Plongint);cdecl;external;
(* error 
			 _Xconst unsigned char *data, int nelements);
(* error 
			 _Xconst unsigned char *data, int nelements);
 in declarator_list *)
 in declarator_list *)
procedure XRRDeleteProviderProperty(dpy:PDisplay; provider:TRRProvider; _property:TAtom);cdecl;external;
function XRRGetProviderProperty(dpy:PDisplay; provider:TRRProvider; _property:TAtom; offset:longint; length:longint; 
               _delete:TBool; pending:TBool; req_type:TAtom; actual_type:PAtom; actual_format:Plongint; 
               nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;cdecl;external;
    type
      PXRRMonitorInfo = ^TXRRMonitorInfo;
      TXRRMonitorInfo = record
          name : TAtom;
          primary : TBool;
          automatic : TBool;
          noutput : longint;
          x : longint;
          y : longint;
          width : longint;
          height : longint;
          mwidth : longint;
          mheight : longint;
          outputs : PRROutput;
        end;

function XRRAllocateMonitor(dpy:PDisplay; noutput:longint):PXRRMonitorInfo;cdecl;external;
function XRRGetMonitors(dpy:PDisplay; window:TWindow; get_active:TBool; nmonitors:Plongint):PXRRMonitorInfo;cdecl;external;
procedure XRRSetMonitor(dpy:PDisplay; window:TWindow; monitor:PXRRMonitorInfo);cdecl;external;
procedure XRRDeleteMonitor(dpy:PDisplay; window:TWindow; name:TAtom);cdecl;external;
procedure XRRFreeMonitors(monitors:PXRRMonitorInfo);cdecl;external;
{$endif}

(* error 
#endif /* _XRANDR_H_ */

implementation


end.
