
unit randr;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/randr.h
  The following command line parameters were used:
    /usr/include/X11/extensions/randr.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/randr.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _RANDR_H_}
{$define _RANDR_H_}  

  type
    Rotation = word;

    SizeID = word;

    SubpixelOrder = word;

    Connection = word;

    XRandrRotation = word;

    XRandrSizeID = word;

    XRandrSubpixelOrder = word;

    XRandrModeFlags = dword;

  const
    RANDR_NAME = 'RANDR';    
    RANDR_MAJOR = 1;    
    RANDR_MINOR = 6;    
    RRNumberErrors = 5;    
    RRNumberEvents = 2;    
    RRNumberRequests = 47;    
    X_RRQueryVersion = 0;    

    X_RROldGetScreenInfo = 1;    
    X_RR1_0SetScreenConfig = 2;    

    X_RRSetScreenConfig = 2;    
    X_RROldScreenChangeSelectInput = 3;    

    X_RRSelectInput = 4;    
    X_RRGetScreenInfo = 5;    

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

    X_RRGetMonitors = 42;    
    X_RRSetMonitor = 43;    
    X_RRDeleteMonitor = 44;    

    X_RRCreateLease = 45;    
    X_RRFreeLease = 46;    

    RRScreenChangeNotifyMask = 1 shl 0;    

    RRCrtcChangeNotifyMask = 1 shl 1;    
    RROutputChangeNotifyMask = 1 shl 2;    
    RROutputPropertyNotifyMask = 1 shl 3;    

    RRProviderChangeNotifyMask = 1 shl 4;    
    RRProviderPropertyNotifyMask = 1 shl 5;    
    RRResourceChangeNotifyMask = 1 shl 6;    

    RRLeaseNotifyMask = 1 shl 7;    

    RRScreenChangeNotify = 0;    

    RRNotify = 1;    

    RRNotify_CrtcChange = 0;    
    RRNotify_OutputChange = 1;    
    RRNotify_OutputProperty = 2;    
    RRNotify_ProviderChange = 3;    
    RRNotify_ProviderProperty = 4;    
    RRNotify_ResourceChange = 5;    

    RRNotify_Lease = 6;    

    RR_Rotate_0 = 1;    
    RR_Rotate_90 = 2;    
    RR_Rotate_180 = 4;    
    RR_Rotate_270 = 8;    

    RR_Reflect_X = 16;    
    RR_Reflect_Y = 32;    
    RRSetConfigSuccess = 0;    
    RRSetConfigInvalidConfigTime = 1;    
    RRSetConfigInvalidTime = 2;    
    RRSetConfigFailed = 3;    

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

    RR_Capability_None = 0;    
    RR_Capability_SourceOutput = 1;    
    RR_Capability_SinkOutput = 2;    
    RR_Capability_SourceOffload = 4;    
    RR_Capability_SinkOffload = 8;    
{$endif}


implementation


end.
