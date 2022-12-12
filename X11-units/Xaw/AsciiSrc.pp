
unit AsciiSrc;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/AsciiSrc.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/AsciiSrc.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/AsciiSrc.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawAsciiSrc_h}
{$define _XawAsciiSrc_h}  
{$include <X11/Xaw/TextSrc.h>}


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
void XawAsciiSourceFreeString
in declaration at line 112 *)


    function XawAsciiSave(w:Widget):Bool;


(* error 
 _Xconst char	*name
 in declarator_list *)

    function XawAsciiSourceChanged(w:Widget):Bool;

{$endif}

(* error 
#endif /* _XawAsciiSrc_h */

implementation

    function XawAsciiSave(w:Widget):Bool;
    begin
      { You must implement this function }
    end;
    function XawAsciiSourceChanged(w:Widget):Bool;
    begin
      { You must implement this function }
    end;

end.
