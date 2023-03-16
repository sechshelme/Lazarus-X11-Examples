unit XawTextSink;

interface

uses
  x, xlib,
  X11Intrinsic,
  XawText  ;

const
  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Xaw/Text.h>}

{**********************************************************************
 *
 * TextSink Object
 *
 ********************************************************************** }
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 font                Font            XFontStruct *      XtDefaultFont
 foreground          Foreground      Pixel              XtDefaultForeground
 background          Background      Pixel              XtDefaultBackground
 cursorColor	     Color	      Pixel		XtDefaultForeground
 }
{ Class record constants  }
  var
    textSinkObjectClass : TWidgetClass;cvar;external libXaw;
type
  //PTextSinkObjectClass = ^TTextSinkObjectClass;
  //TTextSinkObjectClass = PTextSinkClassRec;
  //
  //PTextSinkObject = ^TTextSinkObject;
  //TTextSinkObject = PTextSinkRec;

  PXawTextInsertState = ^TXawTextInsertState;
  TXawTextInsertState =  Longint;
  Const
    XawisOn = 0;
    XawisOff = 1;

const
  XtNcursorColor = 'cursorColor';  

const
  XawNtextProperties = 'textProperties';  
  XawCTextProperties = 'TextProperties';  
  XawRTextProperties = 'XawTextProperties';  

  {
 * Public Functions
  }
{
 * Function:
 *	XawTextSinkDisplayText
 *
 * Parameters:
 *	w	  - the TextSink Object
 *	x	  - location to start drawing text
 *	y	  - ""
 *	pos1	  - location of starting and ending points in the text buffer
 *	pos2	  - ""
 *	highlight - highlight this text?
 *
 * Description:
 *	Stub function that in subclasses will display text.
 *
 * Note:
 *	  This function doesn't actually display anything, it is only a place
 *	holder.
  }

procedure XawTextSinkDisplayText(w:TWidget; x:TPosition; y:TPosition; pos1:TXawTextPosition; pos2:TXawTextPosition; 
            highlight:TBoolean);cdecl;external;
{
 * Function:
 *	XawTextSinkInsertCursor
 *
 * Parameters:
 *	w	- the TextSink Object.
 *	x	- location for the cursor.
 *	y	- ""
 *	state	- whether to turn the cursor on, or off
 *
 * Description:
 *	Places the InsertCursor.
 *
 * Note:
 *	  This function doesn't actually display anything, it is only a place
 *	holder.
  }
procedure XawTextSinkInsertCursor(w:TWidget; x:TPosition; y:TPosition; state:TXawTextInsertState);cdecl;external;
{
 * Function:
 *	XawTextSinkClearToBackground
 *
 * Parameters:
 *	w	- TextSink Object
 *	x	- location of area to clear
 *	y	- ""
 *	width	- size of area to clear
 *	height	- ""
 *
 * Description:
 *	Clears a region of the sink to the background color.
 *
 * Note:
 *	  This function doesn't actually display anything, it is only a place
 *	holder.
  }
procedure XawTextSinkClearToBackground(w:TWidget; x:TPosition; y:TPosition; width:TDimension; height:TDimension);cdecl;external;
{
 * Function:
 *	XawTextSinkFindPosition
 *
 * Parameters:
 *	w		- TextSink Object
 *	fromPos		- reference position
 *	fromX		- reference location
 *	width		- width of section to paint text
 *	stopAtWordBreak - returned position is a word break?
 *	resPos		- Position to return
 *	resWidth	- Width actually used
 *	resHeight	- Height actually used
 *
 * Description:
 *	Finds a position in the text.
  }
procedure XawTextSinkFindPosition(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; stopAtWordBreak:TBoolean;
            pos_return:PXawTextPosition; width_return:Plongint; height_return:Plongint);cdecl;external;
{
 * Function:
 *	XawTextSinkFindDistance
 *
 * Parameters:
 *	w		- TextSink Object
 *	fromPos		- starting Position
 *	fromX		- x location of starting Position
 *	toPos		- end Position
 *	resWidth	- Distance between fromPos and toPos
 *	resPos		- Actual toPos used
 *	resHeight	- Height required by this text
 *
 * Description:
 *	Find the Pixel Distance between two text Positions.
  }
procedure XawTextSinkFindDistance(w:TWidget; fromPos:TXawTextPosition; fromX:longint; toPos:TXawTextPosition; width_return:Plongint; 
            pos_return:PXawTextPosition; height_return:Plongint);cdecl;external;
{
 * Function:
 *	XawTextSinkResolve
 *
 * Parameters:
 *	w	- TextSink Object
 *	pos	- reference Position
 *	fromx	- reference Location
 *	width	- width to move
 *	resPos	- resulting position
 *
 * Description:
 *	Resolves a location to a position.
  }
procedure XawTextSinkResolve(w:TWidget; fromPos:TXawTextPosition; fromX:longint; width:longint; pos_return:PXawTextPosition);cdecl;external;
{
 * Function:
 *	XawTextSinkMaxLines
 *
 * Parameters:
 *	w	- TextSink Object
 *	height	- height to fit lines into
 *
 * Returns:
 *	Number of lines that will fit
 *
 * Description:
 *	Finds the Maximum number of lines that will fit in a given height.
  }
function XawTextSinkMaxLines(w:TWidget; height:TDimension):longint;cdecl;external;
{
 * Function:
 *	XawTextSinkMaxHeight
 *
 * Parameters:
 *	w	- TextSink Object
 *	lines	- number of lines
 *
 * Returns:
 *	Height
 *
 * Description:
 *	Finds the Minimum height that will contain a given number lines.
  }
function XawTextSinkMaxHeight(w:TWidget; lines:longint):longint;cdecl;external;
{
 * Function:
 *	XawTextSinkSetTabs
 *
 * Parameters:
 *	w		- TextSink Object
 *	tab_count	- number of tabs in the list
 *	tabs		- text positions of the tabs
 * Description:
 *	Sets the Tab stops.
  }
procedure XawTextSinkSetTabs(w:TWidget; tab_count:longint; tabs:Plongint);cdecl;external;
{
 * Function:
 *	XawTextSinkGetCursorBounds
 *
 * Parameters:
 *	w	- TextSink Object
 *	rect	- X rectance containing the cursor bounds
 * Description:
 *	Finds the bounding box for the insert curor (caret).
  }
procedure XawTextSinkGetCursorBounds(w:TWidget; rect_return:PXRectangle);cdecl;external;

implementation

end.
