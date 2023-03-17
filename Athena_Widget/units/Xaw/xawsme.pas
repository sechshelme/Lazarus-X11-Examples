unit XawSme;

interface

uses
  xlib,x,
  XTIntrinsic,
  XawSimple;

const
  libXaw = 'libXaw.so';


//{$include <X11/Intrinsic.h>}
//{$include <X11/RectObj.h>}
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 callback            Callback		Pointer		NULL
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	0
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }

const
  XtCInternational = 'International';  

const
  XtNinternational = 'international';  

  var
    smeObjectClass : TWidgetClass;cvar;external libXaw;

    //type
    //  PSmeObjectClass = ^TSmeObjectClass;
    //  TSmeObjectClass = PSmeClassRec;
    //
    //  PSmeObject = ^TSmeObject;
    //  TSmeObject = PSmeRec;

implementation

end.
