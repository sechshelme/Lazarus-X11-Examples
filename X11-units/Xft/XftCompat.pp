
unit XftCompat;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xft/XftCompat.h
  The following command line parameters were used:
    /usr/include/X11/Xft/XftCompat.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xft/XftCompat.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XFTCOMPAT_H_}
{$define _XFTCOMPAT_H_}  
{$include <X11/Xfuncproto.h>}


  type
    XftChar8 = FcChar8;

    XftChar16 = FcChar16;

    XftChar32 = FcChar32;

  const
    XFT_FAMILY = FC_FAMILY;    
    XFT_STYLE = FC_STYLE;    
    XFT_SLANT = FC_SLANT;    
    XFT_WEIGHT = FC_WEIGHT;    
    XFT_SIZE = FC_SIZE;    
    XFT_PIXEL_SIZE = FC_PIXEL_SIZE;    
    XFT_SPACING = FC_SPACING;    
    XFT_FOUNDRY = FC_FOUNDRY;    
    XFT_ANTIALIAS = FC_ANTIALIAS;    
    XFT_FILE = FC_FILE;    
    XFT_INDEX = FC_INDEX;    
    XFT_RASTERIZER = FC_RASTERIZER;    
    XFT_OUTLINE = FC_OUTLINE;    
    XFT_SCALABLE = FC_SCALABLE;    
    XFT_RGBA = FC_RGBA;    

    XFT_SCALE = FC_SCALE;    
    XFT_MINSPACE = FC_MINSPACE;    
    XFT_DPI = FC_DPI;    

    XFT_CHAR_WIDTH = FC_CHAR_WIDTH;    
    XFT_CHAR_HEIGHT = FC_CHAR_HEIGHT;    
    XFT_MATRIX = FC_MATRIX;    
    XFT_WEIGHT_LIGHT = FC_WEIGHT_LIGHT;    
    XFT_WEIGHT_MEDIUM = FC_WEIGHT_MEDIUM;    
    XFT_WEIGHT_DEMIBOLD = FC_WEIGHT_DEMIBOLD;    
    XFT_WEIGHT_BOLD = FC_WEIGHT_BOLD;    
    XFT_WEIGHT_BLACK = FC_WEIGHT_BLACK;    
    XFT_SLANT_ROMAN = FC_SLANT_ROMAN;    
    XFT_SLANT_ITALIC = FC_SLANT_ITALIC;    
    XFT_SLANT_OBLIQUE = FC_SLANT_OBLIQUE;    
    XFT_PROPORTIONAL = FC_PROPORTIONAL;    
    XFT_MONO = FC_MONO;    
    XFT_CHARCELL = FC_CHARCELL;    
    XFT_RGBA_UNKNOWN = FC_RGBA_UNKNOWN;    
    XFT_RGBA_RGB = FC_RGBA_RGB;    
    XFT_RGBA_BGR = FC_RGBA_BGR;    
    XFT_RGBA_VRGB = FC_RGBA_VRGB;    
    XFT_RGBA_VBGR = FC_RGBA_VBGR;    
    XFT_RGBA_NONE = FC_RGBA_NONE;    

    XFT_ENCODING = 'encoding';    

  type
    XftType = FcType;

    XftMatrix = FcMatrix;

  function XftMatrixInit(m : longint) : longint;  


  type
    XftResult = FcResult;

  const
    XftResultMatch = FcResultMatch;    
    XftResultNoMatch = FcResultNoMatch;    
    XftResultTypeMismatch = FcResultTypeMismatch;    
    XftResultNoId = FcResultNoId;    

  type
    XftValue = FcValue;

    XftPattern = FcPattern;

    XftFontSet = FcFontSet;

    XftObjectSet = FcObjectSet;

  const
    XftGlyphExists = XftCharExists;    
    XftObjectSetCreate = FcObjectSetCreate;    
    XftObjectSetAdd = FcObjectSetAdd;    
    XftObjectSetDestroy = FcObjectSetDestroy;    
    XftObjectSetVaBuild = FcObjectSetVaBuild;    
    XftObjectSetBuild = FcObjectSetBuild;    
    XftFontSetMatch = FcFontSetMatch;    
    XftFontSetDestroy = FcFontSetDestroy;    
    XftMatrixEqual = FcMatrixEqual;    
    XftMatrixMultiply = FcMatrixMultiply;    
    XftMatrixRotate = FcMatrixRotate;    
    XftMatrixScale = FcMatrixScale;    
    XftMatrixShear = FcMatrixShear;    
    XftPatternCreate = FcPatternCreate;    
    XftPatternDuplicate = FcPatternDuplicate;    
    XftValueDestroy = FcValueDestroy;    
    XftValueListDestroy = FcValueListDestroy;    
    XftPatternDestroy = FcPatternDestroy;    
    XftPatternFind = FcPatternFind;    
    XftPatternAdd = FcPatternAdd;    
    XftPatternGet = FcPatternGet;    
    XftPatternDel = FcPatternDel;    
    XftPatternAddInteger = FcPatternAddInteger;    
    XftPatternAddDouble = FcPatternAddDouble;    

  function XftPatternAddString(p,e,s : longint) : longint;  

  const
    XftPatternAddMatrix = FcPatternAddMatrix;    
    XftPatternAddBool = FcPatternAddBool;    
    XftPatternGetInteger = FcPatternGetInteger;    
    XftPatternGetDouble = FcPatternGetDouble;    
(* error 
#define XftPatternGetString(p,e,i,n)	FcPatternGetString(p,e,i,(FcChar8 **) (n))
in define line 138 *)
      XftPatternGetMatrix = FcPatternGetMatrix;      
      XftPatternGetBool = FcPatternGetBool;      
      XftPatternVaBuild = FcPatternVaBuild;      
      XftPatternBuild = FcPatternBuild;      
      XftUtf8ToUcs4 = FcUtf8ToUcs4;      
      XftUtf8Len = FcUtf8Len;      
      XftTypeVoid = FcTypeVoid;      
      XftTypeInteger = FcTypeInteger;      
      XftTypeDouble = FcTypeDouble;      
      XftTypeString = FcTypeString;      
      XftTypeBool = FcTypeBool;      
      XftTypeMatrix = FcTypeMatrix;      

    function XftConfigSubstitute(p : longint) : longint;    

(* error 
XftNameUnparse (XftPattern *pat, char *dest, int len);
(* error 
XftNameUnparse (XftPattern *pat, char *dest, int len);
(* error 
XftNameUnparse (XftPattern *pat, char *dest, int len);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}

(* error 
#endif /* _XFTCOMPAT_H_ */

implementation

  function XftMatrixInit(m : longint) : longint;
  begin
    XftMatrixInit:=FcMatrixInit(m);
  end;

  function XftPatternAddString(p,e,s : longint) : longint;
  begin
    XftPatternAddString:=FcPatternAddString(p,e,pFcChar8(s));
  end;

    function XftConfigSubstitute(p : longint) : longint;
    begin
      XftConfigSubstitute:=FcConfigSubstitute(0,p,FcMatchPattern);
    end;


end.
