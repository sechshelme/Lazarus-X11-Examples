
unit Tree;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tree.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tree.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/Tree.pp
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
    PTreeClassRec  = ^TreeClassRec;
    PTreeRec  = ^TreeRec;
    PTreeWidget  = ^TreeWidget;
    PTreeWidgetClass  = ^TreeWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTree_h}
{$define _XawTree_h}
{$include <X11/Xmu/Converters.h>}


{$ifndef _XtStringDefs_h_}

const
  XtNhSpace = 'hSpace';  
  XtNvSpace = 'vSpace';  
  XtCHSpace = 'HSpace';  
  XtCVSpace = 'VSpace';  
{$endif}

const
  XtNautoReconfigure = 'autoReconfigure';  
  XtNlineWidth = 'lineWidth';  
  XtNtreeGC = 'treeGC';  
  XtNtreeParent = 'treeParent';  
  XtNgravity = 'gravity';  

  XtCAutoReconfigure = 'AutoReconfigure';  
  XtCLineWidth = 'LineWidth';  
  XtCTreeGC = 'TreeGC';  
  XtCTreeParent = 'TreeParent';  
  XtCGravity = 'Gravity';  
  XtRGC = 'GC';  

  var
    treeWidgetClass : TWidgetClass;cvar;external;
type
  PTreeWidgetClass = ^TTreeWidgetClass;
  TTreeWidgetClass = PTreeClassRec;

  PTreeWidget = ^TTreeWidget;
  TTreeWidget = PTreeRec;
(* error 
extern void XawTreeForceLayout (
{$if NeedFunctionPrototypes}

{$endif}
in declaration at line 121 *)
{$endif}

(* error 
#endif /* _XawTree_h */

implementation


end.
