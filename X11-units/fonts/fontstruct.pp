
unit fontstruct;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/fonts/fontstruct.h
  The following command line parameters were used:
    /usr/include/X11/fonts/fontstruct.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/fonts/fontstruct.pp
}

  Type
  Pbyte  = ^byte;
  Pchar  = ^char;
  PCharInfoPtr  = ^CharInfoPtr;
  Pdword  = ^dword;
  PFontInfoPtr  = ^FontInfoPtr;
  PFontPtr  = ^FontPtr;
  Plongint  = ^longint;
  PxCharInfo  = ^xCharInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef FONTSTR_H}
{$define FONTSTR_H}  
{$include <X11/Xproto.h>}
{$include "font.h"}
{$include <X11/Xfuncproto.h>}
{$include <X11/Xdefs.h>}



  const
    GLYPHPADOPTIONS = 4;    


  type
    _FontProp = record
        name : longint;
        value : longint;
      end;
    FontPropRec = _FontProp;

    _FontResolution = record
        x_resolution : word;
        y_resolution : word;
        point_size : word;
      end;
    FontResolutionRec = _FontResolution;

    _ExtentInfo = record
        drawDirection : DrawDirection;
        fontAscent : longint;
        fontDescent : longint;
        overallAscent : longint;
        overallDescent : longint;
        overallWidth : longint;
        overallLeft : longint;
        overallRight : longint;
      end;
    ExtentInfoRec = _ExtentInfo;



    _CharInfo = record
        metrics : xCharInfo;
        bits : ^char;
      end;
    CharInfoRec = _CharInfo;


    _FontInfo = record
        firstCol : word;
        lastCol : word;
        firstRow : word;
        lastRow : word;
        defaultCh : word;
        flag0 : word;
        maxOverlap : smallint;
        pad : smallint;
        maxbounds : xCharInfo;
        minbounds : xCharInfo;
        ink_maxbounds : xCharInfo;
        ink_minbounds : xCharInfo;
        fontAscent : smallint;
        fontDescent : smallint;
        nprops : longint;
        props : FontPropPtr;
        isStringProp : ^char;
      end;
    FontInfoRec = _FontInfo;

  const
    bm__FontInfo_noOverlap = $1;
    bp__FontInfo_noOverlap = 0;
    bm__FontInfo_terminalFont = $2;
    bp__FontInfo_terminalFont = 1;
    bm__FontInfo_constantMetrics = $4;
    bp__FontInfo_constantMetrics = 2;
    bm__FontInfo_constantWidth = $8;
    bp__FontInfo_constantWidth = 3;
    bm__FontInfo_inkInside = $10;
    bp__FontInfo_inkInside = 4;
    bm__FontInfo_inkMetrics = $20;
    bp__FontInfo_inkMetrics = 5;
    bm__FontInfo_allExist = $40;
    bp__FontInfo_allExist = 6;
    bm__FontInfo_drawDirection = $180;
    bp__FontInfo_drawDirection = 7;
    bm__FontInfo_cachable = $200;
    bp__FontInfo_cachable = 9;
    bm__FontInfo_anamorphic = $400;
    bp__FontInfo_anamorphic = 10;

  function noOverlap(var a : _FontInfo) : dword;
  procedure set_noOverlap(var a : _FontInfo; __noOverlap : dword);
  function terminalFont(var a : _FontInfo) : dword;
  procedure set_terminalFont(var a : _FontInfo; __terminalFont : dword);
  function constantMetrics(var a : _FontInfo) : dword;
  procedure set_constantMetrics(var a : _FontInfo; __constantMetrics : dword);
  function constantWidth(var a : _FontInfo) : dword;
  procedure set_constantWidth(var a : _FontInfo; __constantWidth : dword);
  function inkInside(var a : _FontInfo) : dword;
  procedure set_inkInside(var a : _FontInfo; __inkInside : dword);
  function inkMetrics(var a : _FontInfo) : dword;
  procedure set_inkMetrics(var a : _FontInfo; __inkMetrics : dword);
  function allExist(var a : _FontInfo) : dword;
  procedure set_allExist(var a : _FontInfo; __allExist : dword);
  function drawDirection(var a : _FontInfo) : dword;
  procedure set_drawDirection(var a : _FontInfo; __drawDirection : dword);
  function cachable(var a : _FontInfo) : dword;
  procedure set_cachable(var a : _FontInfo; __cachable : dword);
  function anamorphic(var a : _FontInfo) : dword;
  procedure set_anamorphic(var a : _FontInfo; __anamorphic : dword);

  type
    _Font = record
        refcnt : longint;
        info : FontInfoRec;
        bit : char;
        byte : char;
        glyph : char;
        scan : char;
        format : fsBitmapFormat;
        get_glyphs : function (_para1:FontPtr; _para2:dword; _para3:Pbyte; _para4:FontEncoding; _para5:Pdword; 
                     _para6:PCharInfoPtr):longint;cdecl;
        get_metrics : function (_para1:FontPtr; _para2:dword; _para3:Pbyte; _para4:FontEncoding; _para5:Pdword; 
                     _para6:PPxCharInfo):longint;cdecl;
        unload_font : procedure (_para1:FontPtr);cdecl;
        unload_glyphs : procedure (_para1:FontPtr);cdecl;
        fpe : FontPathElementPtr;
        svrPrivate : pointer;
        fontPrivate : pointer;
        fpePrivate : pointer;
        maxPrivate : longint;
        devPrivates : ^pointer;
      end;
    FontRec = _Font;

  function FontGetPrivate(pFont,n : longint) : longint;  

(* error 
			((((pFont)->devPrivates[n] = (ptr)) != 0) || TRUE))
in define line 137 *)

    type
      _FontNames = record
          nnames : longint;
          size : longint;
          length : ^longint;
          names : ^^char;
        end;
      FontNamesRec = _FontNames;

{$if FONT_PATH_ELEMENT_NAME_CONST}
{$endif}

    type
      _FontPathElement = record
          name_length : longint;
          name : ^char;
          _type : longint;
          refcount : longint;
          private : pointer;
        end;
      FontPathElementRec = _FontPathElement;

      NameCheckFunc = function (name:Pchar):Bool;cdecl;

      InitFpeFunc = function (fpe:FontPathElementPtr):longint;cdecl;

      FreeFpeFunc = function (fpe:FontPathElementPtr):longint;cdecl;

      ResetFpeFunc = function (fpe:FontPathElementPtr):longint;cdecl;

      OpenFontFunc = function (client:pointer; fpe:FontPathElementPtr; flags:Mask; name:Pchar; namelen:longint; 
                   format:fsBitmapFormat; fmask:fsBitmapFormatMask; id:XID; pFont:PFontPtr; aliasName:PPchar; 
                   non_cachable_font:FontPtr):longint;cdecl;

      CloseFontFunc = procedure (fpe:FontPathElementPtr; pFont:FontPtr);cdecl;

      ListFontsFunc = function (client:pointer; fpe:FontPathElementPtr; pat:Pchar; len:longint; max:longint; 
                   names:FontNamesPtr):longint;cdecl;

      StartLfwiFunc = function (client:pointer; fpe:FontPathElementPtr; pat:Pchar; len:longint; max:longint; 
                   privatep:Ppointer):longint;cdecl;

      NextLfwiFunc = function (client:pointer; fpe:FontPathElementPtr; name:PPchar; namelen:Plongint; info:PFontInfoPtr; 
                   numFonts:Plongint; private:pointer):longint;cdecl;

      WakeupFpeFunc = function (fpe:FontPathElementPtr; LastSelectMask:Pdword):longint;cdecl;

      ClientDiedFunc = procedure (client:pointer; fpe:FontPathElementPtr);cdecl;

      LoadGlyphsFunc = function (client:pointer; pfont:FontPtr; range_flag:Bool; nchars:dword; item_size:longint; 
                   data:Pbyte):longint;cdecl;

      StartLaFunc = function (client:pointer; fpe:FontPathElementPtr; pat:Pchar; len:longint; max:longint; 
                   privatep:Ppointer):longint;cdecl;

      NextLaFunc = function (client:pointer; fpe:FontPathElementPtr; namep:PPchar; namelenp:Plongint; resolvedp:PPchar; 
                   resolvedlenp:Plongint; private:pointer):longint;cdecl;

      SetPathFunc = procedure (_para1:pointer);cdecl;


      _FPEFunctions = record
          name_check : NameCheckFunc;
          init_fpe : InitFpeFunc;
          reset_fpe : ResetFpeFunc;
          free_fpe : FreeFpeFunc;
          open_font : OpenFontFunc;
          close_font : CloseFontFunc;
          list_fonts : ListFontsFunc;
          start_list_fonts_and_aliases : StartLaFunc;
          list_next_font_or_alias : NextLaFunc;
          start_list_fonts_with_info : StartLfwiFunc;
          list_next_font_with_info : NextLfwiFunc;
          wakeup_fpe : WakeupFpeFunc;
          client_died : ClientDiedFunc;
          load_glyphs : LoadGlyphsFunc;
          set_path_hook : SetPathFunc;
        end;
      FPEFunctionsRec = _FPEFunctions;
      FPEFunctions = _FPEFunctions;


    function GLYPHWIDTHPIXELS(pci : longint) : longint;    

  function GLYPHHEIGHTPIXELS(pci : longint) : longint;  

  function GLYPHWIDTHBYTES(pci : longint) : longint;  

  function GLYPHWIDTHPADDED(bc : longint) : longint;  

  function BYTES_PER_ROW(bits,nbytes : longint) : longint;  

  function BYTES_FOR_GLYPH(ci,pad : longint) : longint;  


  function FONT_MAX_ASCENT(pi : longint) : longint;  

  function FONT_MAX_DESCENT(pi : longint) : longint;  

  function FONT_MAX_HEIGHT(pi : longint) : longint;  

  function FONT_MIN_LEFT(pi : longint) : longint;  

  function FONT_MAX_RIGHT(pi : longint) : longint;  

  function FONT_MAX_WIDTH(pi : longint) : longint;  

{$include "fontproto.h"}
{$endif}


implementation

  function noOverlap(var a : _FontInfo) : dword;
    begin
      noOverlap:=(a.flag0 and bm__FontInfo_noOverlap) shr bp__FontInfo_noOverlap;
    end;

  procedure set_noOverlap(var a : _FontInfo; __noOverlap : dword);
    begin
      a.flag0:=a.flag0 or ((__noOverlap shl bp__FontInfo_noOverlap) and bm__FontInfo_noOverlap);
    end;

  function terminalFont(var a : _FontInfo) : dword;
    begin
      terminalFont:=(a.flag0 and bm__FontInfo_terminalFont) shr bp__FontInfo_terminalFont;
    end;

  procedure set_terminalFont(var a : _FontInfo; __terminalFont : dword);
    begin
      a.flag0:=a.flag0 or ((__terminalFont shl bp__FontInfo_terminalFont) and bm__FontInfo_terminalFont);
    end;

  function constantMetrics(var a : _FontInfo) : dword;
    begin
      constantMetrics:=(a.flag0 and bm__FontInfo_constantMetrics) shr bp__FontInfo_constantMetrics;
    end;

  procedure set_constantMetrics(var a : _FontInfo; __constantMetrics : dword);
    begin
      a.flag0:=a.flag0 or ((__constantMetrics shl bp__FontInfo_constantMetrics) and bm__FontInfo_constantMetrics);
    end;

  function constantWidth(var a : _FontInfo) : dword;
    begin
      constantWidth:=(a.flag0 and bm__FontInfo_constantWidth) shr bp__FontInfo_constantWidth;
    end;

  procedure set_constantWidth(var a : _FontInfo; __constantWidth : dword);
    begin
      a.flag0:=a.flag0 or ((__constantWidth shl bp__FontInfo_constantWidth) and bm__FontInfo_constantWidth);
    end;

  function inkInside(var a : _FontInfo) : dword;
    begin
      inkInside:=(a.flag0 and bm__FontInfo_inkInside) shr bp__FontInfo_inkInside;
    end;

  procedure set_inkInside(var a : _FontInfo; __inkInside : dword);
    begin
      a.flag0:=a.flag0 or ((__inkInside shl bp__FontInfo_inkInside) and bm__FontInfo_inkInside);
    end;

  function inkMetrics(var a : _FontInfo) : dword;
    begin
      inkMetrics:=(a.flag0 and bm__FontInfo_inkMetrics) shr bp__FontInfo_inkMetrics;
    end;

  procedure set_inkMetrics(var a : _FontInfo; __inkMetrics : dword);
    begin
      a.flag0:=a.flag0 or ((__inkMetrics shl bp__FontInfo_inkMetrics) and bm__FontInfo_inkMetrics);
    end;

  function allExist(var a : _FontInfo) : dword;
    begin
      allExist:=(a.flag0 and bm__FontInfo_allExist) shr bp__FontInfo_allExist;
    end;

  procedure set_allExist(var a : _FontInfo; __allExist : dword);
    begin
      a.flag0:=a.flag0 or ((__allExist shl bp__FontInfo_allExist) and bm__FontInfo_allExist);
    end;

  function drawDirection(var a : _FontInfo) : dword;
    begin
      drawDirection:=(a.flag0 and bm__FontInfo_drawDirection) shr bp__FontInfo_drawDirection;
    end;

  procedure set_drawDirection(var a : _FontInfo; __drawDirection : dword);
    begin
      a.flag0:=a.flag0 or ((__drawDirection shl bp__FontInfo_drawDirection) and bm__FontInfo_drawDirection);
    end;

  function cachable(var a : _FontInfo) : dword;
    begin
      cachable:=(a.flag0 and bm__FontInfo_cachable) shr bp__FontInfo_cachable;
    end;

  procedure set_cachable(var a : _FontInfo; __cachable : dword);
    begin
      a.flag0:=a.flag0 or ((__cachable shl bp__FontInfo_cachable) and bm__FontInfo_cachable);
    end;

  function anamorphic(var a : _FontInfo) : dword;
    begin
      anamorphic:=(a.flag0 and bm__FontInfo_anamorphic) shr bp__FontInfo_anamorphic;
    end;

  procedure set_anamorphic(var a : _FontInfo; __anamorphic : dword);
    begin
      a.flag0:=a.flag0 or ((__anamorphic shl bp__FontInfo_anamorphic) and bm__FontInfo_anamorphic);
    end;

  function FontGetPrivate(pFont,n : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if pFont^.maxPrivate then
      if_local1:=pointer(0)
    else
      if_local1:=pFont^.(devPrivates[n]);
    FontGetPrivate:=n>(if_local1);
  end;

    function GLYPHWIDTHPIXELS(pci : longint) : longint;
    begin
      GLYPHWIDTHPIXELS:=(pci^.(metrics.rightSideBearing))-(pci^.(metrics.leftSideBearing));
    end;

  function GLYPHHEIGHTPIXELS(pci : longint) : longint;
  begin
    GLYPHHEIGHTPIXELS:=(pci^.(metrics.ascent))+(pci^.(metrics.descent));
  end;

  function GLYPHWIDTHBYTES(pci : longint) : longint;
  begin
    GLYPHWIDTHBYTES:=((GLYPHWIDTHPIXELS(pci))+7) shr 3;
  end;

  function GLYPHWIDTHPADDED(bc : longint) : longint;
  begin
    GLYPHWIDTHPADDED:=(bc(+(7))) and ( not ($7));
  end;

  function BYTES_PER_ROW(bits,nbytes : longint) : longint;
  var
     if_local1, if_local2, if_local3, if_local4 : longint;
  (* result types are not known *)
  begin
    if 1 then
      if_local1:=(bits(+(7))) shr 3
    else
      if_local1:=nbytes;
    if 2 then
      if_local2:=((bits(+(15))) shr 3) and ( not (1))
    else
      if_local2:=nbytes;
    if 4 then
      if_local3:=((bits(+(31))) shr 3) and ( not (3))
    else
      if_local3:=nbytes;
    if 8 then
      if_local4:=((bits(+(63))) shr 3) and ( not (7))
    else
      if_local4:=0;
    BYTES_PER_ROW:=(((nbytes=(if_local1))=(if_local2))=(if_local3))=(if_local4);
  end;

  function BYTES_FOR_GLYPH(ci,pad : longint) : longint;
  begin
    BYTES_FOR_GLYPH:=(GLYPHHEIGHTPIXELS(ci))*(BYTES_PER_ROW(GLYPHWIDTHPIXELS(ci),pad));
  end;

  function FONT_MAX_ASCENT(pi : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if pi^.(ink_maxbounds.ascent) then
      if_local1:=pi^.fontAscent
    else
      if_local1:=pi^.(ink_maxbounds.ascent);
    FONT_MAX_ASCENT:=(pi^.fontAscent)>(if_local1);
  end;

  function FONT_MAX_DESCENT(pi : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if pi^.(ink_maxbounds.descent) then
      if_local1:=pi^.fontDescent
    else
      if_local1:=pi^.(ink_maxbounds.descent);
    FONT_MAX_DESCENT:=(pi^.fontDescent)>(if_local1);
  end;

  function FONT_MAX_HEIGHT(pi : longint) : longint;
  begin
    FONT_MAX_HEIGHT:=(FONT_MAX_ASCENT(pi))+(FONT_MAX_DESCENT(pi));
  end;

  function FONT_MIN_LEFT(pi : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if 0 then
      if_local1:=pi^.(ink_minbounds.leftSideBearing)
    else
      if_local1:=0;
    FONT_MIN_LEFT:=(pi^.(ink_minbounds.leftSideBearing))<(if_local1);
  end;

  function FONT_MAX_RIGHT(pi : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if pi^.(ink_maxbounds.characterWidth) then
      if_local1:=pi^.(ink_maxbounds.rightSideBearing)
    else
      if_local1:=pi^.(ink_maxbounds.characterWidth);
    FONT_MAX_RIGHT:=(pi^.(ink_maxbounds.rightSideBearing))>(if_local1);
  end;

  function FONT_MAX_WIDTH(pi : longint) : longint;
  begin
    FONT_MAX_WIDTH:=(FONT_MAX_RIGHT(pi))-(FONT_MIN_LEFT(pi));
  end;


end.