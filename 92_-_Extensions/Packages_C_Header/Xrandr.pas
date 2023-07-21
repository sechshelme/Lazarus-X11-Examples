unit Xrandr;

interface

uses x, xlib,
  ctypes,
  xrender,
  randr;

  {$LinkLib Xrandr}

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  // -------------------------------------------------

  // Eigene Typen von einer aktuellen xrender.h
  // Die von FPC ist veraltet

type
  PXFixed = ^TXFixed;
  TXFixed = cint;

  PXTransform = ^TXTransform;

  TXTransform = record
    matrix: array[0..2] of array[0..2] of TXFixed;
  end;

type
  PXRRScreenConfiguration = ^TXRRScreenConfiguration;
  TXRRScreenConfiguration = Pointer;

  // -------------------------------------------------

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
 *      Keith Packard, Intel Corporation
  }

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
    Width: cint;
    Height: cint;
    mwidth: cint;
    mheight: cint;
  end;

  PXRRScreenChangeNotifyEvent = ^TXRRScreenChangeNotifyEvent;

  TXRRScreenChangeNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    root: TWindow;
    timestamp: TTime;
    config_timestamp: TTime;
    size_index: TSizeID;
    subpixel_order: TSubpixelOrder;
    rotation: TRotation;
    Width: cint;
    Height: cint;
    mwidth: cint;
    mheight: cint;
  end;

  PXRRNotifyEvent = ^TXRRNotifyEvent;

  TXRRNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
  end;

  PXRROutputChangeNotifyEvent = ^TXRROutputChangeNotifyEvent;

  TXRROutputChangeNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
    output: TRROutput;
    crtc: TRRCrtc;
    mode: TRRMode;
    rotation: TRotation;
    connection: TConnection;
    subpixel_order: TSubpixelOrder;
  end;

  PXRRCrtcChangeNotifyEvent = ^TXRRCrtcChangeNotifyEvent;

  TXRRCrtcChangeNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: longint;
    crtc: TRRCrtc;
    mode: TRRMode;
    rotation: TRotation;
    x: cint;
    y: cint;
    Width: cuint;
    Height: cuint;
  end;

  PXRROutputPropertyNotifyEvent = ^TXRROutputPropertyNotifyEvent;

  TXRROutputPropertyNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
    output: TRROutput;
    _property: TAtom;
    timestamp: TTime;
    state: cint;
  end;

  PXRRProviderChangeNotifyEvent = ^TXRRProviderChangeNotifyEvent;

  TXRRProviderChangeNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
    provider: TRRProvider;
    timestamp: TTime;
    current_role: cuint;
  end;

  PXRRProviderPropertyNotifyEvent = ^TXRRProviderPropertyNotifyEvent;

  TXRRProviderPropertyNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
    provider: TRRProvider;
    _property: TAtom;
    timestamp: TTime;
    state: cint;
  end;

  PXRRResourceChangeNotifyEvent = ^TXRRResourceChangeNotifyEvent;

  TXRRResourceChangeNotifyEvent = record
    _type: cint;
    serial: culong;
    send_event: TBool;
    display: PDisplay;
    window: TWindow;
    subtype: cint;
    timestamp: TTime;
  end;


function XRRQueryExtension(dpy: PDisplay; event_base_return: Pcint; error_base_return: Pcint): TBool; cdecl; external;
function XRRQueryVersion(dpy: PDisplay; major_version_return: Pcint; minor_version_return: Pcint): TStatus; cdecl; external;
function XRRGetScreenInfo(dpy: PDisplay; window: TWindow): PXRRScreenConfiguration; cdecl; external;
procedure XRRFreeScreenConfigInfo(config: PXRRScreenConfiguration); cdecl; external;
{
 * Note that screen configuration changes are only permitted if the client can
 * prove it has up to date configuration information.  We are trying to
 * insist that it become possible for screens to change dynamically, so
 * we want to ensure the client knows what it is talking about when requesting
 * changes.
  }
function XRRSetScreenConfig(dpy: PDisplay; config: PXRRScreenConfiguration; draw: TDrawable; size_index: cint; rotation: TRotation;
  timestamp: TTime): TStatus; cdecl; external;
{ added in v1.1, sorry for the lame name  }
function XRRSetScreenConfigAndRate(dpy: PDisplay; config: PXRRScreenConfiguration; draw: TDrawable; size_index: cint; rotation: TRotation;
  rate: cshort; timestamp: TTime): TStatus; cdecl; external;
function XRRConfigRotations(config: PXRRScreenConfiguration; current_rotation: PRotation): TRotation; cdecl; external;
function XRRConfigTimes(config: PXRRScreenConfiguration; config_timestamp: PTime): TTime; cdecl; external;
function XRRConfigSizes(config: PXRRScreenConfiguration; nsizes: Pcint): PXRRScreenSize; cdecl; external;
function XRRConfigRates(config: PXRRScreenConfiguration; sizeID: cint; nrates: Pcint): Pcshort; cdecl; external;
function XRRConfigCurrentConfiguration(config: PXRRScreenConfiguration; rotation: PRotation): TSizeID; cdecl; external;
function XRRConfigCurrentRate(config: PXRRScreenConfiguration): cshort; cdecl; external;
function XRRRootToScreen(dpy: PDisplay; root: TWindow): cint; cdecl; external;
{
 * returns the screen configuration for the specified screen; does a lazy
 * evalution to delay getting the information, and caches the result.
 * These routines should be used in preference to XRRGetScreenInfo
 * to avoid unneeded round trips to the X server.  These are new
 * in protocol version 0.1.
  }
procedure XRRSelectInput(dpy: PDisplay; window: TWindow; mask: cint); cdecl; external;
{
 * the following are always safe to call, even if RandR is not implemented
 * on a screen
  }
function XRRRotations(dpy: PDisplay; screen: cint; current_rotation: PRotation): TRotation; cdecl; external;
function XRRSizes(dpy: PDisplay; screen: cint; nsizes: Pcint): PXRRScreenSize; cdecl; external;
function XRRRates(dpy: PDisplay; screen: cint; sizeID: cint; nrates: Pcint): Pcshort; cdecl; external;
function XRRTimes(dpy: PDisplay; screen: cint; config_timestamp: PTime): TTime; cdecl; external;
{ Version 1.2 additions  }
{ despite returning a Status, this returns 1 for success  }
function XRRGetScreenSizeRange(dpy: PDisplay; window: TWindow; minWidth: Pcint; minHeight: Pcint; maxWidth: Pcint;
  maxHeight: Pcint): TStatus; cdecl; external;
procedure XRRSetScreenSize(dpy: PDisplay; window: TWindow; Width: cint; Height: cint; mmWidth: cint;
  mmHeight: cint); cdecl; external;

type
  PXRRModeFlags = ^TXRRModeFlags;
  TXRRModeFlags = dword;

  PXRRModeInfo = ^TXRRModeInfo;

  TXRRModeInfo = record
    id: TRRMode;
    Width: cuint;
    Height: cuint;
    dotClock: cuint;
    hSyncStart: cuint;
    hSyncEnd: cuint;
    hTotal: cuint;
    hSkew: cuint;
    vSyncStart: cuint;
    vSyncEnd: cuint;
    vTotal: cuint;
    Name: PChar;
    nameLength: dword;
    modeFlags: TXRRModeFlags;
  end;

  PXRRScreenResources = ^TXRRScreenResources;

  TXRRScreenResources = record
    timestamp: TTime;
    configTimestamp: TTime;
    ncrtc: cint;
    crtcs: PRRCrtc;
    noutput: cint;
    outputs: PRROutput;
    nmode: cint;
    modes: PXRRModeInfo;
  end;

function XRRGetScreenResources(dpy: PDisplay; window: TWindow): PXRRScreenResources; cdecl; external;
procedure XRRFreeScreenResources(resources: PXRRScreenResources); cdecl; external;

type
  PXRROutputInfo = ^TXRROutputInfo;

  TXRROutputInfo = record
    timestamp: TTime;
    crtc: TRRCrtc;
    Name: PChar;
    nameLen: cint;
    mm_width: culong;
    mm_height: culong;
    connection: TConnection;
    subpixel_order: TSubpixelOrder;
    ncrtc: cint;
    crtcs: PRRCrtc;
    nclone: cint;
    clones: PRROutput;
    nmode: cint;
    npreferred: cint;
    modes: PRRMode;
  end;

function XRRGetOutputInfo(dpy: PDisplay; resources: PXRRScreenResources; output: TRROutput): PXRROutputInfo; cdecl; external;
procedure XRRFreeOutputInfo(outputInfo: PXRROutputInfo); cdecl; external;
function XRRListOutputProperties(dpy: PDisplay; output: TRROutput; nprop: Pcint): PAtom; cdecl; external;

type
  PXRRPropertyInfo = ^TXRRPropertyInfo;

  TXRRPropertyInfo = record
    pending: TBool;
    range: TBool;
    immutable: TBool;
    num_values: cint;
    values: pclong;
  end;

function XRRQueryOutputProperty(dpy: PDisplay; output: TRROutput; _property: TAtom): PXRRPropertyInfo; cdecl; external;
procedure XRRConfigureOutputProperty(dpy: PDisplay; output: TRROutput; _property: TAtom; pending: TBool; range: TBool;
  num_values: cint; values: Pcint); cdecl; external;
procedure XRRChangeOutputProperty(dpy: PDisplay; output: TRROutput; _property: TAtom; _type: TAtom; format: cint;
  mode: cint; Data: pbyte; nelements: cint); cdecl; external;
procedure XRRDeleteOutputProperty(dpy: PDisplay; output: TRROutput; _property: TAtom); cdecl; external;
function XRRGetOutputProperty(dpy: PDisplay; output: TRROutput; _property: TAtom; offset: clong; length: clong;
  _delete: TBool; pending: TBool; req_type: TAtom; actual_type: PAtom; actual_format: Pcint;
  nitems: pculong; bytes_after: pculong; prop: PPbyte): cint; cdecl; external;
function XRRAllocModeInfo(Name: PChar; nameLength: cint): PXRRModeInfo; cdecl; external;
function XRRCreateMode(dpy: PDisplay; window: TWindow; modeInfo: PXRRModeInfo): TRRMode; cdecl; external;
procedure XRRDestroyMode(dpy: PDisplay; mode: TRRMode); cdecl; external;
procedure XRRAddOutputMode(dpy: PDisplay; output: TRROutput; mode: TRRMode); cdecl; external;
procedure XRRDeleteOutputMode(dpy: PDisplay; output: TRROutput; mode: TRRMode); cdecl; external;
procedure XRRFreeModeInfo(modeInfo: PXRRModeInfo); cdecl; external;

type
  PXRRCrtcInfo = ^TXRRCrtcInfo;

  TXRRCrtcInfo = record
    timestamp: TTime;
    x: cint;
    y: cint;
    Width: cuint;
    Height: cuint;
    mode: TRRMode;
    rotation: TRotation;
    noutput: cint;
    outputs: PRROutput;
    rotations: TRotation;
    npossible: cint;
    possible: PRROutput;
  end;

function XRRGetCrtcInfo(dpy: PDisplay; resources: PXRRScreenResources; crtc: TRRCrtc): PXRRCrtcInfo; cdecl; external;
procedure XRRFreeCrtcInfo(crtcInfo: PXRRCrtcInfo); cdecl; external;
function XRRSetCrtcConfig(dpy: PDisplay; resources: PXRRScreenResources; crtc: TRRCrtc; timestamp: TTime; x: cint;
  y: cint; mode: TRRMode; rotation: TRotation; outputs: PRROutput; noutputs: cint): TStatus; cdecl; external;
function XRRGetCrtcGammaSize(dpy: PDisplay; crtc: TRRCrtc): cint; cdecl; external;

type
  PXRRCrtcGamma = ^TXRRCrtcGamma;

  TXRRCrtcGamma = record
    size: cint;
    red: pcushort;
    green: pcushort;
    blue: pcushort;
  end;

function XRRGetCrtcGamma(dpy: PDisplay; crtc: TRRCrtc): PXRRCrtcGamma; cdecl; external;
function XRRAllocGamma(size: cint): PXRRCrtcGamma; cdecl; external;
procedure XRRSetCrtcGamma(dpy: PDisplay; crtc: TRRCrtc; gamma: PXRRCrtcGamma); cdecl; external;
procedure XRRFreeGamma(gamma: PXRRCrtcGamma); cdecl; external;
{ Version 1.3 additions  }
function XRRGetScreenResourcesCurrent(dpy: PDisplay; window: TWindow): PXRRScreenResources; cdecl; external;
procedure XRRSetCrtcTransform(dpy: PDisplay; crtc: TRRCrtc; transform: PXTransform; filter: PChar; params: PXFixed;
  nparams: cint); cdecl; external;

type
  PPXRRCrtcTransformAttributes = ^PXRRCrtcTransformAttributes;
  PXRRCrtcTransformAttributes = ^TXRRCrtcTransformAttributes;

  TXRRCrtcTransformAttributes = record
    pendingTransform: TXTransform;
    pendingFilter: PChar;
    pendingNparams: cint;
    pendingParams: PXFixed;
    currentTransform: TXTransform;
    currentFilter: PChar;
    currentNparams: cint;
    currentParams: PXFixed;
  end;

{
 * Get current crtc transforms and filters.
 * Pass *attributes to XFree to free
  }

function XRRGetCrtcTransform(dpy: PDisplay; crtc: TRRCrtc; attributes: PPXRRCrtcTransformAttributes): TStatus; cdecl; external;
{
 * intended to take RRScreenChangeNotify,  or
 * ConfigureNotify (on the root window)
 * returns 1 if it is an event type it understands, 0 if not
  }
function XRRUpdateConfiguration(event: PXEvent): cint; cdecl; external;

type
  PXRRPanning = ^TXRRPanning;

  TXRRPanning = record
    timestamp: TTime;
    left: cuint;
    top: cuint;
    Width: cuint;
    Height: cuint;
    track_left: cuint;
    track_top: cuint;
    track_width: cuint;
    track_height: cuint;
    border_left: cint;
    border_top: cint;
    border_right: cint;
    border_bottom: cint;
  end;

function XRRGetPanning(dpy: PDisplay; resources: PXRRScreenResources; crtc: TRRCrtc): PXRRPanning; cdecl; external;
procedure XRRFreePanning(panning: PXRRPanning); cdecl; external;
function XRRSetPanning(dpy: PDisplay; resources: PXRRScreenResources; crtc: TRRCrtc; panning: PXRRPanning): TStatus; cdecl; external;
procedure XRRSetOutputPrimary(dpy: PDisplay; window: TWindow; output: TRROutput); cdecl; external;
function XRRGetOutputPrimary(dpy: PDisplay; window: TWindow): TRROutput; cdecl; external;

type
  PXRRProviderResources = ^TXRRProviderResources;

  TXRRProviderResources = record
    timestamp: TTime;
    nproviders: cint;
    providers: PRRProvider;
  end;

function XRRGetProviderResources(dpy: PDisplay; window: TWindow): PXRRProviderResources; cdecl; external;
procedure XRRFreeProviderResources(resources: PXRRProviderResources); cdecl; external;

type
  PXRRProviderInfo = ^TXRRProviderInfo;

  TXRRProviderInfo = record
    capabilities: cuint;
    ncrtcs: cint;
    crtcs: PRRCrtc;
    noutputs: cint;
    outputs: PRROutput;
    Name: PChar;
    nassociatedproviders: cint;
    associated_providers: PRRProvider;
    associated_capability: pcuint;
    nameLen: cint;
  end;

function XRRGetProviderInfo(dpy: PDisplay; resources: PXRRScreenResources; provider: TRRProvider): PXRRProviderInfo; cdecl; external;
procedure XRRFreeProviderInfo(provider: PXRRProviderInfo); cdecl; external;
function XRRSetProviderOutputSource(dpy: PDisplay; provider: TXID; source_provider: TXID): cint; cdecl; external;
function XRRSetProviderOffloadSink(dpy: PDisplay; provider: TXID; sink_provider: TXID): cint; cdecl; external;
function XRRListProviderProperties(dpy: PDisplay; provider: TRRProvider; nprop: Pcint): PAtom; cdecl; external;
function XRRQueryProviderProperty(dpy: PDisplay; provider: TRRProvider; _property: TAtom): PXRRPropertyInfo; cdecl; external;
procedure XRRConfigureProviderProperty(dpy: PDisplay; provider: TRRProvider; _property: TAtom; pending: TBool; range: TBool;
  num_values: cint; values: Pcint); cdecl; external;
procedure XRRChangeProviderProperty(dpy: PDisplay; provider: TRRProvider; _property: TAtom; _type: TAtom; format: cint;
  mode: cint; Data: pbyte; nelements: cint); cdecl; external;
procedure XRRDeleteProviderProperty(dpy: PDisplay; provider: TRRProvider; _property: TAtom); cdecl; external;
function XRRGetProviderProperty(dpy: PDisplay; provider: TRRProvider; _property: TAtom; offset: clong; length: clong;
  _delete: TBool; pending: TBool; req_type: TAtom; actual_type: PAtom; actual_format: Pcint;
  nitems: pculong; bytes_after: pculong; prop: PPbyte): cint; cdecl; external;

type
  PXRRMonitorInfo = ^TXRRMonitorInfo;

  TXRRMonitorInfo = record
    Name: TAtom;
    primary: TBool;
    automatic: TBool;
    noutput: cint;
    x: cint;
    y: cint;
    Width: cint;
    Height: cint;
    mwidth: cint;
    mheight: cint;
    outputs: PRROutput;
  end;

function XRRAllocateMonitor(dpy: PDisplay; noutput: cint): PXRRMonitorInfo; cdecl; external;
function XRRGetMonitors(dpy: PDisplay; window: TWindow; get_active: TBool; nmonitors: Pcint): PXRRMonitorInfo; cdecl; external;
procedure XRRSetMonitor(dpy: PDisplay; window: TWindow; monitor: PXRRMonitorInfo); cdecl; external;
procedure XRRDeleteMonitor(dpy: PDisplay; window: TWindow; Name: TAtom); cdecl; external;
procedure XRRFreeMonitors(monitors: PXRRMonitorInfo); cdecl; external;

implementation

end.
