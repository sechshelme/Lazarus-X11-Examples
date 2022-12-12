
unit font;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/font.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/font.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/fonts/font.pp
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
Pbyte  = ^byte;
Pchar  = ^char;
PCharInfo  = ^CharInfo;
PCharInfoPtr  = ^CharInfoPtr;
PClient  = ^Client;
PDrawDirection  = ^DrawDirection;
PExtentInfo  = ^ExtentInfo;
PExtentInfoPtr  = ^ExtentInfoPtr;
PFont  = ^Font;
PFontEncoding  = ^FontEncoding;
PFontInfo  = ^FontInfo;
PFontInfoPtr  = ^FontInfoPtr;
PFontNames  = ^FontNames;
PFontNamesPtr  = ^FontNamesPtr;
PFontPathElement  = ^FontPathElement;
PFontPathElementPtr  = ^FontPathElementPtr;
PFontPatternCache  = ^FontPatternCache;
PFontPatternCachePtr  = ^FontPatternCachePtr;
PFontProp  = ^FontProp;
PFontPropPtr  = ^FontPropPtr;
PFontPtr  = ^FontPtr;
PFontResolution  = ^FontResolution;
PFontResolutionPtr  = ^FontResolutionPtr;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef FONT_H}
{$define FONT_H}
{$include <X11/Xfuncproto.h>}
{$ifndef BitmapFormatByteOrderMask}
{$include	"fsmasks.h"}
{$endif}

{$ifndef _XTYPEDEF_FONTPTR}
type
  PFontPtr = ^TFontPtr;
  TFontPtr = PFont;
{$define _XTYPEDEF_FONTPTR}
{$endif}
type
  PFontInfoPtr = ^TFontInfoPtr;
  TFontInfoPtr = PFontInfo;

  PFontPropPtr = ^TFontPropPtr;
  TFontPropPtr = PFontProp;

  PExtentInfoPtr = ^TExtentInfoPtr;
  TExtentInfoPtr = PExtentInfo;

  PFontPathElementPtr = ^TFontPathElementPtr;
  TFontPathElementPtr = PFontPathElement;
{$ifndef _XTYPEDEF_CHARINFOPTR}
type
  PCharInfoPtr = ^TCharInfoPtr;
  TCharInfoPtr = PCharInfo;
{$define _XTYPEDEF_CHARINFOPTR}
{$endif}
type
  PFontNamesPtr = ^TFontNamesPtr;
  TFontNamesPtr = PFontNames;

  PFontResolutionPtr = ^TFontResolutionPtr;
  TFontResolutionPtr = PFontResolution;

function NullCharInfo : TCharInfoPtr;  

function NullFont : TFontPtr;  

function NullFontInfo : TFontInfoPtr;  


const
  LeftToRight = 0;  
  RightToLeft = 1;  
  BottomToTop = 2;  
  TopToBottom = 3;  
type
  PDrawDirection = ^TDrawDirection;
  TDrawDirection = longint;

const
  NO_SUCH_CHAR = -(1);  
  FontAliasType = $1000;  
  AllocError = 80;  
  StillWorking = 81;  
  FontNameAlias = 82;  
  BadFontName = 83;  
  Suspended = 84;  
  Successful = 85;  
  BadFontPath = 86;  
  BadCharRange = 87;  
  BadFontFormat = 88;  

  FPEResetFailed = 89;  

  FontLoadInfo = $0001;  
  FontLoadProps = $0002;  
  FontLoadMetrics = $0004;  
  FontLoadBitmaps = $0008;  
  FontLoadAll = $000f;  
  FontOpenSync = $0010;  
  FontReopen = $0020;  

  LoadAll = $1;  
  FinishRamge = $2;  
  EightBitFont = $4;  
  SixteenBitFont = $8;  

  CACHING_OFF = 0;  
  CACHE_16_BIT_GLYPHS = 1;  
  CACHE_ALL_GLYPHS = 2;  
  DEFAULT_GLYPH_CACHING_MODE = CACHE_16_BIT_GLYPHS;  
  var
    glyphCachingMode : longint;cvar;external;
type
  PClient = ^TClient;
  TClient = record
      {undefined structure}
    end;



function StartListFontsWithInfo(para1:PClient; para2:longint; para3:Pbyte; para4:longint):longint;cdecl;external;

function MakeFontNamesRecord(para1:dword):TFontNamesPtr;cdecl;external;

procedure FreeFontNames(para1:TFontNamesPtr);cdecl;external;

function AddFontNamesName(para1:TFontNamesPtr; para2:Pchar; para3:longint):longint;cdecl;external;
{$if 0 /* unused */}

function FontToFSError:longint;cdecl;external;
function GetClientResolution:TFontResolutionPtr;cdecl;external;
{$endif}
type
  PFontPatternCachePtr = ^TFontPatternCachePtr;
  TFontPatternCachePtr = PFontPatternCache;

function MakeFontPatternCache:TFontPatternCachePtr;cdecl;external;

procedure FreeFontPatternCache(para1:TFontPatternCachePtr);cdecl;external;

procedure EmptyFontPatternCache(para1:TFontPatternCachePtr);cdecl;external;

procedure CacheFontPattern(para1:TFontPatternCachePtr; para2:Pchar; para3:longint; para4:TFontPtr);cdecl;external;
(* error 
extern _X_EXPORT FontResolutionPtr GetClientResolutions(

 in declarator_list *)

function FindCachedFontPattern(para1:TFontPatternCachePtr; para2:Pchar; para3:longint):TFontPtr;cdecl;external;

procedure RemoveCachedFontPattern(para1:TFontPatternCachePtr; para2:TFontPtr);cdecl;external;
type
  PFontEncoding = ^TFontEncoding;
  TFontEncoding = (Linear8Bit,TwoD8Bit,Linear16Bit,TwoD16Bit
    );
{$endif}


implementation

function NullCharInfo : TCharInfoPtr;
  begin
    NullCharInfo:=TCharInfoPtr(0);
  end;

function NullFont : TFontPtr;
  begin
    NullFont:=TFontPtr(0);
  end;

function NullFontInfo : TFontInfoPtr;
  begin
    NullFontInfo:=TFontInfoPtr(0);
  end;


end.
