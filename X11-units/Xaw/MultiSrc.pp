
unit MultiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/MultiSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/MultiSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/MultiSrc.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawMultiSrc_h}
{$define _XawMultiSrc_h}  
{$include <X11/Xaw/TextSrc.h>}


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
void XawMultiSourceFreeString
in declaration at line 115 *)

    function _XawMultiSave(w:Widget):Bool;

(* error 
 _Xconst char		*name
 in declarator_list *)
{$endif}

(* error 
#endif /* _XawMultiSrc_h  */

implementation

    function _XawMultiSave(w:Widget):Bool;
    begin
      { You must implement this function }
    end;

end.
