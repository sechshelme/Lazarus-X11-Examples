
unit TemplateP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TemplateP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TemplateP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TemplateP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _TemplateP_h}
{$define _TemplateP_h}  
{$include <X11/Xaw3d/Template.h>}

{$include <X11/CoreP.h>}


  const
    XtRTemplateResource = 'TemplateResource';    

  type
    TemplateClassPart = record
        empty : longint;
      end;

    _TemplateClassRec = record
        core_class : CoreClassPart;
        template_class : TemplateClassPart;
      end;
    TemplateClassRec = _TemplateClassRec;

    var
      templateClassRec : TemplateClassRec;cvar;external;



  type
    TemplatePart = record
        resource : ^char;
      end;

    _TemplateRec = record
        core : CorePart;
        template : TemplatePart;
      end;
    TemplateRec = _TemplateRec;
{$endif}


implementation


end.
