unit XawGrip;

interface

uses
  xlib,x,
  X11Intrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';


// {$include <X11/Xaw/Simple.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 foreground	     Foreground		Pixel		XtDefaultForeground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	0
 callback	     Callback		Pointer		GripAction
 cursor		     Cursor		Cursor		None
 cursorName	     Cursor		String		NULL
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	8
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 pointerColor	     Foreground		Pixel		XtDefaultForeground
 pointerColorBackground Background	Pixel		XtDefaultBackground
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	8
 x		     Position		Position	0
 y		     Position		Position	0

 }
const
  XtNgripTranslations = 'gripTranslations';
{ the event causing the GripAction  }
{ the TranslationTable params  }
{ count of params  }
type
  PXawGripCallData = ^TXawGripCallData;
  TXawGripCallData = record
    event: PXEvent;
    params: PString;
    num_params: TCardinal;
  end;

  TXawGripCallDataRec = TXawGripCallData;
  PXawGripCallDataRec = ^TXawGripCallDataRec;
  TGripCallDataRec = TXawGripCallData;
  PGripCallDataRec = ^TGripCallDataRec;
  TGripCallData = PXawGripCallData;
  PGripCallData = ^TGripCallData;
{ supported for R4 compatibility  }
{ Class Record Constant  }
var
    gripWidgetClass : TWidgetClass;cvar;external libXaw;
//type
//  PGripWidgetClass = ^TGripWidgetClass;
//  TGripWidgetClass = PGripClassRec;
//
//  PGripWidget = ^TGripWidget;
//  TGripWidget = PGripRec;

implementation

end.
