unit XawAsciiSrc;

interface

uses
  x, xlib,
  X11Intrinsic,
  xresource,
  X11Stringdefs;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{
 * AsciiSrc.h - Public Header file for Ascii Text Source.
 *
 * This is the public header file for the Ascii Text Source.
 * It is intended to be used with the Text widget, the simplest way to use
 * this text source is to use the AsciiText Object.
 *
 * Date:    June 29, 1989
 *
 * By:      Chris D. Peterson
 *          MIT X Consortium
 *          kit@expo.lcs.mit.edu
  }
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
    asciiSrcObjectClass : TWidgetClass;cvar;external libXaw;

//  type
//  PAsciiSrcObjectClass = ^TAsciiSrcObjectClass;
//  TAsciiSrcObjectClass = PAsciiSrcClassRec;
//
//  PAsciiSrcObject = ^TAsciiSrcObject;
//  TAsciiSrcObject = PAsciiSrcRec;
//
//const
//  AsciiSourceObjectClass = AsciiSrcObjectClass;  
//  AsciiSourceObject = AsciiSrcObject;  
{
 * Resource Definitions
  }
const
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
  PXawAsciiType = ^TXawAsciiType;
  TXawAsciiType =  Longint;
  Const
    XawAsciiFile = 0;
    XawAsciiString = 1;

{
 * Public routines
  }
{
 * Function:
 *	XawAsciiSourceFreeString
 *
 * Parameters:
 *	w - AsciiSrc object
 *
 * Description:
 *	  Frees the string returned by a get values call
 *		     on the string when the source is of type string.
  }

procedure XawAsciiSourceFreeString(w:TWidget);cdecl;external;
{
 * Function:
 *	XawAsciiSave
 *
 * Arguments:
 *	w - asciiSrc Object.
 *
 * Description:
 *	Saves all the pieces into a file or string as required.
 *
 * Returns:
 *	True if the save was successful
  }
function XawAsciiSave(w:TWidget):TBool;cdecl;external;
{
 * Function:
 *	XawAsciiSaveAsFile
 *
 * Parameters:
 *	w    - asciiSrc object
 *	name - name of the file to save this file into
 *
 * Description:
 *	Save the current buffer as a file.
 *
 * Returns:
 *	True if the save was successful
  }

function XawAsciiSaveAsFile(w:TWidget; name:Pchar):TBool;cdecl;external;
{
 * Function:
 *	XawAsciiSourceChanged
 *
 * Parameters:
 *	w - asciiSource object
 *
 * Description:
 *	Returns true if the source has changed since last saved.
 *
 * Returns:
 *	a Boolean (see description)
  }
function XawAsciiSourceChanged(w:TWidget):TBool;cdecl;external;

implementation

end.
