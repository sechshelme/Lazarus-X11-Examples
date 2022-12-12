
unit PanedP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/PanedP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/PanedP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw/PanedP.pp
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
PPane  = ^Pane;
PPanedClassPart  = ^PanedClassPart;
PPanedClassRec  = ^PanedClassRec;
PPanedConstraints  = ^PanedConstraints;
PPanedConstraintsPart  = ^PanedConstraintsPart;
PPanedConstraintsRec  = ^PanedConstraintsRec;
PPanedPart  = ^PanedPart;
PPanedRec  = ^PanedRec;
PPaneStack  = ^PaneStack;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawPanedP_h}
{$define _XawPanedP_h}
{$include <X11/Xaw/Paned.h>}

type
  PPanedClassPart = ^TPanedClassPart;
  TPanedClassPart = record
      extension : TXtPointer;
    end;


  PPanedClassRec = ^TPanedClassRec;
  TPanedClassRec = record
      core_class : TCoreClassPart;
      composite_class : TCompositeClassPart;
      constraint_class : TConstraintClassPart;
      paned_class : TPanedClassPart;
    end;
  var
    panedClassRec : TPanedClassRec;cvar;external;

















type
  PPanedConstraintsPart = ^TPanedConstraintsPart;
  TPanedConstraintsPart = record
      min : TDimension;
      max : TDimension;
      allow_resize : TBoolean;
      show_grip : TBoolean;
      skip_adjust : TBoolean;
      position : longint;
      preferred_size : TDimension;
      resize_to_pref : TBoolean;
      delta : TPosition;
      olddelta : TPosition;
      paned_adjusted_me : TBoolean;
      wp_size : TDimension;
      size : longint;
      grip : TWidget;
    end;
  TPane = PPanedConstraintsPart;
  PPane = ^TPane;

  PPanedConstraintsRec = ^TPanedConstraintsRec;
  TPanedConstraintsRec = record
      paned : TPanedConstraintsPart;
    end;
  TPanedConstraints = PPanedConstraintsRec;
  PPanedConstraints = ^TPanedConstraints;





  PPaneStack = ^TPaneStack;
  TPaneStack = record
      next : PPaneStack;
      pane : TPane;
      start_size : longint;
    end;
































{$ifndef OLDXAW}

{$endif}
type
  PPanedPart = ^TPanedPart;
  TPanedPart = record
      grip_indent : TPosition;
      refiguremode : TBoolean;
      grip_translations : TXtTranslations;
      internal_bp : TPixel;
      internal_bw : TDimension;
      orientation : TXtOrientation;
      cursor : TCursor;
      grip_cursor : TCursor;
      v_grip_cursor : TCursor;
      h_grip_cursor : TCursor;
      adjust_this_cursor : TCursor;
      v_adjust_this_cursor : TCursor;
      h_adjust_this_cursor : TCursor;
      adjust_upper_cursor : TCursor;
      adjust_lower_cursor : TCursor;
      adjust_left_cursor : TCursor;
      adjust_right_cursor : TCursor;
      recursively_called : TBoolean;
      resize_children_to_pref : TBoolean;
      start_loc : longint;
      whichadd : TWidget;
      whichsub : TWidget;
      normgc : TGC;
      invgc : TGC;
      flipgc : TGC;
      num_panes : longint;
      stack : PPaneStack;
      pad : array[0..3] of TXtPointer;
    end;


  PPanedRec = ^TPanedRec;
  TPanedRec = record
      core : TCorePart;
      composite : TCompositePart;
      constraint : TConstraintPart;
      paned : TPanedPart;
    end;
{$endif}


implementation


end.
