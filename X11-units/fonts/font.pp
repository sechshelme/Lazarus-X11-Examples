
unit font;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/fonts/font.h
  The following command line parameters were used:
    /usr/include/X11/fonts/font.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/fonts/font.pp
}

  Type
  P_Client  = ^_Client;
  Pbyte  = ^byte;
  Pchar  = ^char;
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
    FontPtr = ^_Font;
{$define _XTYPEDEF_FONTPTR}  
{$endif}

  type
    FontInfoPtr = ^_FontInfo;

    FontPropPtr = ^_FontProp;

    ExtentInfoPtr = ^_ExtentInfo;

    FontPathElementPtr = ^_FontPathElement;
{$ifndef _XTYPEDEF_CHARINFOPTR}

  type
    CharInfoPtr = ^_CharInfo;
{$define _XTYPEDEF_CHARINFOPTR}  
{$endif}

  type
    FontNamesPtr = ^_FontNames;

    FontResolutionPtr = ^_FontResolution;

  function NullCharInfo : CharInfoPtr;    

  function NullFont : FontPtr;    

  function NullFontInfo : FontInfoPtr;    


  const
    LeftToRight = 0;    
    RightToLeft = 1;    
    BottomToTop = 2;    
    TopToBottom = 3;    

  type
    DrawDirection = longint;

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
    _Client = record
        {undefined structure}
      end;



  function StartListFontsWithInfo(_para1:P_Client; _para2:longint; _para3:Pbyte; _para4:longint):longint;cdecl;


  function MakeFontNamesRecord(_para1:dword):FontNamesPtr;cdecl;


  procedure FreeFontNames(_para1:FontNamesPtr);cdecl;


  function AddFontNamesName(_para1:FontNamesPtr; _para2:Pchar; _para3:longint):longint;cdecl;

{$if 0 /* unused */}

  function FontToFSError:longint;cdecl;

  function GetClientResolution:FontResolutionPtr;cdecl;

{$endif}

  type
    FontPatternCachePtr = ^_FontPatternCache;

  function MakeFontPatternCache:FontPatternCachePtr;cdecl;


  procedure FreeFontPatternCache(_para1:FontPatternCachePtr);cdecl;


  procedure EmptyFontPatternCache(_para1:FontPatternCachePtr);cdecl;


  procedure CacheFontPattern(_para1:FontPatternCachePtr; _para2:Pchar; _para3:longint; _para4:FontPtr);cdecl;

(* error 
extern _X_EXPORT FontResolutionPtr GetClientResolutions(

 in declarator_list *)

  function FindCachedFontPattern(_para1:FontPatternCachePtr; _para2:Pchar; _para3:longint):FontPtr;cdecl;


  procedure RemoveCachedFontPattern(_para1:FontPatternCachePtr; _para2:FontPtr);cdecl;


  type
    FontEncoding = (Linear8Bit,TwoD8Bit,Linear16Bit,TwoD16Bit
      );
{$endif}


implementation

  function NullCharInfo : CharInfoPtr;
    begin
      NullCharInfo:=CharInfoPtr(0);
    end;

  function NullFont : FontPtr;
    begin
      NullFont:=FontPtr(0);
    end;

  function NullFontInfo : FontInfoPtr;
    begin
      NullFontInfo:=FontInfoPtr(0);
    end;


end.
