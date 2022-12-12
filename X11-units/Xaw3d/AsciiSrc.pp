
unit AsciiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/AsciiSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/AsciiSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/AsciiSrc.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawAsciiSrc_h}
{$define _XawAsciiSrc_h}  
{$include <X11/Xaw3d/TextSrc.h>}



    var
      asciiSrcObjectClass : WidgetClass;cvar;external;

  type
    AsciiSrcObjectClass = ^_AsciiSrcClassRec;

    AsciiSrcObject = ^_AsciiSrcRec;


  const
    AsciiSourceObjectClass = AsciiSrcObjectClass;    
    AsciiSourceObject = AsciiSrcObject;    

    XtCDataCompression = 'DataCompression';    
    XtCPieceSize = 'PieceSize';    
    XtCType = 'Type';    
    XtCUseStringInPlace = 'UseStringInPlace';    
    XtNdataCompression = 'dataCompression';    
    XtNpieceSize = 'pieceSize';    
    XtNtype = 'type';    
    XtNuseStringInPlace = 'useStringInPlace';    
    XtRAsciiType = 'AsciiType';    
    XtEstring = 'string';    
    XtEfile = 'file';    

  type
    XawAsciiType = (XawAsciiFile,XawAsciiString);


(* error 
extern void XawAsciiSourceFreeString(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 119 *)

{$if NeedFunctionPrototypes}

{$endif}

    function XawAsciiSave(_para1:Widget):Boolean;cdecl;


{$if NeedFunctionPrototypes}
(* error 
    _Xconst char*	/* name */

{$endif}
 in declarator_list *)

{$if NeedFunctionPrototypes}

{$endif}

    function XawAsciiSourceChanged(_para1:Widget):Boolean;cdecl;

{$endif}

(* error 


implementation


end.
