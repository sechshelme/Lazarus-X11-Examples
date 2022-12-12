
unit TreeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/TreeP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/TreeP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/TreeP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTreeP_h}
{$define _XawTreeP_h}  
{$include <X11/Xaw3d/Tree.h>}

  type
    _TreeClassPart = record
        ignore : longint;
      end;
    TreeClassPart = _TreeClassPart;

    _TreeClassRec = record
        core_class : CoreClassPart;
        composite_class : CompositeClassPart;
        constraint_class : ConstraintClassPart;
        tree_class : TreeClassPart;
      end;
    TreeClassRec = _TreeClassRec;

    var
      treeClassRec : TreeClassRec;cvar;external;














  type
    TreePart = record
        hpad : Dimension;
        vpad : Dimension;
        line_width : Dimension;
        foreground : Pixel;
        gravity : XtGravity;
        auto_reconfigure : Boolean;
        gc : GC;
        tree_root : Widget;
        largest : ^Dimension;
        n_largest : longint;
        maxwidth : Dimension;
        maxheight : Dimension;
      end;

    _TreeRec = record
        core : CorePart;
        composite : CompositePart;
        constraint : ConstraintPart;
        tree : TreePart;
      end;
    TreeRec = _TreeRec;








    _TreeConstraintsPart = record
        parent : Widget;
        gc : GC;
        children : ^Widget;
        n_children : longint;
        max_children : longint;
        bbsubwidth : Dimension;
        bbsubheight : Dimension;
        bbwidth : Dimension;
        bbheight : Dimension;
        x : Position;
        y : Position;
      end;
    TreeConstraintsPart = _TreeConstraintsPart;

    _TreeConstraintsRec = record
        tree : TreeConstraintsPart;
      end;
    TreeConstraintsRec = _TreeConstraintsRec;
    TreeConstraints = ^_TreeConstraintsRec;


  function TREE_CONSTRAINT(w : longint) : TreeConstraints;  


  const
    TREE_INITIAL_DEPTH = 10;    
    TREE_HORIZONTAL_DEFAULT_SPACING = 20;    
    TREE_VERTICAL_DEFAULT_SPACING = 6;    
{$endif}


implementation

  function TREE_CONSTRAINT(w : longint) : TreeConstraints;
  begin
    TREE_CONSTRAINT:=TreeConstraints(w^.(core.constraints));
  end;


end.
