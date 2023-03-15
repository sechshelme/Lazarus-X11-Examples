unit XawTemplate;

interface

uses
  x, xlib,
  X11Intrinsic;

const
  libXaw = 'libXaw.so';

  {$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <X11/Intrinsic.h>}
{***************************************************************
 *
 * Template widget
 *
 *************************************************************** }
{ Resources:

 Name		     Class		RepType		Default Value
 ----		     -----		-------		-------------
 background	     Background		Pixel		XtDefaultBackground
 border		     BorderColor	Pixel		XtDefaultForeground
 borderWidth	     BorderWidth	Dimension	1
 destroyCallback     Callback		Pointer		NULL
 height		     Height		Dimension	0
 mappedWhenManaged   MappedWhenManaged	Boolean		True
 sensitive	     Sensitive		Boolean		True
 width		     Width		Dimension	0
 x		     Position		Position	0
 y		     Position		Position	0

 }
{ define any special resource names here that are not in <X11/StringDefs.h>  }

const
  XtNtemplateResource = 'templateResource';  
  XtCTemplateResource = 'TemplateResource';  
{ declare specific TemplateWidget class and instance datatypes  }
{ declare the class constant  }
  var
    templateWidgetClass : TWidgetClass;cvar;external libXaw;

  //type
  //  PTemplateWidgetClass = ^TTemplateWidgetClass;
  //  TTemplateWidgetClass = PTemplateClassRec;
  //
  //  PTemplateWidget = ^TTemplateWidget;
  //  TTemplateWidget = PTemplateRec;

implementation

end.
