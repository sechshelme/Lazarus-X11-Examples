
unit Scrollbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Scrollbar.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Scrollbar.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Scrollbar.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _Scrollbar_h}
{$define _Scrollbar_h}  

{$include <X11/Xmu/Converters.h>}
{$include <X11/Xfuncproto.h>}



  const
    XtCMinimumThumb = 'MinimumThumb';    
    XtCShown = 'Shown';    
    XtCTopOfThumb = 'TopOfThumb';    
    XtCPickTop = 'PickTop';    
    XtNminimumThumb = 'minimumThumb';    
    XtNtopOfThumb = 'topOfThumb';    
    XtNpickTop = 'pickTop';    

  type
    ScrollbarWidget = ^_ScrollbarRec;

    ScrollbarWidgetClass = ^_ScrollbarClassRec;

    var
      scrollbarWidgetClass : WidgetClass;cvar;external;
(* error 
extern void XawScrollbarSetThumb(
{$if NeedFunctionPrototypes}
{$if NeedWidePrototypes}

{$else}

{$endif}
{$endif}
in declaration at line 142 *)
{$endif}

(* error 
#endif /* _Scrollbar_h */

implementation


end.
