
unit Tree;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Tree.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Tree.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Tree.pp
}

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
      treeWidgetClass : WidgetClass;cvar;external;

  type
    TreeWidgetClass = ^_TreeClassRec;

    TreeWidget = ^_TreeRec;
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
