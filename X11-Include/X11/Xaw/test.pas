
unit test;
interface

{
  Automatically converted by H2Pas 1.0.0 from Scrollbar.h
  The following command line parameters were used:
    Scrollbar.h
    -p
    -T
    -S
    -d
    -c
    -o
    test.pas
}




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
  TScrollbarWidget = ^TScrollbarRec;

  TScrollbarWidgetClass = ^TScrollbarClassRec;
  var
    scrollbarWidgetClass : TWidgetClass;cvar;external;
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
