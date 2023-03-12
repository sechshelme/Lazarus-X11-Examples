unit XawDialog;

interface

uses
  x, xlib,
  X11Intrinsic;

const
  libXaw = 'libXaw.so';

  {// $include <X11/Xaw/Form.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 borderColor	     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	computed at create
 icon		     Icon		Pixmap		0
 label		     Label		String		NULL
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 sensitive	     Sensitive		Boolean		True
 value		     Value		String		NULL
 width		     Width		Dimension	computed at create
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtCIcon = 'Icon';  
  XtNicon = 'icon';  
  var
    dialogWidgetClass : TWidgetClass;cvar;external libXaw;
(* Const before type ignored *)

procedure XawDialogAddButton(dialog:TWidget; name:Pchar; _function:TXtCallbackProc; client_data:TXtPointer);cdecl;external libXaw;
function XawDialogGetValueString(w:TWidget):Pchar;cdecl;external libXaw;

//type
//  PDialogWidgetClass = ^TDialogWidgetClass;
//  TDialogWidgetClass = PDialogClassRec;
//
//  PDialogWidget = ^TDialogWidget;
//  TDialogWidget = PDialogRec;

implementation

end.
