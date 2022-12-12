
unit StringDefs;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/StringDefs.h
  The following command line parameters were used:
    /usr/include/X11/StringDefs.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/StringDefs.pp
}

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

    function XtNaccelerators : String;      

{$endif}
{$ifndef XtNallowHoriz}

    function XtNallowHoriz : String;      

{$endif}
{$ifndef XtNallowVert}

    function XtNallowVert : String;      

{$endif}
{$ifndef XtNancestorSensitive}

    function XtNancestorSensitive : String;      

{$endif}
{$ifndef XtNbackground}

    function XtNbackground : String;      

{$endif}
{$ifndef XtNbackgroundPixmap}

    function XtNbackgroundPixmap : String;      

{$endif}
{$ifndef XtNbitmap}

    function XtNbitmap : String;      

{$endif}
{$ifndef XtNborderColor}

    function XtNborderColor : String;      

{$endif}
{$ifndef XtNborder}

    function XtNborder : String;      

{$endif}
{$ifndef XtNborderPixmap}

    function XtNborderPixmap : String;      

{$endif}
{$ifndef XtNborderWidth}

    function XtNborderWidth : String;      

{$endif}
{$ifndef XtNcallback}

    function XtNcallback : String;      

{$endif}
{$ifndef XtNchildren}

    function XtNchildren : String;      

{$endif}
{$ifndef XtNcolormap}

    function XtNcolormap : String;      

{$endif}
{$ifndef XtNdepth}

    function XtNdepth : String;      

{$endif}
{$ifndef XtNdestroyCallback}

    function XtNdestroyCallback : String;      

{$endif}
{$ifndef XtNeditType}

    function XtNeditType : String;      

{$endif}
{$ifndef XtNfile}

    function XtNfile : String;      

{$endif}
{$ifndef XtNfont}

    function XtNfont : String;      

{$endif}
{$ifndef XtNforceBars}

    function XtNforceBars : String;      

{$endif}
{$ifndef XtNforeground}

    function XtNforeground : String;      

{$endif}
{$ifndef XtNfunction}

    function XtNfunction : String;      

{$endif}
{$ifndef XtNheight}

    function XtNheight : String;      

{$endif}
{$ifndef XtNhighlight}

    function XtNhighlight : String;      

{$endif}
{$ifndef XtNhSpace}

    function XtNhSpace : String;      

{$endif}
{$ifndef XtNindex}

    function XtNindex : String;      

{$endif}
{$ifndef XtNinitialResourcesPersistent}

    function XtNinitialResourcesPersistent : String;      

{$endif}
{$ifndef XtNinnerHeight}

    function XtNinnerHeight : String;      

{$endif}
{$ifndef XtNinnerWidth}

    function XtNinnerWidth : String;      

{$endif}
{$ifndef XtNinnerWindow}

    function XtNinnerWindow : String;      

{$endif}
{$ifndef XtNinsertPosition}

    function XtNinsertPosition : String;      

{$endif}
{$ifndef XtNinternalHeight}

    function XtNinternalHeight : String;      

{$endif}
{$ifndef XtNinternalWidth}

    function XtNinternalWidth : String;      

{$endif}
{$ifndef XtNjumpProc}

    function XtNjumpProc : String;      

{$endif}
{$ifndef XtNjustify}

    function XtNjustify : String;      

{$endif}
{$ifndef XtNknobHeight}

    function XtNknobHeight : String;      

{$endif}
{$ifndef XtNknobIndent}

    function XtNknobIndent : String;      

{$endif}
{$ifndef XtNknobPixel}

    function XtNknobPixel : String;      

{$endif}
{$ifndef XtNknobWidth}

    function XtNknobWidth : String;      

{$endif}
{$ifndef XtNlabel}

    function XtNlabel : String;      

{$endif}
{$ifndef XtNlength}

    function XtNlength : String;      

{$endif}
{$ifndef XtNlowerRight}

    function XtNlowerRight : String;      

{$endif}
{$ifndef XtNmappedWhenManaged}

    function XtNmappedWhenManaged : String;      

{$endif}
{$ifndef XtNmenuEntry}

    function XtNmenuEntry : String;      

{$endif}
{$ifndef XtNname}

    function XtNname : String;      

{$endif}
{$ifndef XtNnotify}

    function XtNnotify : String;      

{$endif}
{$ifndef XtNnumChildren}

    function XtNnumChildren : String;      

{$endif}
{$ifndef XtNorientation}

    function XtNorientation : String;      

{$endif}
{$ifndef XtNparameter}

    function XtNparameter : String;      

{$endif}
{$ifndef XtNpixmap}

    function XtNpixmap : String;      

{$endif}
{$ifndef XtNpopupCallback}

    function XtNpopupCallback : String;      

{$endif}
{$ifndef XtNpopdownCallback}

    function XtNpopdownCallback : String;      

{$endif}
{$ifndef XtNresize}

    function XtNresize : String;      

{$endif}
{$ifndef XtNreverseVideo}

    function XtNreverseVideo : String;      

{$endif}
{$ifndef XtNscreen}

    function XtNscreen : String;      

{$endif}
{$ifndef XtNscrollProc}

    function XtNscrollProc : String;      

{$endif}
{$ifndef XtNscrollDCursor}

    function XtNscrollDCursor : String;      

{$endif}
{$ifndef XtNscrollHCursor}

    function XtNscrollHCursor : String;      

{$endif}
{$ifndef XtNscrollLCursor}

    function XtNscrollLCursor : String;      

{$endif}
{$ifndef XtNscrollRCursor}

    function XtNscrollRCursor : String;      

{$endif}
{$ifndef XtNscrollUCursor}

    function XtNscrollUCursor : String;      

{$endif}
{$ifndef XtNscrollVCursor}

    function XtNscrollVCursor : String;      

{$endif}
{$ifndef XtNselection}

    function XtNselection : String;      

{$endif}
{$ifndef XtNselectionArray}

    function XtNselectionArray : String;      

{$endif}
{$ifndef XtNsensitive}

    function XtNsensitive : String;      

{$endif}
{$ifndef XtNshown}

    function XtNshown : String;      

{$endif}
{$ifndef XtNspace}

    function XtNspace : String;      

{$endif}
{$ifndef XtNstring}

    function XtNstring : String;      

{$endif}
{$ifndef XtNtextOptions}

    function XtNtextOptions : String;      

{$endif}
{$ifndef XtNtextSink}

    function XtNtextSink : String;      

{$endif}
{$ifndef XtNtextSource}

    function XtNtextSource : String;      

{$endif}
{$ifndef XtNthickness}

    function XtNthickness : String;      

{$endif}
{$ifndef XtNthumb}

    function XtNthumb : String;      

{$endif}
{$ifndef XtNthumbProc}

    function XtNthumbProc : String;      

{$endif}
{$ifndef XtNtop}

    function XtNtop : String;      

{$endif}
{$ifndef XtNtranslations}

    function XtNtranslations : String;      

{$endif}
{$ifndef XtNunrealizeCallback}

    function XtNunrealizeCallback : String;      

{$endif}
{$ifndef XtNupdate}

    function XtNupdate : String;      

{$endif}
{$ifndef XtNuseBottom}

    function XtNuseBottom : String;      

{$endif}
{$ifndef XtNuseRight}

    function XtNuseRight : String;      

{$endif}
{$ifndef XtNvalue}

    function XtNvalue : String;      

{$endif}
{$ifndef XtNvSpace}

    function XtNvSpace : String;      

{$endif}
{$ifndef XtNwidth}

    function XtNwidth : String;      

{$endif}
{$ifndef XtNwindow}

    function XtNwindow : String;      

{$endif}
{$ifndef XtNx}

    function XtNx : String;      

{$endif}
{$ifndef XtNy}

    function XtNy : String;      

{$endif}
{$ifndef XtCAccelerators}

    function XtCAccelerators : String;      

{$endif}
{$ifndef XtCBackground}

    function XtCBackground : String;      

{$endif}
{$ifndef XtCBitmap}

    function XtCBitmap : String;      

{$endif}
{$ifndef XtCBoolean}

    function XtCBoolean : String;      

{$endif}
{$ifndef XtCBorderColor}

    function XtCBorderColor : String;      

{$endif}
{$ifndef XtCBorderWidth}

    function XtCBorderWidth : String;      

{$endif}
{$ifndef XtCCallback}

    function XtCCallback : String;      

{$endif}
{$ifndef XtCColormap}

    function XtCColormap : String;      

{$endif}
{$ifndef XtCColor}

    function XtCColor : String;      

{$endif}
{$ifndef XtCCursor}

    function XtCCursor : String;      

{$endif}
{$ifndef XtCDepth}

    function XtCDepth : String;      

{$endif}
{$ifndef XtCEditType}

    function XtCEditType : String;      

{$endif}
{$ifndef XtCEventBindings}

    function XtCEventBindings : String;      

{$endif}
{$ifndef XtCFile}

    function XtCFile : String;      

{$endif}
{$ifndef XtCFont}

    function XtCFont : String;      

{$endif}
{$ifndef XtCForeground}

    function XtCForeground : String;      

{$endif}
{$ifndef XtCFraction}

    function XtCFraction : String;      

{$endif}
{$ifndef XtCFunction}

    function XtCFunction : String;      

{$endif}
{$ifndef XtCHeight}

    function XtCHeight : String;      

{$endif}
{$ifndef XtCHSpace}

    function XtCHSpace : String;      

{$endif}
{$ifndef XtCIndex}

    function XtCIndex : String;      

{$endif}
{$ifndef XtCInitialResourcesPersistent}

    function XtCInitialResourcesPersistent : String;      

{$endif}
{$ifndef XtCInsertPosition}

    function XtCInsertPosition : String;      

{$endif}
{$ifndef XtCInterval}

    function XtCInterval : String;      

{$endif}
{$ifndef XtCJustify}

    function XtCJustify : String;      

{$endif}
{$ifndef XtCKnobIndent}

    function XtCKnobIndent : String;      

{$endif}
{$ifndef XtCKnobPixel}

    function XtCKnobPixel : String;      

{$endif}
{$ifndef XtCLabel}

    function XtCLabel : String;      

{$endif}
{$ifndef XtCLength}

    function XtCLength : String;      

{$endif}
{$ifndef XtCMappedWhenManaged}

    function XtCMappedWhenManaged : String;      

{$endif}
{$ifndef XtCMargin}

    function XtCMargin : String;      

{$endif}
{$ifndef XtCMenuEntry}

    function XtCMenuEntry : String;      

{$endif}
{$ifndef XtCNotify}

    function XtCNotify : String;      

{$endif}
{$ifndef XtCOrientation}

    function XtCOrientation : String;      

{$endif}
{$ifndef XtCParameter}

    function XtCParameter : String;      

{$endif}
{$ifndef XtCPixmap}

    function XtCPixmap : String;      

{$endif}
{$ifndef XtCPosition}

    function XtCPosition : String;      

{$endif}
{$ifndef XtCReadOnly}

    function XtCReadOnly : String;      

{$endif}
{$ifndef XtCResize}

    function XtCResize : String;      

{$endif}
{$ifndef XtCReverseVideo}

    function XtCReverseVideo : String;      

{$endif}
{$ifndef XtCScreen}

    function XtCScreen : String;      

{$endif}
{$ifndef XtCScrollProc}

    function XtCScrollProc : String;      

{$endif}
{$ifndef XtCScrollDCursor}

    function XtCScrollDCursor : String;      

{$endif}
{$ifndef XtCScrollHCursor}

    function XtCScrollHCursor : String;      

{$endif}
{$ifndef XtCScrollLCursor}

    function XtCScrollLCursor : String;      

{$endif}
{$ifndef XtCScrollRCursor}

    function XtCScrollRCursor : String;      

{$endif}
{$ifndef XtCScrollUCursor}

    function XtCScrollUCursor : String;      

{$endif}
{$ifndef XtCScrollVCursor}

    function XtCScrollVCursor : String;      

{$endif}
{$ifndef XtCSelection}

    function XtCSelection : String;      

{$endif}
{$ifndef XtCSensitive}

    function XtCSensitive : String;      

{$endif}
{$ifndef XtCSelectionArray}

    function XtCSelectionArray : String;      

{$endif}
{$ifndef XtCSpace}

    function XtCSpace : String;      

{$endif}
{$ifndef XtCString}

    function XtCString : String;      

{$endif}
{$ifndef XtCTextOptions}

    function XtCTextOptions : String;      

{$endif}
{$ifndef XtCTextPosition}

    function XtCTextPosition : String;      

{$endif}
{$ifndef XtCTextSink}

    function XtCTextSink : String;      

{$endif}
{$ifndef XtCTextSource}

    function XtCTextSource : String;      

{$endif}
{$ifndef XtCThickness}

    function XtCThickness : String;      

{$endif}
{$ifndef XtCThumb}

    function XtCThumb : String;      

{$endif}
{$ifndef XtCTranslations}

    function XtCTranslations : String;      

{$endif}
{$ifndef XtCValue}

    function XtCValue : String;      

{$endif}
{$ifndef XtCVSpace}

    function XtCVSpace : String;      

{$endif}
{$ifndef XtCWidth}

    function XtCWidth : String;      

{$endif}
{$ifndef XtCWindow}

    function XtCWindow : String;      

{$endif}
{$ifndef XtCX}

    function XtCX : String;      

{$endif}
{$ifndef XtCY}

    function XtCY : String;      

{$endif}
{$ifndef XtRAcceleratorTable}

    function XtRAcceleratorTable : String;      

{$endif}
{$ifndef XtRAtom}

    function XtRAtom : String;      

{$endif}
{$ifndef XtRBitmap}

    function XtRBitmap : String;      

{$endif}
{$ifndef XtRBool}

    function XtRBool : String;      

{$endif}
{$ifndef XtRBoolean}

    function XtRBoolean : String;      

{$endif}
{$ifndef XtRCallback}

    function XtRCallback : String;      

{$endif}
{$ifndef XtRCallProc}

    function XtRCallProc : String;      

{$endif}
{$ifndef XtRCardinal}

    function XtRCardinal : String;      

{$endif}
{$ifndef XtRColor}

    function XtRColor : String;      

{$endif}
{$ifndef XtRColormap}

    function XtRColormap : String;      

{$endif}
{$ifndef XtRCursor}

    function XtRCursor : String;      

{$endif}
{$ifndef XtRDimension}

    function XtRDimension : String;      

{$endif}
{$ifndef XtRDisplay}

    function XtRDisplay : String;      

{$endif}
{$ifndef XtREditMode}

    function XtREditMode : String;      

{$endif}
{$ifndef XtREnum}

    function XtREnum : String;      

{$endif}
{$ifndef XtRFile}

    function XtRFile : String;      

{$endif}
{$ifndef XtRFloat}

    function XtRFloat : String;      

{$endif}
{$ifndef XtRFont}

    function XtRFont : String;      

{$endif}
{$ifndef XtRFontStruct}

    function XtRFontStruct : String;      

{$endif}
{$ifndef XtRFunction}

    function XtRFunction : String;      

{$endif}
{$ifndef XtRGeometry}

    function XtRGeometry : String;      

{$endif}
{$ifndef XtRImmediate}

    function XtRImmediate : String;      

{$endif}
{$ifndef XtRInitialState}

    function XtRInitialState : String;      

{$endif}
{$ifndef XtRInt}

    function XtRInt : String;      

{$endif}
{$ifndef XtRJustify}

    function XtRJustify : String;      

{$endif}
{$ifndef XtRLongBoolean}

    function XtRLongBoolean : String;      

{$endif}
{$ifndef XtRObject}

    function XtRObject : String;      

{$endif}
{$ifndef XtROrientation}

    function XtROrientation : String;      

{$endif}
{$ifndef XtRPixel}

    function XtRPixel : String;      

{$endif}
{$ifndef XtRPixmap}

    function XtRPixmap : String;      

{$endif}
{$ifndef XtRPointer}

    function XtRPointer : String;      

{$endif}
{$ifndef XtRPosition}

    function XtRPosition : String;      

{$endif}
{$ifndef XtRScreen}

    function XtRScreen : String;      

{$endif}
{$ifndef XtRShort}

    function XtRShort : String;      

{$endif}
{$ifndef XtRString}

    function XtRString : String;      

{$endif}
{$ifndef XtRStringArray}

    function XtRStringArray : String;      

{$endif}
{$ifndef XtRStringTable}

    function XtRStringTable : String;      

{$endif}
{$ifndef XtRUnsignedChar}

    function XtRUnsignedChar : String;      

{$endif}
{$ifndef XtRTranslationTable}

    function XtRTranslationTable : String;      

{$endif}
{$ifndef XtRVisual}

    function XtRVisual : String;      

{$endif}
{$ifndef XtRWidget}

    function XtRWidget : String;      

{$endif}
{$ifndef XtRWidgetClass}

    function XtRWidgetClass : String;      

{$endif}
{$ifndef XtRWidgetList}

    function XtRWidgetList : String;      

{$endif}
{$ifndef XtRWindow}

    function XtRWindow : String;      

{$endif}
{$ifndef XtEoff}

    function XtEoff : String;      

{$endif}
{$ifndef XtEfalse}

    function XtEfalse : String;      

{$endif}
{$ifndef XtEno}

    function XtEno : String;      

{$endif}
{$ifndef XtEon}

    function XtEon : String;      

{$endif}
{$ifndef XtEtrue}

    function XtEtrue : String;      

{$endif}
{$ifndef XtEyes}

    function XtEyes : String;      

{$endif}
{$ifndef XtEvertical}

    function XtEvertical : String;      

{$endif}
{$ifndef XtEhorizontal}

    function XtEhorizontal : String;      

{$endif}
{$ifndef XtEtextRead}

    function XtEtextRead : String;      

{$endif}
{$ifndef XtEtextAppend}

    function XtEtextAppend : String;      

{$endif}
{$ifndef XtEtextEdit}

    function XtEtextEdit : String;      

{$endif}
{$ifndef XtExtdefaultbackground}

    function XtExtdefaultbackground : String;      

{$endif}
{$ifndef XtExtdefaultforeground}

    function XtExtdefaultforeground : String;      

{$endif}
{$ifndef XtExtdefaultfont}

    function XtExtdefaultfont : String;      

{$endif}
{$ifndef XtNfontSet}

    function XtNfontSet : String;      

{$endif}
{$ifndef XtRFontSet}

    function XtRFontSet : String;      

{$endif}
{$ifndef XtCFontSet}

    function XtCFontSet : String;      

{$endif}
{$ifndef XtRGravity}

    function XtRGravity : String;      

{$endif}
{$ifndef XtNcreateHook}

    function XtNcreateHook : String;      

{$endif}
{$ifndef XtNchangeHook}

    function XtNchangeHook : String;      

{$endif}
{$ifndef XtNconfigureHook}

    function XtNconfigureHook : String;      

{$endif}
{$ifndef XtNgeometryHook}

    function XtNgeometryHook : String;      

{$endif}
{$ifndef XtNdestroyHook}

    function XtNdestroyHook : String;      

{$endif}
{$ifndef XtNshells}

    function XtNshells : String;      

{$endif}
{$ifndef XtNnumShells}

    function XtNnumShells : String;      

{$endif}
{$ifndef XtRCommandArgArray}

    function XtRCommandArgArray : String;      

{$endif}
{$ifndef XtRDirectoryString}

    function XtRDirectoryString : String;      

{$endif}
{$ifndef XtREnvironmentArray}

    function XtREnvironmentArray : String;      

{$endif}
{$ifndef XtRRestartStyle}

    function XtRRestartStyle : String;      

{$endif}
{$ifndef XtRSmcConn}

    function XtRSmcConn : String;      

{$endif}
{$ifndef XtHcreate}

    function XtHcreate : String;      

{$endif}
{$ifndef XtHsetValues}

    function XtHsetValues : String;      

{$endif}
{$ifndef XtHmanageChildren}

    function XtHmanageChildren : String;      

{$endif}
{$ifndef XtHunmanageChildren}

    function XtHunmanageChildren : String;      

{$endif}
{$ifndef XtHmanageSet}

    function XtHmanageSet : String;      

{$endif}
{$ifndef XtHunmanageSet}

    function XtHunmanageSet : String;      

{$endif}
{$ifndef XtHrealizeWidget}

    function XtHrealizeWidget : String;      

{$endif}
{$ifndef XtHunrealizeWidget}

    function XtHunrealizeWidget : String;      

{$endif}
{$ifndef XtHaddCallback}

    function XtHaddCallback : String;      

{$endif}
{$ifndef XtHaddCallbacks}

    function XtHaddCallbacks : String;      

{$endif}
{$ifndef XtHremoveCallback}

    function XtHremoveCallback : String;      

{$endif}
{$ifndef XtHremoveCallbacks}

    function XtHremoveCallbacks : String;      

{$endif}
{$ifndef XtHremoveAllCallbacks}

    function XtHremoveAllCallbacks : String;      

{$endif}
{$ifndef XtHaugmentTranslations}

    function XtHaugmentTranslations : String;      

{$endif}
{$ifndef XtHoverrideTranslations}

    function XtHoverrideTranslations : String;      

{$endif}
{$ifndef XtHuninstallTranslations}

    function XtHuninstallTranslations : String;      

{$endif}
{$ifndef XtHsetKeyboardFocus}

    function XtHsetKeyboardFocus : String;      

{$endif}
{$ifndef XtHsetWMColormapWindows}

    function XtHsetWMColormapWindows : String;      

{$endif}
{$ifndef XtHsetMappedWhenManaged}

    function XtHsetMappedWhenManaged : String;      

{$endif}
{$ifndef XtHmapWidget}

    function XtHmapWidget : String;      

{$endif}
{$ifndef XtHunmapWidget}

    function XtHunmapWidget : String;      

{$endif}
{$ifndef XtHpopup}

    function XtHpopup : String;      

{$endif}
{$ifndef XtHpopupSpringLoaded}

    function XtHpopupSpringLoaded : String;      

{$endif}
{$ifndef XtHpopdown}

    function XtHpopdown : String;      

{$endif}
{$ifndef XtHconfigure}

    function XtHconfigure : String;      

{$endif}
{$ifndef XtHpreGeometry}

    function XtHpreGeometry : String;      

{$endif}
{$ifndef XtHpostGeometry}

    function XtHpostGeometry : String;      

{$endif}
{$ifndef XtHdestroy}

    function XtHdestroy : String;      

{$endif}
{$endif}

{$ifndef XTSTRINGDEFINES}
{$undef _XtStringDefs_h_Const}
{$endif}
{$endif}


implementation

    function XtNaccelerators : String;
      begin
        XtNaccelerators:=String(@(XtStrings[0]));
      end;

    function XtNallowHoriz : String;
      begin
        XtNallowHoriz:=String(@(XtStrings[13]));
      end;

    function XtNallowVert : String;
      begin
        XtNallowVert:=String(@(XtStrings[24]));
      end;

    function XtNancestorSensitive : String;
      begin
        XtNancestorSensitive:=String(@(XtStrings[34]));
      end;

    function XtNbackground : String;
      begin
        XtNbackground:=String(@(XtStrings[52]));
      end;

    function XtNbackgroundPixmap : String;
      begin
        XtNbackgroundPixmap:=String(@(XtStrings[63]));
      end;

    function XtNbitmap : String;
      begin
        XtNbitmap:=String(@(XtStrings[80]));
      end;

    function XtNborderColor : String;
      begin
        XtNborderColor:=String(@(XtStrings[87]));
      end;

    function XtNborder : String;
      begin
        XtNborder:=String(@(XtStrings[99]));
      end;

    function XtNborderPixmap : String;
      begin
        XtNborderPixmap:=String(@(XtStrings[111]));
      end;

    function XtNborderWidth : String;
      begin
        XtNborderWidth:=String(@(XtStrings[124]));
      end;

    function XtNcallback : String;
      begin
        XtNcallback:=String(@(XtStrings[136]));
      end;

    function XtNchildren : String;
      begin
        XtNchildren:=String(@(XtStrings[145]));
      end;

    function XtNcolormap : String;
      begin
        XtNcolormap:=String(@(XtStrings[154]));
      end;

    function XtNdepth : String;
      begin
        XtNdepth:=String(@(XtStrings[163]));
      end;

    function XtNdestroyCallback : String;
      begin
        XtNdestroyCallback:=String(@(XtStrings[169]));
      end;

    function XtNeditType : String;
      begin
        XtNeditType:=String(@(XtStrings[185]));
      end;

    function XtNfile : String;
      begin
        XtNfile:=String(@(XtStrings[194]));
      end;

    function XtNfont : String;
      begin
        XtNfont:=String(@(XtStrings[199]));
      end;

    function XtNforceBars : String;
      begin
        XtNforceBars:=String(@(XtStrings[204]));
      end;

    function XtNforeground : String;
      begin
        XtNforeground:=String(@(XtStrings[214]));
      end;

    function XtNfunction : String;
      begin
        XtNfunction:=String(@(XtStrings[225]));
      end;

    function XtNheight : String;
      begin
        XtNheight:=String(@(XtStrings[234]));
      end;

    function XtNhighlight : String;
      begin
        XtNhighlight:=String(@(XtStrings[241]));
      end;

    function XtNhSpace : String;
      begin
        XtNhSpace:=String(@(XtStrings[251]));
      end;

    function XtNindex : String;
      begin
        XtNindex:=String(@(XtStrings[258]));
      end;

    function XtNinitialResourcesPersistent : String;
      begin
        XtNinitialResourcesPersistent:=String(@(XtStrings[264]));
      end;

    function XtNinnerHeight : String;
      begin
        XtNinnerHeight:=String(@(XtStrings[291]));
      end;

    function XtNinnerWidth : String;
      begin
        XtNinnerWidth:=String(@(XtStrings[303]));
      end;

    function XtNinnerWindow : String;
      begin
        XtNinnerWindow:=String(@(XtStrings[314]));
      end;

    function XtNinsertPosition : String;
      begin
        XtNinsertPosition:=String(@(XtStrings[326]));
      end;

    function XtNinternalHeight : String;
      begin
        XtNinternalHeight:=String(@(XtStrings[341]));
      end;

    function XtNinternalWidth : String;
      begin
        XtNinternalWidth:=String(@(XtStrings[356]));
      end;

    function XtNjumpProc : String;
      begin
        XtNjumpProc:=String(@(XtStrings[370]));
      end;

    function XtNjustify : String;
      begin
        XtNjustify:=String(@(XtStrings[379]));
      end;

    function XtNknobHeight : String;
      begin
        XtNknobHeight:=String(@(XtStrings[387]));
      end;

    function XtNknobIndent : String;
      begin
        XtNknobIndent:=String(@(XtStrings[398]));
      end;

    function XtNknobPixel : String;
      begin
        XtNknobPixel:=String(@(XtStrings[409]));
      end;

    function XtNknobWidth : String;
      begin
        XtNknobWidth:=String(@(XtStrings[419]));
      end;

    function XtNlabel : String;
      begin
        XtNlabel:=String(@(XtStrings[429]));
      end;

    function XtNlength : String;
      begin
        XtNlength:=String(@(XtStrings[435]));
      end;

    function XtNlowerRight : String;
      begin
        XtNlowerRight:=String(@(XtStrings[442]));
      end;

    function XtNmappedWhenManaged : String;
      begin
        XtNmappedWhenManaged:=String(@(XtStrings[453]));
      end;

    function XtNmenuEntry : String;
      begin
        XtNmenuEntry:=String(@(XtStrings[471]));
      end;

    function XtNname : String;
      begin
        XtNname:=String(@(XtStrings[481]));
      end;

    function XtNnotify : String;
      begin
        XtNnotify:=String(@(XtStrings[486]));
      end;

    function XtNnumChildren : String;
      begin
        XtNnumChildren:=String(@(XtStrings[493]));
      end;

    function XtNorientation : String;
      begin
        XtNorientation:=String(@(XtStrings[505]));
      end;

    function XtNparameter : String;
      begin
        XtNparameter:=String(@(XtStrings[517]));
      end;

    function XtNpixmap : String;
      begin
        XtNpixmap:=String(@(XtStrings[527]));
      end;

    function XtNpopupCallback : String;
      begin
        XtNpopupCallback:=String(@(XtStrings[534]));
      end;

    function XtNpopdownCallback : String;
      begin
        XtNpopdownCallback:=String(@(XtStrings[548]));
      end;

    function XtNresize : String;
      begin
        XtNresize:=String(@(XtStrings[564]));
      end;

    function XtNreverseVideo : String;
      begin
        XtNreverseVideo:=String(@(XtStrings[571]));
      end;

    function XtNscreen : String;
      begin
        XtNscreen:=String(@(XtStrings[584]));
      end;

    function XtNscrollProc : String;
      begin
        XtNscrollProc:=String(@(XtStrings[591]));
      end;

    function XtNscrollDCursor : String;
      begin
        XtNscrollDCursor:=String(@(XtStrings[602]));
      end;

    function XtNscrollHCursor : String;
      begin
        XtNscrollHCursor:=String(@(XtStrings[616]));
      end;

    function XtNscrollLCursor : String;
      begin
        XtNscrollLCursor:=String(@(XtStrings[630]));
      end;

    function XtNscrollRCursor : String;
      begin
        XtNscrollRCursor:=String(@(XtStrings[644]));
      end;

    function XtNscrollUCursor : String;
      begin
        XtNscrollUCursor:=String(@(XtStrings[658]));
      end;

    function XtNscrollVCursor : String;
      begin
        XtNscrollVCursor:=String(@(XtStrings[672]));
      end;

    function XtNselection : String;
      begin
        XtNselection:=String(@(XtStrings[686]));
      end;

    function XtNselectionArray : String;
      begin
        XtNselectionArray:=String(@(XtStrings[696]));
      end;

    function XtNsensitive : String;
      begin
        XtNsensitive:=String(@(XtStrings[711]));
      end;

    function XtNshown : String;
      begin
        XtNshown:=String(@(XtStrings[721]));
      end;

    function XtNspace : String;
      begin
        XtNspace:=String(@(XtStrings[727]));
      end;

    function XtNstring : String;
      begin
        XtNstring:=String(@(XtStrings[733]));
      end;

    function XtNtextOptions : String;
      begin
        XtNtextOptions:=String(@(XtStrings[740]));
      end;

    function XtNtextSink : String;
      begin
        XtNtextSink:=String(@(XtStrings[752]));
      end;

    function XtNtextSource : String;
      begin
        XtNtextSource:=String(@(XtStrings[761]));
      end;

    function XtNthickness : String;
      begin
        XtNthickness:=String(@(XtStrings[772]));
      end;

    function XtNthumb : String;
      begin
        XtNthumb:=String(@(XtStrings[782]));
      end;

    function XtNthumbProc : String;
      begin
        XtNthumbProc:=String(@(XtStrings[788]));
      end;

    function XtNtop : String;
      begin
        XtNtop:=String(@(XtStrings[798]));
      end;

    function XtNtranslations : String;
      begin
        XtNtranslations:=String(@(XtStrings[802]));
      end;

    function XtNunrealizeCallback : String;
      begin
        XtNunrealizeCallback:=String(@(XtStrings[815]));
      end;

    function XtNupdate : String;
      begin
        XtNupdate:=String(@(XtStrings[833]));
      end;

    function XtNuseBottom : String;
      begin
        XtNuseBottom:=String(@(XtStrings[840]));
      end;

    function XtNuseRight : String;
      begin
        XtNuseRight:=String(@(XtStrings[850]));
      end;

    function XtNvalue : String;
      begin
        XtNvalue:=String(@(XtStrings[859]));
      end;

    function XtNvSpace : String;
      begin
        XtNvSpace:=String(@(XtStrings[865]));
      end;

    function XtNwidth : String;
      begin
        XtNwidth:=String(@(XtStrings[872]));
      end;

    function XtNwindow : String;
      begin
        XtNwindow:=String(@(XtStrings[878]));
      end;

    function XtNx : String;
      begin
        XtNx:=String(@(XtStrings[885]));
      end;

    function XtNy : String;
      begin
        XtNy:=String(@(XtStrings[887]));
      end;

    function XtCAccelerators : String;
      begin
        XtCAccelerators:=String(@(XtStrings[889]));
      end;

    function XtCBackground : String;
      begin
        XtCBackground:=String(@(XtStrings[902]));
      end;

    function XtCBitmap : String;
      begin
        XtCBitmap:=String(@(XtStrings[913]));
      end;

    function XtCBoolean : String;
      begin
        XtCBoolean:=String(@(XtStrings[920]));
      end;

    function XtCBorderColor : String;
      begin
        XtCBorderColor:=String(@(XtStrings[928]));
      end;

    function XtCBorderWidth : String;
      begin
        XtCBorderWidth:=String(@(XtStrings[940]));
      end;

    function XtCCallback : String;
      begin
        XtCCallback:=String(@(XtStrings[952]));
      end;

    function XtCColormap : String;
      begin
        XtCColormap:=String(@(XtStrings[961]));
      end;

    function XtCColor : String;
      begin
        XtCColor:=String(@(XtStrings[970]));
      end;

    function XtCCursor : String;
      begin
        XtCCursor:=String(@(XtStrings[976]));
      end;

    function XtCDepth : String;
      begin
        XtCDepth:=String(@(XtStrings[983]));
      end;

    function XtCEditType : String;
      begin
        XtCEditType:=String(@(XtStrings[989]));
      end;

    function XtCEventBindings : String;
      begin
        XtCEventBindings:=String(@(XtStrings[998]));
      end;

    function XtCFile : String;
      begin
        XtCFile:=String(@(XtStrings[1012]));
      end;

    function XtCFont : String;
      begin
        XtCFont:=String(@(XtStrings[1017]));
      end;

    function XtCForeground : String;
      begin
        XtCForeground:=String(@(XtStrings[1022]));
      end;

    function XtCFraction : String;
      begin
        XtCFraction:=String(@(XtStrings[1033]));
      end;

    function XtCFunction : String;
      begin
        XtCFunction:=String(@(XtStrings[1042]));
      end;

    function XtCHeight : String;
      begin
        XtCHeight:=String(@(XtStrings[1051]));
      end;

    function XtCHSpace : String;
      begin
        XtCHSpace:=String(@(XtStrings[1058]));
      end;

    function XtCIndex : String;
      begin
        XtCIndex:=String(@(XtStrings[1065]));
      end;

    function XtCInitialResourcesPersistent : String;
      begin
        XtCInitialResourcesPersistent:=String(@(XtStrings[1071]));
      end;

    function XtCInsertPosition : String;
      begin
        XtCInsertPosition:=String(@(XtStrings[1098]));
      end;

    function XtCInterval : String;
      begin
        XtCInterval:=String(@(XtStrings[1113]));
      end;

    function XtCJustify : String;
      begin
        XtCJustify:=String(@(XtStrings[1122]));
      end;

    function XtCKnobIndent : String;
      begin
        XtCKnobIndent:=String(@(XtStrings[1130]));
      end;

    function XtCKnobPixel : String;
      begin
        XtCKnobPixel:=String(@(XtStrings[1141]));
      end;

    function XtCLabel : String;
      begin
        XtCLabel:=String(@(XtStrings[1151]));
      end;

    function XtCLength : String;
      begin
        XtCLength:=String(@(XtStrings[1157]));
      end;

    function XtCMappedWhenManaged : String;
      begin
        XtCMappedWhenManaged:=String(@(XtStrings[1164]));
      end;

    function XtCMargin : String;
      begin
        XtCMargin:=String(@(XtStrings[1182]));
      end;

    function XtCMenuEntry : String;
      begin
        XtCMenuEntry:=String(@(XtStrings[1189]));
      end;

    function XtCNotify : String;
      begin
        XtCNotify:=String(@(XtStrings[1199]));
      end;

    function XtCOrientation : String;
      begin
        XtCOrientation:=String(@(XtStrings[1206]));
      end;

    function XtCParameter : String;
      begin
        XtCParameter:=String(@(XtStrings[1218]));
      end;

    function XtCPixmap : String;
      begin
        XtCPixmap:=String(@(XtStrings[1228]));
      end;

    function XtCPosition : String;
      begin
        XtCPosition:=String(@(XtStrings[1235]));
      end;

    function XtCReadOnly : String;
      begin
        XtCReadOnly:=String(@(XtStrings[1244]));
      end;

    function XtCResize : String;
      begin
        XtCResize:=String(@(XtStrings[1253]));
      end;

    function XtCReverseVideo : String;
      begin
        XtCReverseVideo:=String(@(XtStrings[1260]));
      end;

    function XtCScreen : String;
      begin
        XtCScreen:=String(@(XtStrings[1273]));
      end;

    function XtCScrollProc : String;
      begin
        XtCScrollProc:=String(@(XtStrings[1280]));
      end;

    function XtCScrollDCursor : String;
      begin
        XtCScrollDCursor:=String(@(XtStrings[1291]));
      end;

    function XtCScrollHCursor : String;
      begin
        XtCScrollHCursor:=String(@(XtStrings[1305]));
      end;

    function XtCScrollLCursor : String;
      begin
        XtCScrollLCursor:=String(@(XtStrings[1319]));
      end;

    function XtCScrollRCursor : String;
      begin
        XtCScrollRCursor:=String(@(XtStrings[1333]));
      end;

    function XtCScrollUCursor : String;
      begin
        XtCScrollUCursor:=String(@(XtStrings[1347]));
      end;

    function XtCScrollVCursor : String;
      begin
        XtCScrollVCursor:=String(@(XtStrings[1361]));
      end;

    function XtCSelection : String;
      begin
        XtCSelection:=String(@(XtStrings[1375]));
      end;

    function XtCSensitive : String;
      begin
        XtCSensitive:=String(@(XtStrings[1385]));
      end;

    function XtCSelectionArray : String;
      begin
        XtCSelectionArray:=String(@(XtStrings[1395]));
      end;

    function XtCSpace : String;
      begin
        XtCSpace:=String(@(XtStrings[1410]));
      end;

    function XtCString : String;
      begin
        XtCString:=String(@(XtStrings[1416]));
      end;

    function XtCTextOptions : String;
      begin
        XtCTextOptions:=String(@(XtStrings[1423]));
      end;

    function XtCTextPosition : String;
      begin
        XtCTextPosition:=String(@(XtStrings[1435]));
      end;

    function XtCTextSink : String;
      begin
        XtCTextSink:=String(@(XtStrings[1448]));
      end;

    function XtCTextSource : String;
      begin
        XtCTextSource:=String(@(XtStrings[1457]));
      end;

    function XtCThickness : String;
      begin
        XtCThickness:=String(@(XtStrings[1468]));
      end;

    function XtCThumb : String;
      begin
        XtCThumb:=String(@(XtStrings[1478]));
      end;

    function XtCTranslations : String;
      begin
        XtCTranslations:=String(@(XtStrings[1484]));
      end;

    function XtCValue : String;
      begin
        XtCValue:=String(@(XtStrings[1497]));
      end;

    function XtCVSpace : String;
      begin
        XtCVSpace:=String(@(XtStrings[1503]));
      end;

    function XtCWidth : String;
      begin
        XtCWidth:=String(@(XtStrings[1510]));
      end;

    function XtCWindow : String;
      begin
        XtCWindow:=String(@(XtStrings[1516]));
      end;

    function XtCX : String;
      begin
        XtCX:=String(@(XtStrings[1523]));
      end;

    function XtCY : String;
      begin
        XtCY:=String(@(XtStrings[1525]));
      end;

    function XtRAcceleratorTable : String;
      begin
        XtRAcceleratorTable:=String(@(XtStrings[1527]));
      end;

    function XtRAtom : String;
      begin
        XtRAtom:=String(@(XtStrings[1544]));
      end;

    function XtRBitmap : String;
      begin
        XtRBitmap:=String(@(XtStrings[1549]));
      end;

    function XtRBool : String;
      begin
        XtRBool:=String(@(XtStrings[1556]));
      end;

    function XtRBoolean : String;
      begin
        XtRBoolean:=String(@(XtStrings[1561]));
      end;

    function XtRCallback : String;
      begin
        XtRCallback:=String(@(XtStrings[1569]));
      end;

    function XtRCallProc : String;
      begin
        XtRCallProc:=String(@(XtStrings[1578]));
      end;

    function XtRCardinal : String;
      begin
        XtRCardinal:=String(@(XtStrings[1587]));
      end;

    function XtRColor : String;
      begin
        XtRColor:=String(@(XtStrings[1596]));
      end;

    function XtRColormap : String;
      begin
        XtRColormap:=String(@(XtStrings[1602]));
      end;

    function XtRCursor : String;
      begin
        XtRCursor:=String(@(XtStrings[1611]));
      end;

    function XtRDimension : String;
      begin
        XtRDimension:=String(@(XtStrings[1618]));
      end;

    function XtRDisplay : String;
      begin
        XtRDisplay:=String(@(XtStrings[1628]));
      end;

    function XtREditMode : String;
      begin
        XtREditMode:=String(@(XtStrings[1636]));
      end;

    function XtREnum : String;
      begin
        XtREnum:=String(@(XtStrings[1645]));
      end;

    function XtRFile : String;
      begin
        XtRFile:=String(@(XtStrings[1650]));
      end;

    function XtRFloat : String;
      begin
        XtRFloat:=String(@(XtStrings[1655]));
      end;

    function XtRFont : String;
      begin
        XtRFont:=String(@(XtStrings[1661]));
      end;

    function XtRFontStruct : String;
      begin
        XtRFontStruct:=String(@(XtStrings[1666]));
      end;

    function XtRFunction : String;
      begin
        XtRFunction:=String(@(XtStrings[1677]));
      end;

    function XtRGeometry : String;
      begin
        XtRGeometry:=String(@(XtStrings[1686]));
      end;

    function XtRImmediate : String;
      begin
        XtRImmediate:=String(@(XtStrings[1695]));
      end;

    function XtRInitialState : String;
      begin
        XtRInitialState:=String(@(XtStrings[1705]));
      end;

    function XtRInt : String;
      begin
        XtRInt:=String(@(XtStrings[1718]));
      end;

    function XtRJustify : String;
      begin
        XtRJustify:=String(@(XtStrings[1722]));
      end;

    function XtRLongBoolean : String;
      begin
        XtRLongBoolean:=String(@(XtStrings[1730]));
      end;

    function XtRObject : String;
      begin
        XtRObject:=String(@(XtStrings[1735]));
      end;

    function XtROrientation : String;
      begin
        XtROrientation:=String(@(XtStrings[1742]));
      end;

    function XtRPixel : String;
      begin
        XtRPixel:=String(@(XtStrings[1754]));
      end;

    function XtRPixmap : String;
      begin
        XtRPixmap:=String(@(XtStrings[1760]));
      end;

    function XtRPointer : String;
      begin
        XtRPointer:=String(@(XtStrings[1767]));
      end;

    function XtRPosition : String;
      begin
        XtRPosition:=String(@(XtStrings[1775]));
      end;

    function XtRScreen : String;
      begin
        XtRScreen:=String(@(XtStrings[1784]));
      end;

    function XtRShort : String;
      begin
        XtRShort:=String(@(XtStrings[1791]));
      end;

    function XtRString : String;
      begin
        XtRString:=String(@(XtStrings[1797]));
      end;

    function XtRStringArray : String;
      begin
        XtRStringArray:=String(@(XtStrings[1804]));
      end;

    function XtRStringTable : String;
      begin
        XtRStringTable:=String(@(XtStrings[1816]));
      end;

    function XtRUnsignedChar : String;
      begin
        XtRUnsignedChar:=String(@(XtStrings[1828]));
      end;

    function XtRTranslationTable : String;
      begin
        XtRTranslationTable:=String(@(XtStrings[1841]));
      end;

    function XtRVisual : String;
      begin
        XtRVisual:=String(@(XtStrings[1858]));
      end;

    function XtRWidget : String;
      begin
        XtRWidget:=String(@(XtStrings[1865]));
      end;

    function XtRWidgetClass : String;
      begin
        XtRWidgetClass:=String(@(XtStrings[1872]));
      end;

    function XtRWidgetList : String;
      begin
        XtRWidgetList:=String(@(XtStrings[1884]));
      end;

    function XtRWindow : String;
      begin
        XtRWindow:=String(@(XtStrings[1895]));
      end;

    function XtEoff : String;
      begin
        XtEoff:=String(@(XtStrings[1902]));
      end;

    function XtEfalse : String;
      begin
        XtEfalse:=String(@(XtStrings[1906]));
      end;

    function XtEno : String;
      begin
        XtEno:=String(@(XtStrings[1912]));
      end;

    function XtEon : String;
      begin
        XtEon:=String(@(XtStrings[1915]));
      end;

    function XtEtrue : String;
      begin
        XtEtrue:=String(@(XtStrings[1918]));
      end;

    function XtEyes : String;
      begin
        XtEyes:=String(@(XtStrings[1923]));
      end;

    function XtEvertical : String;
      begin
        XtEvertical:=String(@(XtStrings[1927]));
      end;

    function XtEhorizontal : String;
      begin
        XtEhorizontal:=String(@(XtStrings[1936]));
      end;

    function XtEtextRead : String;
      begin
        XtEtextRead:=String(@(XtStrings[1947]));
      end;

    function XtEtextAppend : String;
      begin
        XtEtextAppend:=String(@(XtStrings[1952]));
      end;

    function XtEtextEdit : String;
      begin
        XtEtextEdit:=String(@(XtStrings[1959]));
      end;

    function XtExtdefaultbackground : String;
      begin
        XtExtdefaultbackground:=String(@(XtStrings[1964]));
      end;

    function XtExtdefaultforeground : String;
      begin
        XtExtdefaultforeground:=String(@(XtStrings[1984]));
      end;

    function XtExtdefaultfont : String;
      begin
        XtExtdefaultfont:=String(@(XtStrings[2004]));
      end;

    function XtNfontSet : String;
      begin
        XtNfontSet:=String(@(XtStrings[2018]));
      end;

    function XtRFontSet : String;
      begin
        XtRFontSet:=String(@(XtStrings[2026]));
      end;

    function XtCFontSet : String;
      begin
        XtCFontSet:=String(@(XtStrings[2034]));
      end;

    function XtRGravity : String;
      begin
        XtRGravity:=String(@(XtStrings[2042]));
      end;

    function XtNcreateHook : String;
      begin
        XtNcreateHook:=String(@(XtStrings[2050]));
      end;

    function XtNchangeHook : String;
      begin
        XtNchangeHook:=String(@(XtStrings[2061]));
      end;

    function XtNconfigureHook : String;
      begin
        XtNconfigureHook:=String(@(XtStrings[2072]));
      end;

    function XtNgeometryHook : String;
      begin
        XtNgeometryHook:=String(@(XtStrings[2086]));
      end;

    function XtNdestroyHook : String;
      begin
        XtNdestroyHook:=String(@(XtStrings[2099]));
      end;

    function XtNshells : String;
      begin
        XtNshells:=String(@(XtStrings[2111]));
      end;

    function XtNnumShells : String;
      begin
        XtNnumShells:=String(@(XtStrings[2118]));
      end;

    function XtRCommandArgArray : String;
      begin
        XtRCommandArgArray:=String(@(XtStrings[2128]));
      end;

    function XtRDirectoryString : String;
      begin
        XtRDirectoryString:=String(@(XtStrings[2144]));
      end;

    function XtREnvironmentArray : String;
      begin
        XtREnvironmentArray:=String(@(XtStrings[2160]));
      end;

    function XtRRestartStyle : String;
      begin
        XtRRestartStyle:=String(@(XtStrings[2177]));
      end;

    function XtRSmcConn : String;
      begin
        XtRSmcConn:=String(@(XtStrings[2190]));
      end;

    function XtHcreate : String;
      begin
        XtHcreate:=String(@(XtStrings[2198]));
      end;

    function XtHsetValues : String;
      begin
        XtHsetValues:=String(@(XtStrings[2207]));
      end;

    function XtHmanageChildren : String;
      begin
        XtHmanageChildren:=String(@(XtStrings[2219]));
      end;

    function XtHunmanageChildren : String;
      begin
        XtHunmanageChildren:=String(@(XtStrings[2236]));
      end;

    function XtHmanageSet : String;
      begin
        XtHmanageSet:=String(@(XtStrings[2255]));
      end;

    function XtHunmanageSet : String;
      begin
        XtHunmanageSet:=String(@(XtStrings[2267]));
      end;

    function XtHrealizeWidget : String;
      begin
        XtHrealizeWidget:=String(@(XtStrings[2281]));
      end;

    function XtHunrealizeWidget : String;
      begin
        XtHunrealizeWidget:=String(@(XtStrings[2297]));
      end;

    function XtHaddCallback : String;
      begin
        XtHaddCallback:=String(@(XtStrings[2315]));
      end;

    function XtHaddCallbacks : String;
      begin
        XtHaddCallbacks:=String(@(XtStrings[2329]));
      end;

    function XtHremoveCallback : String;
      begin
        XtHremoveCallback:=String(@(XtStrings[2344]));
      end;

    function XtHremoveCallbacks : String;
      begin
        XtHremoveCallbacks:=String(@(XtStrings[2361]));
      end;

    function XtHremoveAllCallbacks : String;
      begin
        XtHremoveAllCallbacks:=String(@(XtStrings[2379]));
      end;

    function XtHaugmentTranslations : String;
      begin
        XtHaugmentTranslations:=String(@(XtStrings[2400]));
      end;

    function XtHoverrideTranslations : String;
      begin
        XtHoverrideTranslations:=String(@(XtStrings[2422]));
      end;

    function XtHuninstallTranslations : String;
      begin
        XtHuninstallTranslations:=String(@(XtStrings[2445]));
      end;

    function XtHsetKeyboardFocus : String;
      begin
        XtHsetKeyboardFocus:=String(@(XtStrings[2469]));
      end;

    function XtHsetWMColormapWindows : String;
      begin
        XtHsetWMColormapWindows:=String(@(XtStrings[2488]));
      end;

    function XtHsetMappedWhenManaged : String;
      begin
        XtHsetMappedWhenManaged:=String(@(XtStrings[2511]));
      end;

    function XtHmapWidget : String;
      begin
        XtHmapWidget:=String(@(XtStrings[2534]));
      end;

    function XtHunmapWidget : String;
      begin
        XtHunmapWidget:=String(@(XtStrings[2546]));
      end;

    function XtHpopup : String;
      begin
        XtHpopup:=String(@(XtStrings[2560]));
      end;

    function XtHpopupSpringLoaded : String;
      begin
        XtHpopupSpringLoaded:=String(@(XtStrings[2568]));
      end;

    function XtHpopdown : String;
      begin
        XtHpopdown:=String(@(XtStrings[2588]));
      end;

    function XtHconfigure : String;
      begin
        XtHconfigure:=String(@(XtStrings[2598]));
      end;

    function XtHpreGeometry : String;
      begin
        XtHpreGeometry:=String(@(XtStrings[2610]));
      end;

    function XtHpostGeometry : String;
      begin
        XtHpostGeometry:=String(@(XtStrings[2624]));
      end;

    function XtHdestroy : String;
      begin
        XtHdestroy:=String(@(XtStrings[2639]));
      end;


end.
