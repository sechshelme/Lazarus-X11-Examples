
unit TreeP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TreeP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TreeP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/TreeP.pp
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
PDimension  = ^Dimension;
PTreeClassPart  = ^TreeClassPart;
PTreeClassRec  = ^TreeClassRec;
PTreeConstraints  = ^TreeConstraints;
PTreeConstraintsPart  = ^TreeConstraintsPart;
PTreeConstraintsRec  = ^TreeConstraintsRec;
PTreePart  = ^TreePart;
PTreeRec  = ^TreeRec;
PWidget  = ^Widget;
PXawDisplayList  = ^XawDisplayList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawTreeP_h}
{$define _XawTreeP_h}
{$include <X11/Xaw/Tree.h>}
type
  PTreeClassPart = ^TTreeClassPart;
  TTreeClassPart = record
      extension : TXtPointer;
    end;

  PTreeClassRec = ^TTreeClassRec;
  TTreeClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      tree_class : TTreeClassPart;
    end;
  var
    treeClassRec : TTreeClassRec;cvar;external;













{$ifndef OLDXAW}

{$endif}
type
  PTreePart = ^TTreePart;
  TTreePart = record
      hpad : TDimension;
      vpad : TDimension;
      line_width : TDimension;
      foreground : TPixel;
      gravity : TXtGravity;
      auto_reconfigure : TBoolean;
      gc : TGC;
      tree_root : TWidget;
      largest : PDimension;
      n_largest : longint;
      maxwidth : TDimension;
      maxheight : TDimension;
      display_list : PXawDisplayList;
      pad : array[0..3] of TXtPointer;
    end;

  PTreeRec = ^TTreeRec;
  TTreeRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      tree : TTreePart;
    end;







{$ifndef OLDXAW}

{$endif}
type
  PTreeConstraintsPart = ^TTreeConstraintsPart;
  TTreeConstraintsPart = record
      parent : TWidget;
      gc : TGC;
      children : PWidget;
      n_children : longint;
      max_children : longint;
      bbsubwidth : TDimension;
      bbsubheight : TDimension;
      bbwidth : TDimension;
      bbheight : TDimension;
      x : TPosition;
      y : TPosition;
      pad : array[0..1] of TXtPointer;
    end;

  PTreeConstraintsRec = ^TTreeConstraintsRec;
  TTreeConstraintsRec = record
      tree : TTreeConstraintsPart;
    end;
  TTreeConstraints = PTreeConstraintsRec;
  PTreeConstraints = ^TTreeConstraints;


function TREE_CONSTRAINT(w : longint) : TTreeConstraints;


const
  TREE_INITIAL_DEPTH = 10;  
  TREE_HORIZONTAL_DEFAULT_SPACING = 20;  
  TREE_VERTICAL_DEFAULT_SPACING = 6;  
{$endif}


implementation

function TREE_CONSTRAINT(w : longint) : TTreeConstraints;
begin
  TREE_CONSTRAINT:=TTreeConstraints(w^.(core.constraints));
end;


end.
