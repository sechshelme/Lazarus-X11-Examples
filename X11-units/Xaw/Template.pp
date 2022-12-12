
unit Template;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Template.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Template.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Template.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Template_h}
{$define _Template_h}  
{$include <X11/Intrinsic.h>}




  const
    XtNtemplateResource = 'templateResource';    
    XtCTemplateResource = 'TemplateResource';    


  type
    TemplateWidgetClass = ^_TemplateClassRec;

    TemplateWidget = ^_TemplateRec;


    var
      templateWidgetClass : WidgetClass;cvar;external;
{$endif}


implementation


end.
