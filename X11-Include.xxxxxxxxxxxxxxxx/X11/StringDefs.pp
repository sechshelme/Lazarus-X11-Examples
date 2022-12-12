
unit StringDefs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/StringDefs.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/StringDefs.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/StringDefs.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtStringDefs_h_}
{$define _XtStringDefs_h_}
{$ifndef XTSTRINGDEFINES}
(* error 
#define _XtStringDefs_h_Const const
in define line 52 *)
{$endif}



{$ifdef XTSTRINGDEFINES}

    const
      XtNaccelerators = 'accelerators';      
      XtNallowHoriz = 'allowHoriz';      
      XtNallowVert = 'allowVert';      
      XtNancestorSensitive = 'ancestorSensitive';      
      XtNbackground = 'background';      
      XtNbackgroundPixmap = 'backgroundPixmap';      
      XtNbitmap = 'bitmap';      
      XtNborderColor = 'borderColor';      
      XtNborder = 'borderColor';      
      XtNborderPixmap = 'borderPixmap';      
      XtNborderWidth = 'borderWidth';      
      XtNcallback = 'callback';      
      XtNchildren = 'children';      
      XtNcolormap = 'colormap';      
      XtNdepth = 'depth';      
      XtNdestroyCallback = 'destroyCallback';      
      XtNeditType = 'editType';      
      XtNfile = 'file';      
      XtNfont = 'font';      
      XtNforceBars = 'forceBars';      
      XtNforeground = 'foreground';      
      XtNfunction = 'function';      
      XtNheight = 'height';      
      XtNhighlight = 'highlight';      
      XtNhSpace = 'hSpace';      
      XtNindex = 'index';      
      XtNinitialResourcesPersistent = 'initialResourcesPersistent';      
      XtNinnerHeight = 'innerHeight';      
      XtNinnerWidth = 'innerWidth';      
      XtNinnerWindow = 'innerWindow';      
      XtNinsertPosition = 'insertPosition';      
      XtNinternalHeight = 'internalHeight';      
      XtNinternalWidth = 'internalWidth';      
      XtNjumpProc = 'jumpProc';      
      XtNjustify = 'justify';      
      XtNknobHeight = 'knobHeight';      
      XtNknobIndent = 'knobIndent';      
      XtNknobPixel = 'knobPixel';      
      XtNknobWidth = 'knobWidth';      
      XtNlabel = 'label';      
      XtNlength = 'length';      
      XtNlowerRight = 'lowerRight';      
      XtNmappedWhenManaged = 'mappedWhenManaged';      
      XtNmenuEntry = 'menuEntry';      
      XtNname = 'name';      
      XtNnotify = 'notify';      
      XtNnumChildren = 'numChildren';      
      XtNorientation = 'orientation';      
      XtNparameter = 'parameter';      
      XtNpixmap = 'pixmap';      
      XtNpopupCallback = 'popupCallback';      
      XtNpopdownCallback = 'popdownCallback';      
      XtNresize = 'resize';      
      XtNreverseVideo = 'reverseVideo';      
      XtNscreen = 'screen';      
      XtNscrollProc = 'scrollProc';      
      XtNscrollDCursor = 'scrollDCursor';      
      XtNscrollHCursor = 'scrollHCursor';      
      XtNscrollLCursor = 'scrollLCursor';      
      XtNscrollRCursor = 'scrollRCursor';      
      XtNscrollUCursor = 'scrollUCursor';      
      XtNscrollVCursor = 'scrollVCursor';      
      XtNselection = 'selection';      
      XtNselectionArray = 'selectionArray';      
      XtNsensitive = 'sensitive';      
      XtNshown = 'shown';      
      XtNspace = 'space';      
      XtNstring = 'string';      
      XtNtextOptions = 'textOptions';      
      XtNtextSink = 'textSink';      
      XtNtextSource = 'textSource';      
      XtNthickness = 'thickness';      
      XtNthumb = 'thumb';      
      XtNthumbProc = 'thumbProc';      
      XtNtop = 'top';      
      XtNtranslations = 'translations';      
      XtNunrealizeCallback = 'unrealizeCallback';      
      XtNupdate = 'update';      
      XtNuseBottom = 'useBottom';      
      XtNuseRight = 'useRight';      
      XtNvalue = 'value';      
      XtNvSpace = 'vSpace';      
      XtNwidth = 'width';      
      XtNwindow = 'window';      
      XtNx = 'x';      
      XtNy = 'y';      
      XtCAccelerators = 'Accelerators';      
      XtCBackground = 'Background';      
      XtCBitmap = 'Bitmap';      
      XtCBoolean = 'Boolean';      
      XtCBorderColor = 'BorderColor';      
      XtCBorderWidth = 'BorderWidth';      
      XtCCallback = 'Callback';      
      XtCColormap = 'Colormap';      
      XtCColor = 'Color';      
      XtCCursor = 'Cursor';      
      XtCDepth = 'Depth';      
      XtCEditType = 'EditType';      
      XtCEventBindings = 'EventBindings';      
      XtCFile = 'File';      
      XtCFont = 'Font';      
      XtCForeground = 'Foreground';      
      XtCFraction = 'Fraction';      
      XtCFunction = 'Function';      
      XtCHeight = 'Height';      
      XtCHSpace = 'HSpace';      
      XtCIndex = 'Index';      
      XtCInitialResourcesPersistent = 'InitialResourcesPersistent';      
      XtCInsertPosition = 'InsertPosition';      
      XtCInterval = 'Interval';      
      XtCJustify = 'Justify';      
      XtCKnobIndent = 'KnobIndent';      
      XtCKnobPixel = 'KnobPixel';      
      XtCLabel = 'Label';      
      XtCLength = 'Length';      
      XtCMappedWhenManaged = 'MappedWhenManaged';      
      XtCMargin = 'Margin';      
      XtCMenuEntry = 'MenuEntry';      
      XtCNotify = 'Notify';      
      XtCOrientation = 'Orientation';      
      XtCParameter = 'Parameter';      
      XtCPixmap = 'Pixmap';      
      XtCPosition = 'Position';      
      XtCReadOnly = 'ReadOnly';      
      XtCResize = 'Resize';      
      XtCReverseVideo = 'ReverseVideo';      
      XtCScreen = 'Screen';      
      XtCScrollProc = 'ScrollProc';      
      XtCScrollDCursor = 'ScrollDCursor';      
      XtCScrollHCursor = 'ScrollHCursor';      
      XtCScrollLCursor = 'ScrollLCursor';      
      XtCScrollRCursor = 'ScrollRCursor';      
      XtCScrollUCursor = 'ScrollUCursor';      
      XtCScrollVCursor = 'ScrollVCursor';      
      XtCSelection = 'Selection';      
      XtCSensitive = 'Sensitive';      
      XtCSelectionArray = 'SelectionArray';      
      XtCSpace = 'Space';      
      XtCString = 'String';      
      XtCTextOptions = 'TextOptions';      
      XtCTextPosition = 'TextPosition';      
      XtCTextSink = 'TextSink';      
      XtCTextSource = 'TextSource';      
      XtCThickness = 'Thickness';      
      XtCThumb = 'Thumb';      
      XtCTranslations = 'Translations';      
      XtCValue = 'Value';      
      XtCVSpace = 'VSpace';      
      XtCWidth = 'Width';      
      XtCWindow = 'Window';      
      XtCX = 'X';      
      XtCY = 'Y';      
      XtRAcceleratorTable = 'AcceleratorTable';      
{$ifndef XtRAtom}

    const
      XtRAtom = 'Atom';      
{$endif}

    const
      XtRBitmap = 'Bitmap';      
      XtRBool = 'Bool';      
      XtRBoolean = 'Boolean';      
      XtRCallback = 'Callback';      
      XtRCallProc = 'CallProc';      
      XtRCardinal = 'Cardinal';      
      XtRColor = 'Color';      
      XtRColormap = 'Colormap';      
      XtRCursor = 'Cursor';      
      XtRDimension = 'Dimension';      
      XtRDisplay = 'Display';      
      XtREditMode = 'EditMode';      
      XtREnum = 'Enum';      
      XtRFile = 'File';      
      XtRFloat = 'Float';      
      XtRFont = 'Font';      
      XtRFontStruct = 'FontStruct';      
      XtRFunction = 'Function';      
      XtRGeometry = 'Geometry';      
      XtRImmediate = 'Immediate';      
      XtRInitialState = 'InitialState';      
      XtRInt = 'Int';      
      XtRJustify = 'Justify';      
      XtRLongBoolean = 'Bool';      
      XtRObject = 'Object';      
      XtROrientation = 'Orientation';      
      XtRPixel = 'Pixel';      
      XtRPixmap = 'Pixmap';      
      XtRPointer = 'Pointer';      
      XtRPosition = 'Position';      
      XtRScreen = 'Screen';      
      XtRShort = 'Short';      
      XtRString = 'String';      
      XtRStringArray = 'StringArray';      
      XtRStringTable = 'StringTable';      
      XtRUnsignedChar = 'UnsignedChar';      
      XtRTranslationTable = 'TranslationTable';      
      XtRVisual = 'Visual';      
      XtRWidget = 'Widget';      
      XtRWidgetClass = 'WidgetClass';      
      XtRWidgetList = 'WidgetList';      
      XtRWindow = 'Window';      
      XtEoff = 'off';      
      XtEfalse = 'false';      
      XtEno = 'no';      
      XtEon = 'on';      
      XtEtrue = 'true';      
      XtEyes = 'yes';      
      XtEvertical = 'vertical';      
      XtEhorizontal = 'horizontal';      
      XtEtextRead = 'read';      
      XtEtextAppend = 'append';      
      XtEtextEdit = 'edit';      
      XtExtdefaultbackground = 'xtdefaultbackground';      
      XtExtdefaultforeground = 'xtdefaultforeground';      
      XtExtdefaultfont = 'xtdefaultfont';      
      XtNfontSet = 'fontSet';      
      XtRFontSet = 'FontSet';      
      XtCFontSet = 'FontSet';      
      XtRGravity = 'Gravity';      
      XtNcreateHook = 'createHook';      
      XtNchangeHook = 'changeHook';      
      XtNconfigureHook = 'configureHook';      
      XtNgeometryHook = 'geometryHook';      
      XtNdestroyHook = 'destroyHook';      
      XtNshells = 'shells';      
      XtNnumShells = 'numShells';      
      XtRCommandArgArray = 'CommandArgArray';      
      XtRDirectoryString = 'DirectoryString';      
      XtREnvironmentArray = 'EnvironmentArray';      
      XtRRestartStyle = 'RestartStyle';      
      XtRSmcConn = 'SmcConn';      
      XtHcreate = 'Xtcreate';      
      XtHsetValues = 'XtsetValues';      
      XtHmanageChildren = 'XtmanageChildren';      
      XtHunmanageChildren = 'XtunmanageChildren';      
      XtHmanageSet = 'XtmanageSet';      
      XtHunmanageSet = 'XtunmanageSet';      
      XtHrealizeWidget = 'XtrealizeWidget';      
      XtHunrealizeWidget = 'XtunrealizeWidget';      
      XtHaddCallback = 'XtaddCallback';      
      XtHaddCallbacks = 'XtaddCallbacks';      
      XtHremoveCallback = 'XtremoveCallback';      
      XtHremoveCallbacks = 'XtremoveCallbacks';      
      XtHremoveAllCallbacks = 'XtremoveAllCallbacks';      
      XtHaugmentTranslations = 'XtaugmentTranslations';      
      XtHoverrideTranslations = 'XtoverrideTranslations';      
      XtHuninstallTranslations = 'XtuninstallTranslations';      
      XtHsetKeyboardFocus = 'XtsetKeyboardFocus';      
      XtHsetWMColormapWindows = 'XtsetWMColormapWindows';      
      XtHsetMappedWhenManaged = 'XtsetMappedWhenManaged';      
      XtHmapWidget = 'XtmapWidget';      
      XtHunmapWidget = 'XtunmapWidget';      
      XtHpopup = 'Xtpopup';      
      XtHpopupSpringLoaded = 'XtpopupSpringLoaded';      
      XtHpopdown = 'Xtpopdown';      
      XtHconfigure = 'Xtconfigure';      
      XtHpreGeometry = 'XtpreGeometry';      
      XtHpostGeometry = 'XtpostGeometry';      
      XtHdestroy = 'Xtdestroy';      
{$else}
(* error 
extern _XtStringDefs_h_Const char XtStrings[];
in declaration at line 316 *)
{$ifndef XtNaccelerators}

    function XtNaccelerators : TString;      

{$endif}
{$ifndef XtNallowHoriz}

    function XtNallowHoriz : TString;      

{$endif}
{$ifndef XtNallowVert}

    function XtNallowVert : TString;      

{$endif}
{$ifndef XtNancestorSensitive}

    function XtNancestorSensitive : TString;      

{$endif}
{$ifndef XtNbackground}

    function XtNbackground : TString;      

{$endif}
{$ifndef XtNbackgroundPixmap}

    function XtNbackgroundPixmap : TString;      

{$endif}
{$ifndef XtNbitmap}

    function XtNbitmap : TString;      

{$endif}
{$ifndef XtNborderColor}

    function XtNborderColor : TString;      

{$endif}
{$ifndef XtNborder}

    function XtNborder : TString;      

{$endif}
{$ifndef XtNborderPixmap}

    function XtNborderPixmap : TString;      

{$endif}
{$ifndef XtNborderWidth}

    function XtNborderWidth : TString;      

{$endif}
{$ifndef XtNcallback}

    function XtNcallback : TString;      

{$endif}
{$ifndef XtNchildren}

    function XtNchildren : TString;      

{$endif}
{$ifndef XtNcolormap}

    function XtNcolormap : TString;      

{$endif}
{$ifndef XtNdepth}

    function XtNdepth : TString;      

{$endif}
{$ifndef XtNdestroyCallback}

    function XtNdestroyCallback : TString;      

{$endif}
{$ifndef XtNeditType}

    function XtNeditType : TString;      

{$endif}
{$ifndef XtNfile}

    function XtNfile : TString;      

{$endif}
{$ifndef XtNfont}

    function XtNfont : TString;      

{$endif}
{$ifndef XtNforceBars}

    function XtNforceBars : TString;      

{$endif}
{$ifndef XtNforeground}

    function XtNforeground : TString;      

{$endif}
{$ifndef XtNfunction}

    function XtNfunction : TString;      

{$endif}
{$ifndef XtNheight}

    function XtNheight : TString;      

{$endif}
{$ifndef XtNhighlight}

    function XtNhighlight : TString;      

{$endif}
{$ifndef XtNhSpace}

    function XtNhSpace : TString;      

{$endif}
{$ifndef XtNindex}

    function XtNindex : TString;      

{$endif}
{$ifndef XtNinitialResourcesPersistent}

    function XtNinitialResourcesPersistent : TString;      

{$endif}
{$ifndef XtNinnerHeight}

    function XtNinnerHeight : TString;      

{$endif}
{$ifndef XtNinnerWidth}

    function XtNinnerWidth : TString;      

{$endif}
{$ifndef XtNinnerWindow}

    function XtNinnerWindow : TString;      

{$endif}
{$ifndef XtNinsertPosition}

    function XtNinsertPosition : TString;      

{$endif}
{$ifndef XtNinternalHeight}

    function XtNinternalHeight : TString;      

{$endif}
{$ifndef XtNinternalWidth}

    function XtNinternalWidth : TString;      

{$endif}
{$ifndef XtNjumpProc}

    function XtNjumpProc : TString;      

{$endif}
{$ifndef XtNjustify}

    function XtNjustify : TString;      

{$endif}
{$ifndef XtNknobHeight}

    function XtNknobHeight : TString;      

{$endif}
{$ifndef XtNknobIndent}

    function XtNknobIndent : TString;      

{$endif}
{$ifndef XtNknobPixel}

    function XtNknobPixel : TString;      

{$endif}
{$ifndef XtNknobWidth}

    function XtNknobWidth : TString;      

{$endif}
{$ifndef XtNlabel}

    function XtNlabel : TString;      

{$endif}
{$ifndef XtNlength}

    function XtNlength : TString;      

{$endif}
{$ifndef XtNlowerRight}

    function XtNlowerRight : TString;      

{$endif}
{$ifndef XtNmappedWhenManaged}

    function XtNmappedWhenManaged : TString;      

{$endif}
{$ifndef XtNmenuEntry}

    function XtNmenuEntry : TString;      

{$endif}
{$ifndef XtNname}

    function XtNname : TString;      

{$endif}
{$ifndef XtNnotify}

    function XtNnotify : TString;      

{$endif}
{$ifndef XtNnumChildren}

    function XtNnumChildren : TString;      

{$endif}
{$ifndef XtNorientation}

    function XtNorientation : TString;      

{$endif}
{$ifndef XtNparameter}

    function XtNparameter : TString;      

{$endif}
{$ifndef XtNpixmap}

    function XtNpixmap : TString;      

{$endif}
{$ifndef XtNpopupCallback}

    function XtNpopupCallback : TString;      

{$endif}
{$ifndef XtNpopdownCallback}

    function XtNpopdownCallback : TString;      

{$endif}
{$ifndef XtNresize}

    function XtNresize : TString;      

{$endif}
{$ifndef XtNreverseVideo}

    function XtNreverseVideo : TString;      

{$endif}
{$ifndef XtNscreen}

    function XtNscreen : TString;      

{$endif}
{$ifndef XtNscrollProc}

    function XtNscrollProc : TString;      

{$endif}
{$ifndef XtNscrollDCursor}

    function XtNscrollDCursor : TString;      

{$endif}
{$ifndef XtNscrollHCursor}

    function XtNscrollHCursor : TString;      

{$endif}
{$ifndef XtNscrollLCursor}

    function XtNscrollLCursor : TString;      

{$endif}
{$ifndef XtNscrollRCursor}

    function XtNscrollRCursor : TString;      

{$endif}
{$ifndef XtNscrollUCursor}

    function XtNscrollUCursor : TString;      

{$endif}
{$ifndef XtNscrollVCursor}

    function XtNscrollVCursor : TString;      

{$endif}
{$ifndef XtNselection}

    function XtNselection : TString;      

{$endif}
{$ifndef XtNselectionArray}

    function XtNselectionArray : TString;      

{$endif}
{$ifndef XtNsensitive}

    function XtNsensitive : TString;      

{$endif}
{$ifndef XtNshown}

    function XtNshown : TString;      

{$endif}
{$ifndef XtNspace}

    function XtNspace : TString;      

{$endif}
{$ifndef XtNstring}

    function XtNstring : TString;      

{$endif}
{$ifndef XtNtextOptions}

    function XtNtextOptions : TString;      

{$endif}
{$ifndef XtNtextSink}

    function XtNtextSink : TString;      

{$endif}
{$ifndef XtNtextSource}

    function XtNtextSource : TString;      

{$endif}
{$ifndef XtNthickness}

    function XtNthickness : TString;      

{$endif}
{$ifndef XtNthumb}

    function XtNthumb : TString;      

{$endif}
{$ifndef XtNthumbProc}

    function XtNthumbProc : TString;      

{$endif}
{$ifndef XtNtop}

    function XtNtop : TString;      

{$endif}
{$ifndef XtNtranslations}

    function XtNtranslations : TString;      

{$endif}
{$ifndef XtNunrealizeCallback}

    function XtNunrealizeCallback : TString;      

{$endif}
{$ifndef XtNupdate}

    function XtNupdate : TString;      

{$endif}
{$ifndef XtNuseBottom}

    function XtNuseBottom : TString;      

{$endif}
{$ifndef XtNuseRight}

    function XtNuseRight : TString;      

{$endif}
{$ifndef XtNvalue}

    function XtNvalue : TString;      

{$endif}
{$ifndef XtNvSpace}

    function XtNvSpace : TString;      

{$endif}
{$ifndef XtNwidth}

    function XtNwidth : TString;      

{$endif}
{$ifndef XtNwindow}

    function XtNwindow : TString;      

{$endif}
{$ifndef XtNx}

    function XtNx : TString;      

{$endif}
{$ifndef XtNy}

    function XtNy : TString;      

{$endif}
{$ifndef XtCAccelerators}

    function XtCAccelerators : TString;      

{$endif}
{$ifndef XtCBackground}

    function XtCBackground : TString;      

{$endif}
{$ifndef XtCBitmap}

    function XtCBitmap : TString;      

{$endif}
{$ifndef XtCBoolean}

    function XtCBoolean : TString;      

{$endif}
{$ifndef XtCBorderColor}

    function XtCBorderColor : TString;      

{$endif}
{$ifndef XtCBorderWidth}

    function XtCBorderWidth : TString;      

{$endif}
{$ifndef XtCCallback}

    function XtCCallback : TString;      

{$endif}
{$ifndef XtCColormap}

    function XtCColormap : TString;      

{$endif}
{$ifndef XtCColor}

    function XtCColor : TString;      

{$endif}
{$ifndef XtCCursor}

    function XtCCursor : TString;      

{$endif}
{$ifndef XtCDepth}

    function XtCDepth : TString;      

{$endif}
{$ifndef XtCEditType}

    function XtCEditType : TString;      

{$endif}
{$ifndef XtCEventBindings}

    function XtCEventBindings : TString;      

{$endif}
{$ifndef XtCFile}

    function XtCFile : TString;      

{$endif}
{$ifndef XtCFont}

    function XtCFont : TString;      

{$endif}
{$ifndef XtCForeground}

    function XtCForeground : TString;      

{$endif}
{$ifndef XtCFraction}

    function XtCFraction : TString;      

{$endif}
{$ifndef XtCFunction}

    function XtCFunction : TString;      

{$endif}
{$ifndef XtCHeight}

    function XtCHeight : TString;      

{$endif}
{$ifndef XtCHSpace}

    function XtCHSpace : TString;      

{$endif}
{$ifndef XtCIndex}

    function XtCIndex : TString;      

{$endif}
{$ifndef XtCInitialResourcesPersistent}

    function XtCInitialResourcesPersistent : TString;      

{$endif}
{$ifndef XtCInsertPosition}

    function XtCInsertPosition : TString;      

{$endif}
{$ifndef XtCInterval}

    function XtCInterval : TString;      

{$endif}
{$ifndef XtCJustify}

    function XtCJustify : TString;      

{$endif}
{$ifndef XtCKnobIndent}

    function XtCKnobIndent : TString;      

{$endif}
{$ifndef XtCKnobPixel}

    function XtCKnobPixel : TString;      

{$endif}
{$ifndef XtCLabel}

    function XtCLabel : TString;      

{$endif}
{$ifndef XtCLength}

    function XtCLength : TString;      

{$endif}
{$ifndef XtCMappedWhenManaged}

    function XtCMappedWhenManaged : TString;      

{$endif}
{$ifndef XtCMargin}

    function XtCMargin : TString;      

{$endif}
{$ifndef XtCMenuEntry}

    function XtCMenuEntry : TString;      

{$endif}
{$ifndef XtCNotify}

    function XtCNotify : TString;      

{$endif}
{$ifndef XtCOrientation}

    function XtCOrientation : TString;      

{$endif}
{$ifndef XtCParameter}

    function XtCParameter : TString;      

{$endif}
{$ifndef XtCPixmap}

    function XtCPixmap : TString;      

{$endif}
{$ifndef XtCPosition}

    function XtCPosition : TString;      

{$endif}
{$ifndef XtCReadOnly}

    function XtCReadOnly : TString;      

{$endif}
{$ifndef XtCResize}

    function XtCResize : TString;      

{$endif}
{$ifndef XtCReverseVideo}

    function XtCReverseVideo : TString;      

{$endif}
{$ifndef XtCScreen}

    function XtCScreen : TString;      

{$endif}
{$ifndef XtCScrollProc}

    function XtCScrollProc : TString;      

{$endif}
{$ifndef XtCScrollDCursor}

    function XtCScrollDCursor : TString;      

{$endif}
{$ifndef XtCScrollHCursor}

    function XtCScrollHCursor : TString;      

{$endif}
{$ifndef XtCScrollLCursor}

    function XtCScrollLCursor : TString;      

{$endif}
{$ifndef XtCScrollRCursor}

    function XtCScrollRCursor : TString;      

{$endif}
{$ifndef XtCScrollUCursor}

    function XtCScrollUCursor : TString;      

{$endif}
{$ifndef XtCScrollVCursor}

    function XtCScrollVCursor : TString;      

{$endif}
{$ifndef XtCSelection}

    function XtCSelection : TString;      

{$endif}
{$ifndef XtCSensitive}

    function XtCSensitive : TString;      

{$endif}
{$ifndef XtCSelectionArray}

    function XtCSelectionArray : TString;      

{$endif}
{$ifndef XtCSpace}

    function XtCSpace : TString;      

{$endif}
{$ifndef XtCString}

    function XtCString : TString;      

{$endif}
{$ifndef XtCTextOptions}

    function XtCTextOptions : TString;      

{$endif}
{$ifndef XtCTextPosition}

    function XtCTextPosition : TString;      

{$endif}
{$ifndef XtCTextSink}

    function XtCTextSink : TString;      

{$endif}
{$ifndef XtCTextSource}

    function XtCTextSource : TString;      

{$endif}
{$ifndef XtCThickness}

    function XtCThickness : TString;      

{$endif}
{$ifndef XtCThumb}

    function XtCThumb : TString;      

{$endif}
{$ifndef XtCTranslations}

    function XtCTranslations : TString;      

{$endif}
{$ifndef XtCValue}

    function XtCValue : TString;      

{$endif}
{$ifndef XtCVSpace}

    function XtCVSpace : TString;      

{$endif}
{$ifndef XtCWidth}

    function XtCWidth : TString;      

{$endif}
{$ifndef XtCWindow}

    function XtCWindow : TString;      

{$endif}
{$ifndef XtCX}

    function XtCX : TString;      

{$endif}
{$ifndef XtCY}

    function XtCY : TString;      

{$endif}
{$ifndef XtRAcceleratorTable}

    function XtRAcceleratorTable : TString;      

{$endif}
{$ifndef XtRAtom}

    function XtRAtom : TString;      

{$endif}
{$ifndef XtRBitmap}

    function XtRBitmap : TString;      

{$endif}
{$ifndef XtRBool}

    function XtRBool : TString;      

{$endif}
{$ifndef XtRBoolean}

    function XtRBoolean : TString;      

{$endif}
{$ifndef XtRCallback}

    function XtRCallback : TString;      

{$endif}
{$ifndef XtRCallProc}

    function XtRCallProc : TString;      

{$endif}
{$ifndef XtRCardinal}

    function XtRCardinal : TString;      

{$endif}
{$ifndef XtRColor}

    function XtRColor : TString;      

{$endif}
{$ifndef XtRColormap}

    function XtRColormap : TString;      

{$endif}
{$ifndef XtRCursor}

    function XtRCursor : TString;      

{$endif}
{$ifndef XtRDimension}

    function XtRDimension : TString;      

{$endif}
{$ifndef XtRDisplay}

    function XtRDisplay : TString;      

{$endif}
{$ifndef XtREditMode}

    function XtREditMode : TString;      

{$endif}
{$ifndef XtREnum}

    function XtREnum : TString;      

{$endif}
{$ifndef XtRFile}

    function XtRFile : TString;      

{$endif}
{$ifndef XtRFloat}

    function XtRFloat : TString;      

{$endif}
{$ifndef XtRFont}

    function XtRFont : TString;      

{$endif}
{$ifndef XtRFontStruct}

    function XtRFontStruct : TString;      

{$endif}
{$ifndef XtRFunction}

    function XtRFunction : TString;      

{$endif}
{$ifndef XtRGeometry}

    function XtRGeometry : TString;      

{$endif}
{$ifndef XtRImmediate}

    function XtRImmediate : TString;      

{$endif}
{$ifndef XtRInitialState}

    function XtRInitialState : TString;      

{$endif}
{$ifndef XtRInt}

    function XtRInt : TString;      

{$endif}
{$ifndef XtRJustify}

    function XtRJustify : TString;      

{$endif}
{$ifndef XtRLongBoolean}

    function XtRLongBoolean : TString;      

{$endif}
{$ifndef XtRObject}

    function XtRObject : TString;      

{$endif}
{$ifndef XtROrientation}

    function XtROrientation : TString;      

{$endif}
{$ifndef XtRPixel}

    function XtRPixel : TString;      

{$endif}
{$ifndef XtRPixmap}

    function XtRPixmap : TString;      

{$endif}
{$ifndef XtRPointer}

    function XtRPointer : TString;      

{$endif}
{$ifndef XtRPosition}

    function XtRPosition : TString;      

{$endif}
{$ifndef XtRScreen}

    function XtRScreen : TString;      

{$endif}
{$ifndef XtRShort}

    function XtRShort : TString;      

{$endif}
{$ifndef XtRString}

    function XtRString : TString;      

{$endif}
{$ifndef XtRStringArray}

    function XtRStringArray : TString;      

{$endif}
{$ifndef XtRStringTable}

    function XtRStringTable : TString;      

{$endif}
{$ifndef XtRUnsignedChar}

    function XtRUnsignedChar : TString;      

{$endif}
{$ifndef XtRTranslationTable}

    function XtRTranslationTable : TString;      

{$endif}
{$ifndef XtRVisual}

    function XtRVisual : TString;      

{$endif}
{$ifndef XtRWidget}

    function XtRWidget : TString;      

{$endif}
{$ifndef XtRWidgetClass}

    function XtRWidgetClass : TString;      

{$endif}
{$ifndef XtRWidgetList}

    function XtRWidgetList : TString;      

{$endif}
{$ifndef XtRWindow}

    function XtRWindow : TString;      

{$endif}
{$ifndef XtEoff}

    function XtEoff : TString;      

{$endif}
{$ifndef XtEfalse}

    function XtEfalse : TString;      

{$endif}
{$ifndef XtEno}

    function XtEno : TString;      

{$endif}
{$ifndef XtEon}

    function XtEon : TString;      

{$endif}
{$ifndef XtEtrue}

    function XtEtrue : TString;      

{$endif}
{$ifndef XtEyes}

    function XtEyes : TString;      

{$endif}
{$ifndef XtEvertical}

    function XtEvertical : TString;      

{$endif}
{$ifndef XtEhorizontal}

    function XtEhorizontal : TString;      

{$endif}
{$ifndef XtEtextRead}

    function XtEtextRead : TString;      

{$endif}
{$ifndef XtEtextAppend}

    function XtEtextAppend : TString;      

{$endif}
{$ifndef XtEtextEdit}

    function XtEtextEdit : TString;      

{$endif}
{$ifndef XtExtdefaultbackground}

    function XtExtdefaultbackground : TString;      

{$endif}
{$ifndef XtExtdefaultforeground}

    function XtExtdefaultforeground : TString;      

{$endif}
{$ifndef XtExtdefaultfont}

    function XtExtdefaultfont : TString;      

{$endif}
{$ifndef XtNfontSet}

    function XtNfontSet : TString;      

{$endif}
{$ifndef XtRFontSet}

    function XtRFontSet : TString;      

{$endif}
{$ifndef XtCFontSet}

    function XtCFontSet : TString;      

{$endif}
{$ifndef XtRGravity}

    function XtRGravity : TString;      

{$endif}
{$ifndef XtNcreateHook}

    function XtNcreateHook : TString;      

{$endif}
{$ifndef XtNchangeHook}

    function XtNchangeHook : TString;      

{$endif}
{$ifndef XtNconfigureHook}

    function XtNconfigureHook : TString;      

{$endif}
{$ifndef XtNgeometryHook}

    function XtNgeometryHook : TString;      

{$endif}
{$ifndef XtNdestroyHook}

    function XtNdestroyHook : TString;      

{$endif}
{$ifndef XtNshells}

    function XtNshells : TString;      

{$endif}
{$ifndef XtNnumShells}

    function XtNnumShells : TString;      

{$endif}
{$ifndef XtRCommandArgArray}

    function XtRCommandArgArray : TString;      

{$endif}
{$ifndef XtRDirectoryString}

    function XtRDirectoryString : TString;      

{$endif}
{$ifndef XtREnvironmentArray}

    function XtREnvironmentArray : TString;      

{$endif}
{$ifndef XtRRestartStyle}

    function XtRRestartStyle : TString;      

{$endif}
{$ifndef XtRSmcConn}

    function XtRSmcConn : TString;      

{$endif}
{$ifndef XtHcreate}

    function XtHcreate : TString;      

{$endif}
{$ifndef XtHsetValues}

    function XtHsetValues : TString;      

{$endif}
{$ifndef XtHmanageChildren}

    function XtHmanageChildren : TString;      

{$endif}
{$ifndef XtHunmanageChildren}

    function XtHunmanageChildren : TString;      

{$endif}
{$ifndef XtHmanageSet}

    function XtHmanageSet : TString;      

{$endif}
{$ifndef XtHunmanageSet}

    function XtHunmanageSet : TString;      

{$endif}
{$ifndef XtHrealizeWidget}

    function XtHrealizeWidget : TString;      

{$endif}
{$ifndef XtHunrealizeWidget}

    function XtHunrealizeWidget : TString;      

{$endif}
{$ifndef XtHaddCallback}

    function XtHaddCallback : TString;      

{$endif}
{$ifndef XtHaddCallbacks}

    function XtHaddCallbacks : TString;      

{$endif}
{$ifndef XtHremoveCallback}

    function XtHremoveCallback : TString;      

{$endif}
{$ifndef XtHremoveCallbacks}

    function XtHremoveCallbacks : TString;      

{$endif}
{$ifndef XtHremoveAllCallbacks}

    function XtHremoveAllCallbacks : TString;      

{$endif}
{$ifndef XtHaugmentTranslations}

    function XtHaugmentTranslations : TString;      

{$endif}
{$ifndef XtHoverrideTranslations}

    function XtHoverrideTranslations : TString;      

{$endif}
{$ifndef XtHuninstallTranslations}

    function XtHuninstallTranslations : TString;      

{$endif}
{$ifndef XtHsetKeyboardFocus}

    function XtHsetKeyboardFocus : TString;      

{$endif}
{$ifndef XtHsetWMColormapWindows}

    function XtHsetWMColormapWindows : TString;      

{$endif}
{$ifndef XtHsetMappedWhenManaged}

    function XtHsetMappedWhenManaged : TString;      

{$endif}
{$ifndef XtHmapWidget}

    function XtHmapWidget : TString;      

{$endif}
{$ifndef XtHunmapWidget}

    function XtHunmapWidget : TString;      

{$endif}
{$ifndef XtHpopup}

    function XtHpopup : TString;      

{$endif}
{$ifndef XtHpopupSpringLoaded}

    function XtHpopupSpringLoaded : TString;      

{$endif}
{$ifndef XtHpopdown}

    function XtHpopdown : TString;      

{$endif}
{$ifndef XtHconfigure}

    function XtHconfigure : TString;      

{$endif}
{$ifndef XtHpreGeometry}

    function XtHpreGeometry : TString;      

{$endif}
{$ifndef XtHpostGeometry}

    function XtHpostGeometry : TString;      

{$endif}
{$ifndef XtHdestroy}

    function XtHdestroy : TString;      

{$endif}
{$endif}

{$ifndef XTSTRINGDEFINES}
{$undef _XtStringDefs_h_Const}
{$endif}
{$endif}


implementation

    function XtNaccelerators : TString;
      begin
        XtNaccelerators:=TString(@(XtStrings[0]));
      end;

    function XtNallowHoriz : TString;
      begin
        XtNallowHoriz:=TString(@(XtStrings[13]));
      end;

    function XtNallowVert : TString;
      begin
        XtNallowVert:=TString(@(XtStrings[24]));
      end;

    function XtNancestorSensitive : TString;
      begin
        XtNancestorSensitive:=TString(@(XtStrings[34]));
      end;

    function XtNbackground : TString;
      begin
        XtNbackground:=TString(@(XtStrings[52]));
      end;

    function XtNbackgroundPixmap : TString;
      begin
        XtNbackgroundPixmap:=TString(@(XtStrings[63]));
      end;

    function XtNbitmap : TString;
      begin
        XtNbitmap:=TString(@(XtStrings[80]));
      end;

    function XtNborderColor : TString;
      begin
        XtNborderColor:=TString(@(XtStrings[87]));
      end;

    function XtNborder : TString;
      begin
        XtNborder:=TString(@(XtStrings[99]));
      end;

    function XtNborderPixmap : TString;
      begin
        XtNborderPixmap:=TString(@(XtStrings[111]));
      end;

    function XtNborderWidth : TString;
      begin
        XtNborderWidth:=TString(@(XtStrings[124]));
      end;

    function XtNcallback : TString;
      begin
        XtNcallback:=TString(@(XtStrings[136]));
      end;

    function XtNchildren : TString;
      begin
        XtNchildren:=TString(@(XtStrings[145]));
      end;

    function XtNcolormap : TString;
      begin
        XtNcolormap:=TString(@(XtStrings[154]));
      end;

    function XtNdepth : TString;
      begin
        XtNdepth:=TString(@(XtStrings[163]));
      end;

    function XtNdestroyCallback : TString;
      begin
        XtNdestroyCallback:=TString(@(XtStrings[169]));
      end;

    function XtNeditType : TString;
      begin
        XtNeditType:=TString(@(XtStrings[185]));
      end;

    function XtNfile : TString;
      begin
        XtNfile:=TString(@(XtStrings[194]));
      end;

    function XtNfont : TString;
      begin
        XtNfont:=TString(@(XtStrings[199]));
      end;

    function XtNforceBars : TString;
      begin
        XtNforceBars:=TString(@(XtStrings[204]));
      end;

    function XtNforeground : TString;
      begin
        XtNforeground:=TString(@(XtStrings[214]));
      end;

    function XtNfunction : TString;
      begin
        XtNfunction:=TString(@(XtStrings[225]));
      end;

    function XtNheight : TString;
      begin
        XtNheight:=TString(@(XtStrings[234]));
      end;

    function XtNhighlight : TString;
      begin
        XtNhighlight:=TString(@(XtStrings[241]));
      end;

    function XtNhSpace : TString;
      begin
        XtNhSpace:=TString(@(XtStrings[251]));
      end;

    function XtNindex : TString;
      begin
        XtNindex:=TString(@(XtStrings[258]));
      end;

    function XtNinitialResourcesPersistent : TString;
      begin
        XtNinitialResourcesPersistent:=TString(@(XtStrings[264]));
      end;

    function XtNinnerHeight : TString;
      begin
        XtNinnerHeight:=TString(@(XtStrings[291]));
      end;

    function XtNinnerWidth : TString;
      begin
        XtNinnerWidth:=TString(@(XtStrings[303]));
      end;

    function XtNinnerWindow : TString;
      begin
        XtNinnerWindow:=TString(@(XtStrings[314]));
      end;

    function XtNinsertPosition : TString;
      begin
        XtNinsertPosition:=TString(@(XtStrings[326]));
      end;

    function XtNinternalHeight : TString;
      begin
        XtNinternalHeight:=TString(@(XtStrings[341]));
      end;

    function XtNinternalWidth : TString;
      begin
        XtNinternalWidth:=TString(@(XtStrings[356]));
      end;

    function XtNjumpProc : TString;
      begin
        XtNjumpProc:=TString(@(XtStrings[370]));
      end;

    function XtNjustify : TString;
      begin
        XtNjustify:=TString(@(XtStrings[379]));
      end;

    function XtNknobHeight : TString;
      begin
        XtNknobHeight:=TString(@(XtStrings[387]));
      end;

    function XtNknobIndent : TString;
      begin
        XtNknobIndent:=TString(@(XtStrings[398]));
      end;

    function XtNknobPixel : TString;
      begin
        XtNknobPixel:=TString(@(XtStrings[409]));
      end;

    function XtNknobWidth : TString;
      begin
        XtNknobWidth:=TString(@(XtStrings[419]));
      end;

    function XtNlabel : TString;
      begin
        XtNlabel:=TString(@(XtStrings[429]));
      end;

    function XtNlength : TString;
      begin
        XtNlength:=TString(@(XtStrings[435]));
      end;

    function XtNlowerRight : TString;
      begin
        XtNlowerRight:=TString(@(XtStrings[442]));
      end;

    function XtNmappedWhenManaged : TString;
      begin
        XtNmappedWhenManaged:=TString(@(XtStrings[453]));
      end;

    function XtNmenuEntry : TString;
      begin
        XtNmenuEntry:=TString(@(XtStrings[471]));
      end;

    function XtNname : TString;
      begin
        XtNname:=TString(@(XtStrings[481]));
      end;

    function XtNnotify : TString;
      begin
        XtNnotify:=TString(@(XtStrings[486]));
      end;

    function XtNnumChildren : TString;
      begin
        XtNnumChildren:=TString(@(XtStrings[493]));
      end;

    function XtNorientation : TString;
      begin
        XtNorientation:=TString(@(XtStrings[505]));
      end;

    function XtNparameter : TString;
      begin
        XtNparameter:=TString(@(XtStrings[517]));
      end;

    function XtNpixmap : TString;
      begin
        XtNpixmap:=TString(@(XtStrings[527]));
      end;

    function XtNpopupCallback : TString;
      begin
        XtNpopupCallback:=TString(@(XtStrings[534]));
      end;

    function XtNpopdownCallback : TString;
      begin
        XtNpopdownCallback:=TString(@(XtStrings[548]));
      end;

    function XtNresize : TString;
      begin
        XtNresize:=TString(@(XtStrings[564]));
      end;

    function XtNreverseVideo : TString;
      begin
        XtNreverseVideo:=TString(@(XtStrings[571]));
      end;

    function XtNscreen : TString;
      begin
        XtNscreen:=TString(@(XtStrings[584]));
      end;

    function XtNscrollProc : TString;
      begin
        XtNscrollProc:=TString(@(XtStrings[591]));
      end;

    function XtNscrollDCursor : TString;
      begin
        XtNscrollDCursor:=TString(@(XtStrings[602]));
      end;

    function XtNscrollHCursor : TString;
      begin
        XtNscrollHCursor:=TString(@(XtStrings[616]));
      end;

    function XtNscrollLCursor : TString;
      begin
        XtNscrollLCursor:=TString(@(XtStrings[630]));
      end;

    function XtNscrollRCursor : TString;
      begin
        XtNscrollRCursor:=TString(@(XtStrings[644]));
      end;

    function XtNscrollUCursor : TString;
      begin
        XtNscrollUCursor:=TString(@(XtStrings[658]));
      end;

    function XtNscrollVCursor : TString;
      begin
        XtNscrollVCursor:=TString(@(XtStrings[672]));
      end;

    function XtNselection : TString;
      begin
        XtNselection:=TString(@(XtStrings[686]));
      end;

    function XtNselectionArray : TString;
      begin
        XtNselectionArray:=TString(@(XtStrings[696]));
      end;

    function XtNsensitive : TString;
      begin
        XtNsensitive:=TString(@(XtStrings[711]));
      end;

    function XtNshown : TString;
      begin
        XtNshown:=TString(@(XtStrings[721]));
      end;

    function XtNspace : TString;
      begin
        XtNspace:=TString(@(XtStrings[727]));
      end;

    function XtNstring : TString;
      begin
        XtNstring:=TString(@(XtStrings[733]));
      end;

    function XtNtextOptions : TString;
      begin
        XtNtextOptions:=TString(@(XtStrings[740]));
      end;

    function XtNtextSink : TString;
      begin
        XtNtextSink:=TString(@(XtStrings[752]));
      end;

    function XtNtextSource : TString;
      begin
        XtNtextSource:=TString(@(XtStrings[761]));
      end;

    function XtNthickness : TString;
      begin
        XtNthickness:=TString(@(XtStrings[772]));
      end;

    function XtNthumb : TString;
      begin
        XtNthumb:=TString(@(XtStrings[782]));
      end;

    function XtNthumbProc : TString;
      begin
        XtNthumbProc:=TString(@(XtStrings[788]));
      end;

    function XtNtop : TString;
      begin
        XtNtop:=TString(@(XtStrings[798]));
      end;

    function XtNtranslations : TString;
      begin
        XtNtranslations:=TString(@(XtStrings[802]));
      end;

    function XtNunrealizeCallback : TString;
      begin
        XtNunrealizeCallback:=TString(@(XtStrings[815]));
      end;

    function XtNupdate : TString;
      begin
        XtNupdate:=TString(@(XtStrings[833]));
      end;

    function XtNuseBottom : TString;
      begin
        XtNuseBottom:=TString(@(XtStrings[840]));
      end;

    function XtNuseRight : TString;
      begin
        XtNuseRight:=TString(@(XtStrings[850]));
      end;

    function XtNvalue : TString;
      begin
        XtNvalue:=TString(@(XtStrings[859]));
      end;

    function XtNvSpace : TString;
      begin
        XtNvSpace:=TString(@(XtStrings[865]));
      end;

    function XtNwidth : TString;
      begin
        XtNwidth:=TString(@(XtStrings[872]));
      end;

    function XtNwindow : TString;
      begin
        XtNwindow:=TString(@(XtStrings[878]));
      end;

    function XtNx : TString;
      begin
        XtNx:=TString(@(XtStrings[885]));
      end;

    function XtNy : TString;
      begin
        XtNy:=TString(@(XtStrings[887]));
      end;

    function XtCAccelerators : TString;
      begin
        XtCAccelerators:=TString(@(XtStrings[889]));
      end;

    function XtCBackground : TString;
      begin
        XtCBackground:=TString(@(XtStrings[902]));
      end;

    function XtCBitmap : TString;
      begin
        XtCBitmap:=TString(@(XtStrings[913]));
      end;

    function XtCBoolean : TString;
      begin
        XtCBoolean:=TString(@(XtStrings[920]));
      end;

    function XtCBorderColor : TString;
      begin
        XtCBorderColor:=TString(@(XtStrings[928]));
      end;

    function XtCBorderWidth : TString;
      begin
        XtCBorderWidth:=TString(@(XtStrings[940]));
      end;

    function XtCCallback : TString;
      begin
        XtCCallback:=TString(@(XtStrings[952]));
      end;

    function XtCColormap : TString;
      begin
        XtCColormap:=TString(@(XtStrings[961]));
      end;

    function XtCColor : TString;
      begin
        XtCColor:=TString(@(XtStrings[970]));
      end;

    function XtCCursor : TString;
      begin
        XtCCursor:=TString(@(XtStrings[976]));
      end;

    function XtCDepth : TString;
      begin
        XtCDepth:=TString(@(XtStrings[983]));
      end;

    function XtCEditType : TString;
      begin
        XtCEditType:=TString(@(XtStrings[989]));
      end;

    function XtCEventBindings : TString;
      begin
        XtCEventBindings:=TString(@(XtStrings[998]));
      end;

    function XtCFile : TString;
      begin
        XtCFile:=TString(@(XtStrings[1012]));
      end;

    function XtCFont : TString;
      begin
        XtCFont:=TString(@(XtStrings[1017]));
      end;

    function XtCForeground : TString;
      begin
        XtCForeground:=TString(@(XtStrings[1022]));
      end;

    function XtCFraction : TString;
      begin
        XtCFraction:=TString(@(XtStrings[1033]));
      end;

    function XtCFunction : TString;
      begin
        XtCFunction:=TString(@(XtStrings[1042]));
      end;

    function XtCHeight : TString;
      begin
        XtCHeight:=TString(@(XtStrings[1051]));
      end;

    function XtCHSpace : TString;
      begin
        XtCHSpace:=TString(@(XtStrings[1058]));
      end;

    function XtCIndex : TString;
      begin
        XtCIndex:=TString(@(XtStrings[1065]));
      end;

    function XtCInitialResourcesPersistent : TString;
      begin
        XtCInitialResourcesPersistent:=TString(@(XtStrings[1071]));
      end;

    function XtCInsertPosition : TString;
      begin
        XtCInsertPosition:=TString(@(XtStrings[1098]));
      end;

    function XtCInterval : TString;
      begin
        XtCInterval:=TString(@(XtStrings[1113]));
      end;

    function XtCJustify : TString;
      begin
        XtCJustify:=TString(@(XtStrings[1122]));
      end;

    function XtCKnobIndent : TString;
      begin
        XtCKnobIndent:=TString(@(XtStrings[1130]));
      end;

    function XtCKnobPixel : TString;
      begin
        XtCKnobPixel:=TString(@(XtStrings[1141]));
      end;

    function XtCLabel : TString;
      begin
        XtCLabel:=TString(@(XtStrings[1151]));
      end;

    function XtCLength : TString;
      begin
        XtCLength:=TString(@(XtStrings[1157]));
      end;

    function XtCMappedWhenManaged : TString;
      begin
        XtCMappedWhenManaged:=TString(@(XtStrings[1164]));
      end;

    function XtCMargin : TString;
      begin
        XtCMargin:=TString(@(XtStrings[1182]));
      end;

    function XtCMenuEntry : TString;
      begin
        XtCMenuEntry:=TString(@(XtStrings[1189]));
      end;

    function XtCNotify : TString;
      begin
        XtCNotify:=TString(@(XtStrings[1199]));
      end;

    function XtCOrientation : TString;
      begin
        XtCOrientation:=TString(@(XtStrings[1206]));
      end;

    function XtCParameter : TString;
      begin
        XtCParameter:=TString(@(XtStrings[1218]));
      end;

    function XtCPixmap : TString;
      begin
        XtCPixmap:=TString(@(XtStrings[1228]));
      end;

    function XtCPosition : TString;
      begin
        XtCPosition:=TString(@(XtStrings[1235]));
      end;

    function XtCReadOnly : TString;
      begin
        XtCReadOnly:=TString(@(XtStrings[1244]));
      end;

    function XtCResize : TString;
      begin
        XtCResize:=TString(@(XtStrings[1253]));
      end;

    function XtCReverseVideo : TString;
      begin
        XtCReverseVideo:=TString(@(XtStrings[1260]));
      end;

    function XtCScreen : TString;
      begin
        XtCScreen:=TString(@(XtStrings[1273]));
      end;

    function XtCScrollProc : TString;
      begin
        XtCScrollProc:=TString(@(XtStrings[1280]));
      end;

    function XtCScrollDCursor : TString;
      begin
        XtCScrollDCursor:=TString(@(XtStrings[1291]));
      end;

    function XtCScrollHCursor : TString;
      begin
        XtCScrollHCursor:=TString(@(XtStrings[1305]));
      end;

    function XtCScrollLCursor : TString;
      begin
        XtCScrollLCursor:=TString(@(XtStrings[1319]));
      end;

    function XtCScrollRCursor : TString;
      begin
        XtCScrollRCursor:=TString(@(XtStrings[1333]));
      end;

    function XtCScrollUCursor : TString;
      begin
        XtCScrollUCursor:=TString(@(XtStrings[1347]));
      end;

    function XtCScrollVCursor : TString;
      begin
        XtCScrollVCursor:=TString(@(XtStrings[1361]));
      end;

    function XtCSelection : TString;
      begin
        XtCSelection:=TString(@(XtStrings[1375]));
      end;

    function XtCSensitive : TString;
      begin
        XtCSensitive:=TString(@(XtStrings[1385]));
      end;

    function XtCSelectionArray : TString;
      begin
        XtCSelectionArray:=TString(@(XtStrings[1395]));
      end;

    function XtCSpace : TString;
      begin
        XtCSpace:=TString(@(XtStrings[1410]));
      end;

    function XtCString : TString;
      begin
        XtCString:=TString(@(XtStrings[1416]));
      end;

    function XtCTextOptions : TString;
      begin
        XtCTextOptions:=TString(@(XtStrings[1423]));
      end;

    function XtCTextPosition : TString;
      begin
        XtCTextPosition:=TString(@(XtStrings[1435]));
      end;

    function XtCTextSink : TString;
      begin
        XtCTextSink:=TString(@(XtStrings[1448]));
      end;

    function XtCTextSource : TString;
      begin
        XtCTextSource:=TString(@(XtStrings[1457]));
      end;

    function XtCThickness : TString;
      begin
        XtCThickness:=TString(@(XtStrings[1468]));
      end;

    function XtCThumb : TString;
      begin
        XtCThumb:=TString(@(XtStrings[1478]));
      end;

    function XtCTranslations : TString;
      begin
        XtCTranslations:=TString(@(XtStrings[1484]));
      end;

    function XtCValue : TString;
      begin
        XtCValue:=TString(@(XtStrings[1497]));
      end;

    function XtCVSpace : TString;
      begin
        XtCVSpace:=TString(@(XtStrings[1503]));
      end;

    function XtCWidth : TString;
      begin
        XtCWidth:=TString(@(XtStrings[1510]));
      end;

    function XtCWindow : TString;
      begin
        XtCWindow:=TString(@(XtStrings[1516]));
      end;

    function XtCX : TString;
      begin
        XtCX:=TString(@(XtStrings[1523]));
      end;

    function XtCY : TString;
      begin
        XtCY:=TString(@(XtStrings[1525]));
      end;

    function XtRAcceleratorTable : TString;
      begin
        XtRAcceleratorTable:=TString(@(XtStrings[1527]));
      end;

    function XtRAtom : TString;
      begin
        XtRAtom:=TString(@(XtStrings[1544]));
      end;

    function XtRBitmap : TString;
      begin
        XtRBitmap:=TString(@(XtStrings[1549]));
      end;

    function XtRBool : TString;
      begin
        XtRBool:=TString(@(XtStrings[1556]));
      end;

    function XtRBoolean : TString;
      begin
        XtRBoolean:=TString(@(XtStrings[1561]));
      end;

    function XtRCallback : TString;
      begin
        XtRCallback:=TString(@(XtStrings[1569]));
      end;

    function XtRCallProc : TString;
      begin
        XtRCallProc:=TString(@(XtStrings[1578]));
      end;

    function XtRCardinal : TString;
      begin
        XtRCardinal:=TString(@(XtStrings[1587]));
      end;

    function XtRColor : TString;
      begin
        XtRColor:=TString(@(XtStrings[1596]));
      end;

    function XtRColormap : TString;
      begin
        XtRColormap:=TString(@(XtStrings[1602]));
      end;

    function XtRCursor : TString;
      begin
        XtRCursor:=TString(@(XtStrings[1611]));
      end;

    function XtRDimension : TString;
      begin
        XtRDimension:=TString(@(XtStrings[1618]));
      end;

    function XtRDisplay : TString;
      begin
        XtRDisplay:=TString(@(XtStrings[1628]));
      end;

    function XtREditMode : TString;
      begin
        XtREditMode:=TString(@(XtStrings[1636]));
      end;

    function XtREnum : TString;
      begin
        XtREnum:=TString(@(XtStrings[1645]));
      end;

    function XtRFile : TString;
      begin
        XtRFile:=TString(@(XtStrings[1650]));
      end;

    function XtRFloat : TString;
      begin
        XtRFloat:=TString(@(XtStrings[1655]));
      end;

    function XtRFont : TString;
      begin
        XtRFont:=TString(@(XtStrings[1661]));
      end;

    function XtRFontStruct : TString;
      begin
        XtRFontStruct:=TString(@(XtStrings[1666]));
      end;

    function XtRFunction : TString;
      begin
        XtRFunction:=TString(@(XtStrings[1677]));
      end;

    function XtRGeometry : TString;
      begin
        XtRGeometry:=TString(@(XtStrings[1686]));
      end;

    function XtRImmediate : TString;
      begin
        XtRImmediate:=TString(@(XtStrings[1695]));
      end;

    function XtRInitialState : TString;
      begin
        XtRInitialState:=TString(@(XtStrings[1705]));
      end;

    function XtRInt : TString;
      begin
        XtRInt:=TString(@(XtStrings[1718]));
      end;

    function XtRJustify : TString;
      begin
        XtRJustify:=TString(@(XtStrings[1722]));
      end;

    function XtRLongBoolean : TString;
      begin
        XtRLongBoolean:=TString(@(XtStrings[1730]));
      end;

    function XtRObject : TString;
      begin
        XtRObject:=TString(@(XtStrings[1735]));
      end;

    function XtROrientation : TString;
      begin
        XtROrientation:=TString(@(XtStrings[1742]));
      end;

    function XtRPixel : TString;
      begin
        XtRPixel:=TString(@(XtStrings[1754]));
      end;

    function XtRPixmap : TString;
      begin
        XtRPixmap:=TString(@(XtStrings[1760]));
      end;

    function XtRPointer : TString;
      begin
        XtRPointer:=TString(@(XtStrings[1767]));
      end;

    function XtRPosition : TString;
      begin
        XtRPosition:=TString(@(XtStrings[1775]));
      end;

    function XtRScreen : TString;
      begin
        XtRScreen:=TString(@(XtStrings[1784]));
      end;

    function XtRShort : TString;
      begin
        XtRShort:=TString(@(XtStrings[1791]));
      end;

    function XtRString : TString;
      begin
        XtRString:=TString(@(XtStrings[1797]));
      end;

    function XtRStringArray : TString;
      begin
        XtRStringArray:=TString(@(XtStrings[1804]));
      end;

    function XtRStringTable : TString;
      begin
        XtRStringTable:=TString(@(XtStrings[1816]));
      end;

    function XtRUnsignedChar : TString;
      begin
        XtRUnsignedChar:=TString(@(XtStrings[1828]));
      end;

    function XtRTranslationTable : TString;
      begin
        XtRTranslationTable:=TString(@(XtStrings[1841]));
      end;

    function XtRVisual : TString;
      begin
        XtRVisual:=TString(@(XtStrings[1858]));
      end;

    function XtRWidget : TString;
      begin
        XtRWidget:=TString(@(XtStrings[1865]));
      end;

    function XtRWidgetClass : TString;
      begin
        XtRWidgetClass:=TString(@(XtStrings[1872]));
      end;

    function XtRWidgetList : TString;
      begin
        XtRWidgetList:=TString(@(XtStrings[1884]));
      end;

    function XtRWindow : TString;
      begin
        XtRWindow:=TString(@(XtStrings[1895]));
      end;

    function XtEoff : TString;
      begin
        XtEoff:=TString(@(XtStrings[1902]));
      end;

    function XtEfalse : TString;
      begin
        XtEfalse:=TString(@(XtStrings[1906]));
      end;

    function XtEno : TString;
      begin
        XtEno:=TString(@(XtStrings[1912]));
      end;

    function XtEon : TString;
      begin
        XtEon:=TString(@(XtStrings[1915]));
      end;

    function XtEtrue : TString;
      begin
        XtEtrue:=TString(@(XtStrings[1918]));
      end;

    function XtEyes : TString;
      begin
        XtEyes:=TString(@(XtStrings[1923]));
      end;

    function XtEvertical : TString;
      begin
        XtEvertical:=TString(@(XtStrings[1927]));
      end;

    function XtEhorizontal : TString;
      begin
        XtEhorizontal:=TString(@(XtStrings[1936]));
      end;

    function XtEtextRead : TString;
      begin
        XtEtextRead:=TString(@(XtStrings[1947]));
      end;

    function XtEtextAppend : TString;
      begin
        XtEtextAppend:=TString(@(XtStrings[1952]));
      end;

    function XtEtextEdit : TString;
      begin
        XtEtextEdit:=TString(@(XtStrings[1959]));
      end;

    function XtExtdefaultbackground : TString;
      begin
        XtExtdefaultbackground:=TString(@(XtStrings[1964]));
      end;

    function XtExtdefaultforeground : TString;
      begin
        XtExtdefaultforeground:=TString(@(XtStrings[1984]));
      end;

    function XtExtdefaultfont : TString;
      begin
        XtExtdefaultfont:=TString(@(XtStrings[2004]));
      end;

    function XtNfontSet : TString;
      begin
        XtNfontSet:=TString(@(XtStrings[2018]));
      end;

    function XtRFontSet : TString;
      begin
        XtRFontSet:=TString(@(XtStrings[2026]));
      end;

    function XtCFontSet : TString;
      begin
        XtCFontSet:=TString(@(XtStrings[2034]));
      end;

    function XtRGravity : TString;
      begin
        XtRGravity:=TString(@(XtStrings[2042]));
      end;

    function XtNcreateHook : TString;
      begin
        XtNcreateHook:=TString(@(XtStrings[2050]));
      end;

    function XtNchangeHook : TString;
      begin
        XtNchangeHook:=TString(@(XtStrings[2061]));
      end;

    function XtNconfigureHook : TString;
      begin
        XtNconfigureHook:=TString(@(XtStrings[2072]));
      end;

    function XtNgeometryHook : TString;
      begin
        XtNgeometryHook:=TString(@(XtStrings[2086]));
      end;

    function XtNdestroyHook : TString;
      begin
        XtNdestroyHook:=TString(@(XtStrings[2099]));
      end;

    function XtNshells : TString;
      begin
        XtNshells:=TString(@(XtStrings[2111]));
      end;

    function XtNnumShells : TString;
      begin
        XtNnumShells:=TString(@(XtStrings[2118]));
      end;

    function XtRCommandArgArray : TString;
      begin
        XtRCommandArgArray:=TString(@(XtStrings[2128]));
      end;

    function XtRDirectoryString : TString;
      begin
        XtRDirectoryString:=TString(@(XtStrings[2144]));
      end;

    function XtREnvironmentArray : TString;
      begin
        XtREnvironmentArray:=TString(@(XtStrings[2160]));
      end;

    function XtRRestartStyle : TString;
      begin
        XtRRestartStyle:=TString(@(XtStrings[2177]));
      end;

    function XtRSmcConn : TString;
      begin
        XtRSmcConn:=TString(@(XtStrings[2190]));
      end;

    function XtHcreate : TString;
      begin
        XtHcreate:=TString(@(XtStrings[2198]));
      end;

    function XtHsetValues : TString;
      begin
        XtHsetValues:=TString(@(XtStrings[2207]));
      end;

    function XtHmanageChildren : TString;
      begin
        XtHmanageChildren:=TString(@(XtStrings[2219]));
      end;

    function XtHunmanageChildren : TString;
      begin
        XtHunmanageChildren:=TString(@(XtStrings[2236]));
      end;

    function XtHmanageSet : TString;
      begin
        XtHmanageSet:=TString(@(XtStrings[2255]));
      end;

    function XtHunmanageSet : TString;
      begin
        XtHunmanageSet:=TString(@(XtStrings[2267]));
      end;

    function XtHrealizeWidget : TString;
      begin
        XtHrealizeWidget:=TString(@(XtStrings[2281]));
      end;

    function XtHunrealizeWidget : TString;
      begin
        XtHunrealizeWidget:=TString(@(XtStrings[2297]));
      end;

    function XtHaddCallback : TString;
      begin
        XtHaddCallback:=TString(@(XtStrings[2315]));
      end;

    function XtHaddCallbacks : TString;
      begin
        XtHaddCallbacks:=TString(@(XtStrings[2329]));
      end;

    function XtHremoveCallback : TString;
      begin
        XtHremoveCallback:=TString(@(XtStrings[2344]));
      end;

    function XtHremoveCallbacks : TString;
      begin
        XtHremoveCallbacks:=TString(@(XtStrings[2361]));
      end;

    function XtHremoveAllCallbacks : TString;
      begin
        XtHremoveAllCallbacks:=TString(@(XtStrings[2379]));
      end;

    function XtHaugmentTranslations : TString;
      begin
        XtHaugmentTranslations:=TString(@(XtStrings[2400]));
      end;

    function XtHoverrideTranslations : TString;
      begin
        XtHoverrideTranslations:=TString(@(XtStrings[2422]));
      end;

    function XtHuninstallTranslations : TString;
      begin
        XtHuninstallTranslations:=TString(@(XtStrings[2445]));
      end;

    function XtHsetKeyboardFocus : TString;
      begin
        XtHsetKeyboardFocus:=TString(@(XtStrings[2469]));
      end;

    function XtHsetWMColormapWindows : TString;
      begin
        XtHsetWMColormapWindows:=TString(@(XtStrings[2488]));
      end;

    function XtHsetMappedWhenManaged : TString;
      begin
        XtHsetMappedWhenManaged:=TString(@(XtStrings[2511]));
      end;

    function XtHmapWidget : TString;
      begin
        XtHmapWidget:=TString(@(XtStrings[2534]));
      end;

    function XtHunmapWidget : TString;
      begin
        XtHunmapWidget:=TString(@(XtStrings[2546]));
      end;

    function XtHpopup : TString;
      begin
        XtHpopup:=TString(@(XtStrings[2560]));
      end;

    function XtHpopupSpringLoaded : TString;
      begin
        XtHpopupSpringLoaded:=TString(@(XtStrings[2568]));
      end;

    function XtHpopdown : TString;
      begin
        XtHpopdown:=TString(@(XtStrings[2588]));
      end;

    function XtHconfigure : TString;
      begin
        XtHconfigure:=TString(@(XtStrings[2598]));
      end;

    function XtHpreGeometry : TString;
      begin
        XtHpreGeometry:=TString(@(XtStrings[2610]));
      end;

    function XtHpostGeometry : TString;
      begin
        XtHpostGeometry:=TString(@(XtStrings[2624]));
      end;

    function XtHdestroy : TString;
      begin
        XtHdestroy:=TString(@(XtStrings[2639]));
      end;


end.
