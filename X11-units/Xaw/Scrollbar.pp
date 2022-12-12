
unit Scrollbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Scrollbar.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Scrollbar.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Scrollbar.pp
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
    XtNminimumThumb = 'minimumThumb';    
    XtNtopOfThumb = 'topOfThumb';    

  type
    ScrollbarWidget = ^_ScrollbarRec;

    ScrollbarWidgetClass = ^_ScrollbarClassRec;

    var
      scrollbarWidgetClass : WidgetClass;cvar;external;
(* error 
void XawScrollbarSetThumb
{$if NeedWidePrototypes}
{$else}
{$endif}
in declaration at line 129 *)
{$endif}

(* error 
#endif /* _Scrollbar_h */

implementation


end.
