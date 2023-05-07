unit Xrandr;

interface

uses x,xlib,
  xrender,
  randr;

{
  Automatically converted by H2Pas 1.0.0 from Xrandr.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    Xrandr.h
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2000 Compaq Computer Corporation, Inc.
 * Copyright © 2002 Hewlett-Packard Company, Inc.
 * Copyright © 2006 Intel Corporation
 * Copyright © 2008 Red Hat, Inc.
 *
 * Permission to use, copy, modify, distribute, and sell this software and its
 * documentation for any purpose is hereby granted without fee, provided that
 * the above copyright notice appear in all copies and that both that copyright
 * notice and this permission notice appear in supporting documentation, and
 * that the name of the copyright holders not be used in advertising or
 * publicity pertaining to distribution of the software without specific,
 * written prior permission.  The copyright holders make no representations
 * about the suitability of this software for any purpose.  It is provided "as
 * is" without express or implied warranty.
 *
 * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
 * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
 * EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
 * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
 * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
 * OF THIS SOFTWARE.
 *
 * Author:  Jim Gettys, HP Labs, Hewlett-Packard, Inc.
 *	    Keith Packard, Intel Corporation
  }
//{$include <X11/extensions/randr.h>}
//{$include <X11/extensions/Xrender.h>}
//{$include <X11/Xfuncproto.h>}
{_XFUNCPROTOBEGIN }
type
  PRROutput = ^TRROutput;
  TRROutput = TXID;

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
{
 *  Events.
  }
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ Root window for changed screen  }
{ when the screen change occurred  }
{ when the last configuration change  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_ subtype  }

  PXRRNotifyEvent = ^TXRRNotifyEvent;
  TXRRNotifyEvent = record
      _type : longint;
      serial : dword;
      send_event : TBool;
      display : PDisplay;
      window : TWindow;
      subtype : longint;
    end;
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_OutputChange  }
{ affected output  }
{ current crtc (or None)  }
{ current mode (or None)  }
{ current rotation of associated crtc  }
{ current connection status  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_CrtcChange  }
{ current crtc (or None)  }
{ current mode (or None)  }
{ current rotation of associated crtc  }
{ position  }
{ size  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_OutputProperty  }
{ related output  }
{ changed property  }
{ time of change  }
{ NewValue, Deleted  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_ProviderChange  }
{ current provider (or None)  }
{ time of change  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_ProviderProperty  }
{ related provider  }
{ changed property  }
{ time of change  }
{ NewValue, Deleted  }

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
{ event base  }
{ # of last request processed by server  }
{ true if this came from a SendEvent request  }
{ Display the event was read from  }
{ window which selected for this event  }
{ RRNotify_ResourceChange  }
{ time of change  }

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
{ internal representation is private to the library  }


// Eigenes:
type PXRRScreenConfiguration=^TXRRScreenConfiguration;
  TXRRScreenConfiguration=Pointer;


function XRRQueryExtension(dpy:PDisplay; event_base_return:Plongint; error_base_return:Plongint):TBool;cdecl;external;
function XRRQueryVersion(dpy:PDisplay; major_version_return:Plongint; minor_version_return:Plongint):TStatus;cdecl;external;
function XRRGetScreenInfo(dpy:PDisplay; window:TWindow):PXRRScreenConfiguration;cdecl;external;
procedure XRRFreeScreenConfigInfo(config:PXRRScreenConfiguration);cdecl;external;
{
 * Note that screen configuration changes are only permitted if the client can
 * prove it has up to date configuration information.  We are trying to
 * insist that it become possible for screens to change dynamically, so
 * we want to ensure the client knows what it is talking about when requesting
 * changes.
  }
function XRRSetScreenConfig(dpy:PDisplay; config:PXRRScreenConfiguration; draw:TDrawable; size_index:longint; rotation:TRotation; 
           timestamp:TTime):TStatus;cdecl;external;
{ added in v1.1, sorry for the lame name  }
function XRRSetScreenConfigAndRate(dpy:PDisplay; config:PXRRScreenConfiguration; draw:TDrawable; size_index:longint; rotation:TRotation; 
           rate:smallint; timestamp:TTime):TStatus;cdecl;external;
function XRRConfigRotations(config:PXRRScreenConfiguration; current_rotation:PRotation):TRotation;cdecl;external;
function XRRConfigTimes(config:PXRRScreenConfiguration; config_timestamp:PTime):TTime;cdecl;external;
function XRRConfigSizes(config:PXRRScreenConfiguration; nsizes:Plongint):PXRRScreenSize;cdecl;external;
function XRRConfigRates(config:PXRRScreenConfiguration; sizeID:longint; nrates:Plongint):Psmallint;cdecl;external;
function XRRConfigCurrentConfiguration(config:PXRRScreenConfiguration; rotation:PRotation):TSizeID;cdecl;external;
function XRRConfigCurrentRate(config:PXRRScreenConfiguration):smallint;cdecl;external;
function XRRRootToScreen(dpy:PDisplay; root:TWindow):longint;cdecl;external;
{
 * returns the screen configuration for the specified screen; does a lazy
 * evalution to delay getting the information, and caches the result.
 * These routines should be used in preference to XRRGetScreenInfo
 * to avoid unneeded round trips to the X server.  These are new
 * in protocol version 0.1.
  }
procedure XRRSelectInput(dpy:PDisplay; window:TWindow; mask:longint);cdecl;external;
{
 * the following are always safe to call, even if RandR is not implemented
 * on a screen
  }
function XRRRotations(dpy:PDisplay; screen:longint; current_rotation:PRotation):TRotation;cdecl;external;
function XRRSizes(dpy:PDisplay; screen:longint; nsizes:Plongint):PXRRScreenSize;cdecl;external;
function XRRRates(dpy:PDisplay; screen:longint; sizeID:longint; nrates:Plongint):Psmallint;cdecl;external;
function XRRTimes(dpy:PDisplay; screen:longint; config_timestamp:PTime):TTime;cdecl;external;
{ Version 1.2 additions  }
{ despite returning a Status, this returns 1 for success  }
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
procedure XRRChangeOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom; _type:TAtom; format:longint; 
            mode:longint; data:Pbyte; nelements:longint);cdecl;external;
procedure XRRDeleteOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom);cdecl;external;
function XRRGetOutputProperty(dpy:PDisplay; output:TRROutput; _property:TAtom; offset:longint; length:longint; 
           _delete:TBool; pending:TBool; req_type:TAtom; actual_type:PAtom; actual_format:Plongint; 
           nitems:Pdword; bytes_after:Pdword; prop:PPbyte):longint;cdecl;external;
function XRRAllocModeInfo(name:Pchar; nameLength:longint):PXRRModeInfo;cdecl;external;
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
{ Version 1.3 additions  }
function XRRGetScreenResourcesCurrent(dpy:PDisplay; window:TWindow):PXRRScreenResources;cdecl;external;
procedure XRRSetCrtcTransform(dpy:PDisplay; crtc:TRRCrtc; transform:PXTransform; filter:Pchar; params:PXFixed; 
            nparams:longint);cdecl;external;
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
{
 * Get current crtc transforms and filters.
 * Pass *attributes to XFree to free
  }

function XRRGetCrtcTransform(dpy:PDisplay; crtc:TRRCrtc; attributes:PPXRRCrtcTransformAttributes):TStatus;cdecl;external;
{
 * intended to take RRScreenChangeNotify,  or
 * ConfigureNotify (on the root window)
 * returns 1 if it is an event type it understands, 0 if not
  }
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
procedure XRRChangeProviderProperty(dpy:PDisplay; provider:TRRProvider; _property:TAtom; _type:TAtom; format:longint; 
            mode:longint; data:Pbyte; nelements:longint);cdecl;external;
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
{_XFUNCPROTOEND }
{$endif}
{ _XRANDR_H_  }

implementation


end.
