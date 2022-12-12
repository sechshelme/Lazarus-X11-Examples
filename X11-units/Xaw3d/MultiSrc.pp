
unit MultiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/MultiSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/MultiSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/MultiSrc.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _XawMultiSrc_h}
{$define _XawMultiSrc_h}  
{$include <X11/Xaw3d/TextSrc.h>}




    var
      multiSrcObjectClass : WidgetClass;cvar;external;

  type
    MultiSrcObjectClass = ^_MultiSrcClassRec;

    MultiSrcObject = ^_MultiSrcRec;


  const
    MultiSourceObjectClass = MultiSrcObjectClass;    
    MultiSourceObject = MultiSrcObject;    

    XtCDataCompression = 'DataCompression';    
    XtCPieceSize = 'PieceSize';    
    XtCType = 'Type';    
    XtCUseStringInPlace = 'UseStringInPlace';    
    XtNdataCompression = 'dataCompression';    
    XtNpieceSize = 'pieceSize';    
    XtNtype = 'type';    
    XtNuseStringInPlace = 'useStringInPlace';    
    XtRMultiType = 'MultiType';    
    XtEstring = 'string';    
    XtEfile = 'file';    

(* error 
extern void XawMultiSourceFreeString(
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 132 *)
{$if NeedFunctionPrototypes}

{$endif}

    function _XawMultiSave(_para1:Widget):Boolean;cdecl;

{$if NeedFunctionPrototypes}
(* error 
    _Xconst char*	/* name */

{$endif}
 in declarator_list *)
{$endif}

(* error 


implementation


end.
