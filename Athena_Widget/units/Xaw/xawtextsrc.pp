unit XawTextSrc;

interface

uses
  x, xlib,
  X11Intrinsic,
  XawText;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Xaw/Text.h>}

{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback	     Callback		Callback	NULL
 editType	     EditType		XawTextEditType	XawtextRead
 enableUndo	     Undo		Boolean		False
 sourceChanged	     Changed		Boolean		False

 }
{ Class record constants  }
  var
    textSrcObjectClass : TWidgetClass;cvar;external libXaw;
type
  //PTextSrcObjectClass = ^TTextSrcObjectClass;
  //TTextSrcObjectClass = PTextSrcClassRec;
  //
  //PTextSrcObject = ^TTextSrcObject;
  //TTextSrcObject = PTextSrcRec;

  PXawTextScanType = ^TXawTextScanType;
  TXawTextScanType =  Longint;
  Const
    XawstPositions = 0;
    XawstWhiteSpace = 1;
    XawstEOL = 2;
    XawstParagraph = 3;
    XawstAll = 4;
    XawstAlphaNumeric = 5;

type
  PhighlightType = ^ThighlightType;
  ThighlightType =  Longint;
  Const
    Normal = 0;
    Selected = 1;

type
  PXawTextSelectionMode = ^TXawTextSelectionMode;
  TXawTextSelectionMode =  Longint;
  Const
    XawsmTextSelect = 0;
    XawsmTextExtend = 1;

type
  PXawTextSelectionAction = ^TXawTextSelectionAction;
  TXawTextSelectionAction =  Longint;
  Const
    XawactionStart = 0;
    XawactionAdjust = 1;
    XawactionEnd = 2;

  XawTextReadError = -(1);  
  XawTextScanError = -(1);  

  const
  XtNenableUndo = 'enableUndo';  
  XtCUndo = 'Undo';  
  XtNsourceChanged = 'sourceChanged';  
  XtCChanged = 'Changed';  
  XtNpropertyCallback = 'propertyCallback';  
{
 * Public Functions
  }
{
 * Function:
 *	XawTextSourceRead
 *
 * Parameters:
 *	w      - TextSrc Object
 *	pos    - position of the text to retrieve
 *	text   - text block that will contain returned text
 *	length - maximum number of characters to read
 *
 * Description:
 *	This function reads the source.
 *
 * Returns:
 *	The number of characters read into the buffer
  }

function XawTextSourceRead(w:TWidget; pos:TXawTextPosition; text_return:PXawTextBlock; length:longint):TXawTextPosition;cdecl;external libXaw;
{
 * Function:
 *	XawTextSourceReplace
 *
 * Parameters:
 *	src	 - Text Source Object
 *	startPos - ends of text that will be removed
 *	endPos	 - ""
 *	text	 - new text to be inserted into buffer at startPos
 *
 * Description:
 *	Replaces a block of text with new text
 *
 * Returns:
 *	XawEditError or XawEditDone
  }
function XawTextSourceReplace(w:TWidget; start:TXawTextPosition; end_:TXawTextPosition; text:PXawTextBlock):longint;cdecl;external libXaw;
{
 * Function:
 *	XawTextSourceScan
 *
 * Parameters:
 *	w	 - TextSrc Object
 *	position - position to start scanning
 *	type	 - type of thing to scan for
 *	dir	 - direction to scan
 *	count	 - which occurrence if this thing to search for
 *	include	 - whether or not to include the character found in
 *		   the position that is returned.
 *
 * Description:
 *	Scans the text source for the number and type of item specified.
 *
 * Returns:
 *	The position of the text
  }
function XawTextSourceScan(w:TWidget; position:TXawTextPosition; _type:TXawTextScanType; dir:TXawTextScanDirection; count:longint;
           include:TBoolean):TXawTextPosition;cdecl;external libXaw;
{
 * Function:
 *	XawTextSourceSearch
 *
 * Parameters:
 *	w	 - TextSource Object
 *	position - position to start scanning
 *	dir	 - direction to search
 *	text	 - the text block to search for
 *
 * Description:
 *	Searches the text source for the text block passed.
 *
 * Returns:
 *	The position of the text we are searching for or XawTextSearchError
  }

function XawTextSourceSearch(w:TWidget; position:TXawTextPosition; dir:longint; dir_:TXawTextScanDirection; text:PXawTextBlock):TXawTextPosition;cdecl;external libXaw;
{
 * Function:
 *	XawTextSourceConvertSelection
 *
 * Parameters:
 *	w	  - TextSrc object
 *	selection - current selection atom
 *	target	  - current target atom
 *	type	  - type to convert the selection to
 *	value	  - return value that has been converted
 *	length	  - ""
 *	format	  - format of the returned value
 *
 * Returns:
 *	True if the selection has been converted
  }
function XawTextSourceConvertSelection(w:TWidget; selection:PAtom; target:PAtom; _type:PAtom; value_return:PXtPointer; 
           length_return:Pdword; format_return:Plongint):TBoolean;cdecl;external libXaw;
{
 * Function:
 *	XawTextSourceSetSelection
 *
 * Parameters:
 *	w	  - TextSrc object
 *	left	  - bounds of the selection
 *	right	  - ""
 *	selection - selection atom
 *
 * Description:
 *	Allows special setting of the selection.
  }
procedure XawTextSourceSetSelection(w:TWidget; start:TXawTextPosition; end_:TXawTextPosition; selection:TAtom);cdecl;external libXaw;

implementation

end.
