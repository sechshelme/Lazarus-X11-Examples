
unit Xcms;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xcms.h
  The following command line parameters were used:
    /usr/include/X11/Xcms.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xcms.pp
}

    Type
    PBool  = ^Bool;
    Pchar  = ^char;
    PDisplay  = ^Display;
    PVisual  = ^Visual;
    PXcmsColor  = ^XcmsColor;
    PXcmsFunctionSet  = ^XcmsFunctionSet;
    PXcmsPerScrnInfo  = ^XcmsPerScrnInfo;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XCMS_H_}
{$define _X11_XCMS_H_}  
{$include <X11/Xlib.h>}

{$ifdef __clang__}
{$endif}


  const
    XcmsFailure = 0;    
    XcmsSuccess = 1;    
    XcmsSuccessWithCompression = 2;    


  function XcmsUndefinedFormat : XcmsColorFormat;    

  function XcmsCIEXYZFormat : XcmsColorFormat;    

  function XcmsCIEuvYFormat : XcmsColorFormat;    

  function XcmsCIExyYFormat : XcmsColorFormat;    

  function XcmsCIELabFormat : XcmsColorFormat;    

  function XcmsCIELuvFormat : XcmsColorFormat;    

  function XcmsTekHVCFormat : XcmsColorFormat;    

  function XcmsRGBFormat : XcmsColorFormat;    

  function XcmsRGBiFormat : XcmsColorFormat;    



  const
    XcmsInitNone = $00;    

    XcmsInitSuccess = $01;    

    XcmsInitFailure = $ff;    

  function DisplayOfCCC(ccc : longint) : longint;  

  function ScreenNumberOfCCC(ccc : longint) : longint;  

  function VisualOfCCC(ccc : longint) : longint;  

  function ClientWhitePointOfCCC(ccc : longint) : longint;  

  function ScreenWhitePointOfCCC(ccc : longint) : longint;  

  function FunctionSetOfCCC(ccc : longint) : longint;  


  type
    XcmsColorFormat = dword;


    XcmsFloat = double;





    XcmsRGB = record
        red : word;
        green : word;
        blue : word;
      end;





    XcmsRGBi = record
        red : XcmsFloat;
        green : XcmsFloat;
        blue : XcmsFloat;
      end;


    XcmsCIEXYZ = record
        X : XcmsFloat;
        Y : XcmsFloat;
        Z : XcmsFloat;
      end;





    XcmsCIEuvY = record
        u_prime : XcmsFloat;
        v_prime : XcmsFloat;
        Y : XcmsFloat;
      end;





    XcmsCIExyY = record
        x : XcmsFloat;
        y : XcmsFloat;
        Y : XcmsFloat;
      end;



    XcmsCIELab = record
        L_star : XcmsFloat;
        a_star : XcmsFloat;
        b_star : XcmsFloat;
      end;



    XcmsCIELuv = record
        L_star : XcmsFloat;
        u_star : XcmsFloat;
        v_star : XcmsFloat;
      end;





    XcmsTekHVC = record
        H : XcmsFloat;
        V : XcmsFloat;
        C : XcmsFloat;
      end;


    XcmsPad = record
        pad0 : XcmsFloat;
        pad1 : XcmsFloat;
        pad2 : XcmsFloat;
        pad3 : XcmsFloat;
      end;





    XcmsColor = record
        spec : record
            case longint of
              0 : ( RGB : XcmsRGB );
              1 : ( RGBi : XcmsRGBi );
              2 : ( CIEXYZ : XcmsCIEXYZ );
              3 : ( CIEuvY : XcmsCIEuvY );
              4 : ( CIExyY : XcmsCIExyY );
              5 : ( CIELab : XcmsCIELab );
              6 : ( CIELuv : XcmsCIELuv );
              7 : ( TekHVC : XcmsTekHVC );
              8 : ( Pad : XcmsPad );
            end;
        pixel : dword;
        format : XcmsColorFormat;
      end;








    _XcmsPerScrnInfo = record
        screenWhitePt : XcmsColor;
        functionSet : XPointer;
        screenData : XPointer;
        state : byte;
        pad : array[0..2] of char;
      end;
    XcmsPerScrnInfo = _XcmsPerScrnInfo;

    XcmsCCC = ^_XcmsCCC;



    XcmsCompressionProc = function (_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;



    XcmsWhiteAdjustProc = function (_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:XcmsColorFormat; _para5:PXcmsColor; 
                 _para6:dword; _para7:PBool):Status;cdecl;













    _XcmsCCC = record
        dpy : ^Display;
        screenNumber : longint;
        visual : ^Visual;
        clientWhitePt : XcmsColor;
        gamutCompProc : XcmsCompressionProc;
        gamutCompClientData : XPointer;
        whitePtAdjProc : XcmsWhiteAdjustProc;
        whitePtAdjClientData : XPointer;
        pPerScrnInfo : ^XcmsPerScrnInfo;
      end;
    XcmsCCCRec = _XcmsCCC;



    XcmsScreenInitProc = function (_para1:PDisplay; _para2:longint; _para3:PXcmsPerScrnInfo):Status;cdecl;


    XcmsScreenFreeProc = procedure (_para1:XPointer);cdecl;





    XcmsDDConversionProc = function (_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:PBool):Status;cdecl;



    XcmsDIConversionProc = function (_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;

    XcmsConversionProc = XcmsDIConversionProc;

    XcmsFuncListPtr = ^XcmsConversionProc;



    XcmsParseStringProc = function (_para1:Pchar; _para2:PXcmsColor):longint;cdecl;























    _XcmsColorSpace = record
        prefix : ^char;
        id : XcmsColorFormat;
        parseString : XcmsParseStringProc;
        to_CIEXYZ : XcmsFuncListPtr;
        from_CIEXYZ : XcmsFuncListPtr;
        inverse_flag : longint;
      end;
    XcmsColorSpace = _XcmsColorSpace;











    _XcmsFunctionSet = record
        DDColorSpaces : ^^XcmsColorSpace;
        screenInitProc : XcmsScreenInitProc;
        screenFreeProc : XcmsScreenFreeProc;
      end;
    XcmsFunctionSet = _XcmsFunctionSet;
(* error 
extern Status XcmsAddColorSpace (

in declaration at line 347 *)


    function XcmsAddFunctionSet(_para1:PXcmsFunctionSet):Status;cdecl;


    function XcmsAllocColor(_para1:PDisplay; _para2:Colormap; _para3:PXcmsColor; _para4:XcmsColorFormat):Status;cdecl;

(* error 
    _Xconst char*	/* color_string */,
(* error 
    XcmsColor*		/* color_scrn_return */,
(* error 
    XcmsColor*		/* color_exact_return */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XcmsCCCOfColormap(_para1:PDisplay; _para2:Colormap):XcmsCCC;cdecl;


    function XcmsCIELabClipab(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELabClipL(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELabClipLab(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELabQueryMaxC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELabQueryMaxL(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELabQueryMaxLC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:PXcmsColor):Status;cdecl;


    function XcmsCIELabQueryMinL(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELabToCIEXYZ(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIELabWhiteShiftColors(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:XcmsColorFormat; _para5:PXcmsColor; 
               _para6:dword; _para7:PBool):Status;cdecl;


    function XcmsCIELuvClipL(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELuvClipLuv(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELuvClipuv(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsCIELuvQueryMaxC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELuvQueryMaxL(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELuvQueryMaxLC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:PXcmsColor):Status;cdecl;


    function XcmsCIELuvQueryMinL(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsCIELuvToCIEuvY(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIELuvWhiteShiftColors(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:XcmsColorFormat; _para5:PXcmsColor; 
               _para6:dword; _para7:PBool):Status;cdecl;


    function XcmsCIEXYZToCIELab(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIEXYZToCIEuvY(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIEXYZToCIExyY(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIEXYZToRGBi(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:PBool):Status;cdecl;


    function XcmsCIEuvYToCIELuv(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIEuvYToCIEXYZ(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIEuvYToTekHVC(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsCIExyYToCIEXYZ(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsClientWhitePointOfCCC(_para1:XcmsCCC):^XcmsColor;cdecl;


    function XcmsConvertColors(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:XcmsColorFormat; _para5:PBool):Status;cdecl;


    function XcmsCreateCCC(_para1:PDisplay; _para2:longint; _para3:PVisual; _para4:PXcmsColor; _para5:XcmsCompressionProc; 
               _para6:XPointer; _para7:XcmsWhiteAdjustProc; _para8:XPointer):XcmsCCC;cdecl;


    function XcmsDefaultCCC(_para1:PDisplay; _para2:longint):XcmsCCC;cdecl;


    function XcmsDisplayOfCCC(_para1:XcmsCCC):^Display;cdecl;


    function XcmsFormatOfPrefix(_para1:Pchar):XcmsColorFormat;cdecl;


    procedure XcmsFreeCCC(_para1:XcmsCCC);cdecl;

(* error 
    _Xconst char*	/* color_string */,
(* error 
    XcmsColor*		/* pColor_exact_in_out */,
(* error 
    XcmsColor*		/* pColor_scrn_in_out */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

    function XcmsPrefixOfFormat(_para1:XcmsColorFormat):^char;cdecl;


    function XcmsQueryBlack(_para1:XcmsCCC; _para2:XcmsColorFormat; _para3:PXcmsColor):Status;cdecl;


    function XcmsQueryBlue(_para1:XcmsCCC; _para2:XcmsColorFormat; _para3:PXcmsColor):Status;cdecl;


    function XcmsQueryColor(_para1:PDisplay; _para2:Colormap; _para3:PXcmsColor; _para4:XcmsColorFormat):Status;cdecl;


    function XcmsQueryColors(_para1:PDisplay; _para2:Colormap; _para3:PXcmsColor; _para4:dword; _para5:XcmsColorFormat):Status;cdecl;


    function XcmsQueryGreen(_para1:XcmsCCC; _para2:XcmsColorFormat; _para3:PXcmsColor):Status;cdecl;


    function XcmsQueryRed(_para1:XcmsCCC; _para2:XcmsColorFormat; _para3:PXcmsColor):Status;cdecl;


    function XcmsQueryWhite(_para1:XcmsCCC; _para2:XcmsColorFormat; _para3:PXcmsColor):Status;cdecl;


    function XcmsRGBiToCIEXYZ(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:PBool):Status;cdecl;


    function XcmsRGBiToRGB(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:PBool):Status;cdecl;


    function XcmsRGBToRGBi(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:PBool):Status;cdecl;


    function XcmsScreenNumberOfCCC(_para1:XcmsCCC):longint;cdecl;


    function XcmsScreenWhitePointOfCCC(_para1:XcmsCCC):^XcmsColor;cdecl;


    function XcmsSetCCCOfColormap(_para1:PDisplay; _para2:Colormap; _para3:XcmsCCC):XcmsCCC;cdecl;


    function XcmsSetCompressionProc(_para1:XcmsCCC; _para2:XcmsCompressionProc; _para3:XPointer):XcmsCompressionProc;cdecl;


    function XcmsSetWhiteAdjustProc(_para1:XcmsCCC; _para2:XcmsWhiteAdjustProc; _para3:XPointer):XcmsWhiteAdjustProc;cdecl;


    function XcmsSetWhitePoint(_para1:XcmsCCC; _para2:PXcmsColor):Status;cdecl;


    function XcmsStoreColor(_para1:PDisplay; _para2:Colormap; _para3:PXcmsColor):Status;cdecl;


    function XcmsStoreColors(_para1:PDisplay; _para2:Colormap; _para3:PXcmsColor; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsTekHVCClipC(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsTekHVCClipV(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsTekHVCClipVC(_para1:XcmsCCC; _para2:PXcmsColor; _para3:dword; _para4:dword; _para5:PBool):Status;cdecl;


    function XcmsTekHVCQueryMaxC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsTekHVCQueryMaxV(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsTekHVCQueryMaxVC(_para1:XcmsCCC; _para2:XcmsFloat; _para3:PXcmsColor):Status;cdecl;


    function XcmsTekHVCQueryMaxVSamples(_para1:XcmsCCC; _para2:XcmsFloat; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsTekHVCQueryMinV(_para1:XcmsCCC; _para2:XcmsFloat; _para3:XcmsFloat; _para4:PXcmsColor):Status;cdecl;


    function XcmsTekHVCToCIEuvY(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:dword):Status;cdecl;


    function XcmsTekHVCWhiteShiftColors(_para1:XcmsCCC; _para2:PXcmsColor; _para3:PXcmsColor; _para4:XcmsColorFormat; _para5:PXcmsColor; 
               _para6:dword; _para7:PBool):Status;cdecl;


    function XcmsVisualOfCCC(_para1:XcmsCCC):^Visual;cdecl;

{$ifdef __clang__}
{$endif}
{$endif}

(* error 
#endif /* _X11_XCMS_H_ */

implementation

  function XcmsUndefinedFormat : XcmsColorFormat;
    begin
      XcmsUndefinedFormat:=XcmsColorFormat($00000000);
    end;

  function XcmsCIEXYZFormat : XcmsColorFormat;
    begin
      XcmsCIEXYZFormat:=XcmsColorFormat($00000001);
    end;

  function XcmsCIEuvYFormat : XcmsColorFormat;
    begin
      XcmsCIEuvYFormat:=XcmsColorFormat($00000002);
    end;

  function XcmsCIExyYFormat : XcmsColorFormat;
    begin
      XcmsCIExyYFormat:=XcmsColorFormat($00000003);
    end;

  function XcmsCIELabFormat : XcmsColorFormat;
    begin
      XcmsCIELabFormat:=XcmsColorFormat($00000004);
    end;

  function XcmsCIELuvFormat : XcmsColorFormat;
    begin
      XcmsCIELuvFormat:=XcmsColorFormat($00000005);
    end;

  function XcmsTekHVCFormat : XcmsColorFormat;
    begin
      XcmsTekHVCFormat:=XcmsColorFormat($00000006);
    end;

  function XcmsRGBFormat : XcmsColorFormat;
    begin
      XcmsRGBFormat:=XcmsColorFormat($80000000);
    end;

  function XcmsRGBiFormat : XcmsColorFormat;
    begin
      XcmsRGBiFormat:=XcmsColorFormat($80000001);
    end;

  function DisplayOfCCC(ccc : longint) : longint;
  begin
    DisplayOfCCC:=ccc^.dpy;
  end;

  function ScreenNumberOfCCC(ccc : longint) : longint;
  begin
    ScreenNumberOfCCC:=ccc^.screenNumber;
  end;

  function VisualOfCCC(ccc : longint) : longint;
  begin
    VisualOfCCC:=ccc^.visual;
  end;

  function ClientWhitePointOfCCC(ccc : longint) : longint;
  begin
    ClientWhitePointOfCCC:=@(ccc^.clientWhitePt);
  end;

  function ScreenWhitePointOfCCC(ccc : longint) : longint;
  begin
    ScreenWhitePointOfCCC:=@(ccc^.(pPerScrnInfo^.screenWhitePt));
  end;

  function FunctionSetOfCCC(ccc : longint) : longint;
  begin
    FunctionSetOfCCC:=ccc^.(pPerScrnInfo^.functionSet);
  end;


end.
