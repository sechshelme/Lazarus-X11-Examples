unit XawMultiSrc;

interface

uses
  x, xlib,
  XTIntrinsic,
  XawText;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Xaw/TextSrc.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 dataCompression     DataCompression	Boolean		True
 length		     Length		int		(internal)
 pieceSize	     PieceSize		int		BUFSIZ
 string		     String		String		NULL
 type		     Type		XawAsciiType	XawAsciiString
 useStringInPlace    UseStringInPlace	Boolean		False

 }
  var
    multiSrcObjectClass : TWidgetClass;cvar;external libXaw;

//type
//  PMultiSrcObjectClass = ^TMultiSrcObjectClass;
//  TMultiSrcObjectClass = PMultiSrcClassRec;
//
//  PMultiSrcObject = ^TMultiSrcObject;
//  TMultiSrcObject = PMultiSrcRec;

const
//  MultiSourceObjectClass = MultiSrcObjectClass;  
//  MultiSourceObject = MultiSrcObject;  
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
{***********************************************************
 *
 * THESE ROUTINES ARE NOT PUBLIC: Source should call
 *
 * the AsciiSrc API which currently forwards requests here.
 *
 * future versions (like there's going to be an R7 Xaw!) may
 *
 * eliminate this file or at least these functions entirely.
 *
 *********************************************************** }

procedure XawMultiSourceFreeString(w:TWidget);cdecl;external libXaw;
function _XawMultiSave(w:TWidget):TBool;cdecl;external libXaw;
function _XawMultiSaveAsFile(w:TWidget; name:Pchar):TBool;cdecl;external libXaw;

implementation


end.
