
unit Scrollbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Scrollbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Scrollbar.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/Scrollbar.pp
}

    { Pointers to basic pascal types, inserted by h2pas conversion program.}
    Type
      PLongint  = ^Longint;
      PSmallInt = ^SmallInt;
      PByte     = ^Byte;
      PWord     = ^Word;
      PDWord    = ^DWord;
      PDouble   = ^Double;

    Type
    PScrollbarClassRec  = ^ScrollbarClassRec;
    PScrollbarRec  = ^ScrollbarRec;
    PScrollbarWidget  = ^ScrollbarWidget;
    PScrollbarWidgetClass  = ^ScrollbarWidgetClass;
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
  PScrollbarWidget = ^TScrollbarWidget;
  TScrollbarWidget = PScrollbarRec;

  PScrollbarWidgetClass = ^TScrollbarWidgetClass;
  TScrollbarWidgetClass = PScrollbarClassRec;
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
