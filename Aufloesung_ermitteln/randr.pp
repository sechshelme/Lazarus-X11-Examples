unit randr;
interface

{
  Automatically converted by H2Pas 1.0.0 from randr.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    randr.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{
 * Copyright © 2000 Compaq Computer Corporation
 * Copyright © 2002 Hewlett Packard Company
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
{$ifndef _RANDR_H_}
{$define _RANDR_H_}
type
  PRotation = ^TRotation;
  TRotation = word;

  PSizeID = ^TSizeID;
  TSizeID = word;

  PSubpixelOrder = ^TSubpixelOrder;
  TSubpixelOrder = word;

  PConnection = ^TConnection;
  TConnection = word;

  PXRandrRotation = ^TXRandrRotation;
  TXRandrRotation = word;

  PXRandrSizeID = ^TXRandrSizeID;
  TXRandrSizeID = word;

  PXRandrSubpixelOrder = ^TXRandrSubpixelOrder;
  TXRandrSubpixelOrder = word;

  PXRandrModeFlags = ^TXRandrModeFlags;
  TXRandrModeFlags = dword;

const
  RANDR_NAME = 'RANDR';  
  RANDR_MAJOR = 1;  
  RANDR_MINOR = 6;  
  RRNumberErrors = 5;  
  RRNumberEvents = 2;  
  RRNumberRequests = 47;  
  X_RRQueryVersion = 0;  
{ we skip 1 to make old clients fail pretty immediately  }
  X_RROldGetScreenInfo = 1;  
  X_RR1_0SetScreenConfig = 2;  
{ V1.0 apps share the same set screen config request id  }
  X_RRSetScreenConfig = 2;  
  X_RROldScreenChangeSelectInput = 3;  
{ 3 used to be ScreenChangeSelectInput; deprecated  }
  X_RRSelectInput = 4;  
  X_RRGetScreenInfo = 5;  
{ V1.2 additions  }
  X_RRGetScreenSizeRange = 6;  
  X_RRSetScreenSize = 7;  
  X_RRGetScreenResources = 8;  
  X_RRGetOutputInfo = 9;  
  X_RRListOutputProperties = 10;  
  X_RRQueryOutputProperty = 11;  
  X_RRConfigureOutputProperty = 12;  
  X_RRChangeOutputProperty = 13;  
  X_RRDeleteOutputProperty = 14;  
  X_RRGetOutputProperty = 15;  
  X_RRCreateMode = 16;  
  X_RRDestroyMode = 17;  
  X_RRAddOutputMode = 18;  
  X_RRDeleteOutputMode = 19;  
  X_RRGetCrtcInfo = 20;  
  X_RRSetCrtcConfig = 21;  
  X_RRGetCrtcGammaSize = 22;  
  X_RRGetCrtcGamma = 23;  
  X_RRSetCrtcGamma = 24;  
{ V1.3 additions  }
  X_RRGetScreenResourcesCurrent = 25;  
  X_RRSetCrtcTransform = 26;  
  X_RRGetCrtcTransform = 27;  
  X_RRGetPanning = 28;  
  X_RRSetPanning = 29;  
  X_RRSetOutputPrimary = 30;  
  X_RRGetOutputPrimary = 31;  
  RRTransformUnit = 1 shl 0;  
  RRTransformScaleUp = 1 shl 1;  
  RRTransformScaleDown = 1 shl 2;  
  RRTransformProjective = 1 shl 3;  
{ v1.4  }
  X_RRGetProviders = 32;  
  X_RRGetProviderInfo = 33;  
  X_RRSetProviderOffloadSink = 34;  
  X_RRSetProviderOutputSource = 35;  
  X_RRListProviderProperties = 36;  
  X_RRQueryProviderProperty = 37;  
  X_RRConfigureProviderProperty = 38;  
  X_RRChangeProviderProperty = 39;  
  X_RRDeleteProviderProperty = 40;  
  X_RRGetProviderProperty = 41;  
{ v1.5  }
  X_RRGetMonitors = 42;  
  X_RRSetMonitor = 43;  
  X_RRDeleteMonitor = 44;  
{ v1.6  }
  X_RRCreateLease = 45;  
  X_RRFreeLease = 46;  
{ Event selection bits  }
  RRScreenChangeNotifyMask = 1 shl 0;  
{ V1.2 additions  }
  RRCrtcChangeNotifyMask = 1 shl 1;  
  RROutputChangeNotifyMask = 1 shl 2;  
  RROutputPropertyNotifyMask = 1 shl 3;  
{ V1.4 additions  }
  RRProviderChangeNotifyMask = 1 shl 4;  
  RRProviderPropertyNotifyMask = 1 shl 5;  
  RRResourceChangeNotifyMask = 1 shl 6;  
{ V1.6 additions  }
  RRLeaseNotifyMask = 1 shl 7;  
{ Event codes  }
  RRScreenChangeNotify = 0;  
{ V1.2 additions  }
  RRNotify = 1;  
{ RRNotify Subcodes  }
  RRNotify_CrtcChange = 0;  
  RRNotify_OutputChange = 1;  
  RRNotify_OutputProperty = 2;  
  RRNotify_ProviderChange = 3;  
  RRNotify_ProviderProperty = 4;  
  RRNotify_ResourceChange = 5;  
{ V1.6 additions  }
  RRNotify_Lease = 6;  
{ used in the rotation field; rotation and reflection in 0.1 proto.  }
  RR_Rotate_0 = 1;  
  RR_Rotate_90 = 2;  
  RR_Rotate_180 = 4;  
  RR_Rotate_270 = 8;  
{ new in 1.0 protocol, to allow reflection of screen  }
  RR_Reflect_X = 16;  
  RR_Reflect_Y = 32;  
  RRSetConfigSuccess = 0;  
  RRSetConfigInvalidConfigTime = 1;  
  RRSetConfigInvalidTime = 2;  
  RRSetConfigFailed = 3;  
{ new in 1.2 protocol  }
  RR_HSyncPositive = $00000001;  
  RR_HSyncNegative = $00000002;  
  RR_VSyncPositive = $00000004;  
  RR_VSyncNegative = $00000008;  
  RR_Interlace = $00000010;  
  RR_DoubleScan = $00000020;  
  RR_CSync = $00000040;  
  RR_CSyncPositive = $00000080;  
  RR_CSyncNegative = $00000100;  
  RR_HSkewPresent = $00000200;  
  RR_BCast = $00000400;  
  RR_PixelMultiplex = $00000800;  
  RR_DoubleClock = $00001000;  
  RR_ClockDivideBy2 = $00002000;  
  RR_Connected = 0;  
  RR_Disconnected = 1;  
  RR_UnknownConnection = 2;  
  BadRROutput = 0;  
  BadRRCrtc = 1;  
  BadRRMode = 2;  
  BadRRProvider = 3;  
  BadRRLease = 4;  
{ Conventional RandR output properties  }
  RR_PROPERTY_BACKLIGHT = 'Backlight';  
  RR_PROPERTY_RANDR_EDID = 'EDID';  
  RR_PROPERTY_SIGNAL_FORMAT = 'SignalFormat';  
  RR_PROPERTY_SIGNAL_PROPERTIES = 'SignalProperties';  
  RR_PROPERTY_CONNECTOR_TYPE = 'ConnectorType';  
  RR_PROPERTY_CONNECTOR_NUMBER = 'ConnectorNumber';  
  RR_PROPERTY_COMPATIBILITY_LIST = 'CompatibilityList';  
  RR_PROPERTY_CLONE_LIST = 'CloneList';  
  RR_PROPERTY_BORDER = 'Border';  
  RR_PROPERTY_BORDER_DIMENSIONS = 'BorderDimensions';  
  RR_PROPERTY_GUID = 'GUID';  
  RR_PROPERTY_RANDR_TILE = 'TILE';  
  RR_PROPERTY_NON_DESKTOP = 'non-desktop';  
{ roles this device can carry out  }
  RR_Capability_None = 0;  
  RR_Capability_SourceOutput = 1;  
  RR_Capability_SinkOutput = 2;  
  RR_Capability_SourceOffload = 4;  
  RR_Capability_SinkOffload = 8;  
{$endif}
{ _RANDR_H_  }

implementation


end.
