
unit LayoutP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/LayoutP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/LayoutP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xaw3d/LayoutP.pp
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
    PBox  = ^Box;
    PBoxParams  = ^BoxParams;
    PBoxParamsPtr  = ^BoxParamsPtr;
    PBoxParamsRec  = ^BoxParamsRec;
    PBoxPtr  = ^BoxPtr;
    PBoxType  = ^BoxType;
    Pchar  = ^char;
    PExpr  = ^Expr;
    PExprPtr  = ^ExprPtr;
    PExprRec  = ^ExprRec;
    PExprType  = ^ExprType;
    PGlue  = ^Glue;
    PGluePtr  = ^GluePtr;
    PGlueRec  = ^GlueRec;
    PLayoutClassPart  = ^LayoutClassPart;
    PLayoutClassRec  = ^LayoutClassRec;
    PLayoutConstraints  = ^LayoutConstraints;
    PLayoutConstraintsRec  = ^LayoutConstraintsRec;
    PLayoutDirection  = ^LayoutDirection;
    PLayoutPart  = ^LayoutPart;
    PLayoutPtr  = ^LayoutPtr;
    PLayoutRec  = ^LayoutRec;
    PLBoxRec  = ^LBoxRec;
    POperator  = ^Operator;
    PSubInfo  = ^SubInfo;
    PSubInfoPtr  = ^SubInfoPtr;
    PSubInfoRec  = ^SubInfoRec;
    Pt  = ^t;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XawLayoutP_h}
{$define _XawLayoutP_h}
{$if defined(LAYOUT)}
{$include "Layout.h"}
{$else}
{$include <X11/Xaw3d/Layout.h>}
{$endif}
{$include <X11/ConstrainP.h>}
{$ifdef MOTIF}
{$include "Xm/ManagerP.h"}
{$endif}

function GlueEqual(a,b : longint) : longint;

(* error 
#define AddGlue(r,a,b)	if (a.order == b.order) { \
in declaration at line 44 *)
(* error 
			    r.order = a.order; \
(* error 
			    r.value = a.value + b.value; \
in declaration at line 45 *)
(* error 
			    r.value = a.value + b.value; \
(* error 
			} else { \
in declaration at line 48 *)
(* error 
				r = a; \
(* error 
			    else \
in declaration at line 50 *)
(* error 
				r = b; \
(* error 
			}
in declaration at line 54 *)
(* error 
			    r.order = a.order; \
(* error 
			    if (a.value > b.value) \
in declaration at line 56 *)
(* error 
				r.value = b.value; \
(* error 
			    else \
in declaration at line 58 *)
(* error 
				r.value = a.value; \
(* error 
			} else { \
in declaration at line 61 *)
(* error 
				r = b; \
(* error 
			    else \
in declaration at line 63 *)
(* error 
				r = a; \
(* error 
			}
in declaration at line 67 *)
(* error 
			    r.order = a.order; \
(* error 
			    r.value = a.value - b.value; \
in declaration at line 68 *)
(* error 
			    r.value = a.value - b.value; \
(* error 
			} else { \
in declaration at line 71 *)
(* error 
				r = a; \
(* error 
			    else { \
in declaration at line 73 *)
(* error 
				r.order = b.order; \
(* error 
				r.value = -b.value; \
in declaration at line 74 *)
(* error 
				r.value = -b.value; \
(* error 
			    } \
in define line 78 *)
    function IsZeroGlue(g : longint) : longint;    

(* error 
					   (char *) XrmQuarkToString(q));
in declaration at line 82 *)
    type
      PBoxType = ^TBoxType;
      TBoxType = (BoxBox,WidgetBox,GlueBox,VariableBox
        );

      PLayoutDirection = ^TLayoutDirection;
      TLayoutDirection = (LayoutHorizontal := 0,LayoutVertical := 1
        );

      POperator = ^TOperator;
      TOperator = (Plus,Minus,Times,Divide,Percent);

      PExprType = ^TExprType;
      TExprType = (Constant,Binary,Unary,Width,Height,Variable
        );

      PExprPtr = ^TExprPtr;
      TExprPtr = PExpr;

      PExpr = ^TExpr;
      TExpr = record
          _type : TExprType;
          u : record
              case longint of
                0 : ( constant : Tdouble );
                1 : ( binary : record
                    op : TOperator;
                    left : TExprPtr;
                    right : TExprPtr;
                  end );
                2 : ( unary : record
                    op : TOperator;
                    down : TExprPtr;
                  end );
                3 : ( width : TXrmQuark );
                4 : ( height : TXrmQuark );
                5 : ( variable : TXrmQuark );
              end;
        end;
      TExprRec = TExpr;
      PExprRec = ^TExprRec;

      PGlue = ^TGlue;
      TGlue = record
          order : longint;
          value : Tdouble;
          expr : TExprPtr;
        end;
      TGlueRec = TGlue;
      PGlueRec = ^TGlueRec;
      TGluePtr = PGlue;
      PGluePtr = ^TGluePtr;

      PBoxParams = ^TBoxParams;
      TBoxParams = record
          stretch : array[0..1] of TGlueRec;
          shrink : array[0..1] of TGlueRec;
        end;
      TBoxParamsRec = TBoxParams;
      PBoxParamsRec = ^TBoxParamsRec;
      TBoxParamsPtr = PBoxParams;
      PBoxParamsPtr = ^TBoxParamsPtr;

      PBoxPtr = ^TBoxPtr;
      TBoxPtr = PBox;

      PLayoutPtr = ^TLayoutPtr;
      TLayoutPtr = TBoxPtr;

      PBox = ^TBox;
      TBox = record
          nextSibling : TBoxPtr;
          parent : TBoxPtr;
          params : TBoxParamsRec;
          size : array[0..1] of longint;
          natural : array[0..1] of longint;
          _type : TBoxType;
          u : record
              case longint of
                0 : ( box : record
                    firstChild : TBoxPtr;
                    dir : TLayoutDirection;
                  end );
                1 : ( widget : record
                    quark : TXrmQuark;
                    widget : TWidget;
                  end );
                2 : ( glue : record
                    expr : TExprPtr;
                  end );
                3 : ( variable : record
                    quark : TXrmQuark;
                    expr : TExprPtr;
                  end );
              end;
        end;
      TLBoxRec = TBox;
      PLBoxRec = ^TLBoxRec;


      PSubInfo = ^TSubInfo;
      TSubInfo = record
          naturalSize : array[0..1] of longint;
          naturalBw : longint;
        end;
      TSubInfoRec = TSubInfo;
      PSubInfoRec = ^TSubInfoRec;
      TSubInfoPtr = PSubInfo;
      PSubInfoPtr = ^TSubInfoPtr;


    function New(t : longint) : Pt;    

    function Dispose(p : longint) : longint;    

    function Some(t,n : longint) : Pt;    

(* error 
#define More(p,t,n) ((p)? (t *) XtRealloc((char *) p, sizeof(t)*n):Some(t,n)
in define line 173 *)



    type
      PLayoutClassPart = ^TLayoutClassPart;
      TLayoutClassPart = record
          foo : longint;
        end;

{$ifdef MOTIF}
{$endif}
    type
      PLayoutClassRec = ^TLayoutClassRec;
      TLayoutClassRec = record
          core_class : TCoreClassPart;
          composite_class : TCompositeClassPart;
          constraint_class : TConstraintClassPart;
          manager_class : TXmManagerClassPart;
          layout_class : TLayoutClassPart;
        end;
      var
        layoutClassRec : TLayoutClassRec;cvar;external;
{$ifdef MOTIF}
{$endif}
    type
      PLayoutConstraintsRec = ^TLayoutConstraintsRec;
      TLayoutConstraintsRec = record
          manager : TXmManagerConstraintPart;
          layout : TSubInfoRec;
        end;
      TLayoutConstraints = PLayoutConstraintsRec;
      PLayoutConstraints = ^TLayoutConstraints;

    function SubInfo(w : longint) : longint;    



    type
      PLayoutPart = ^TLayoutPart;
      TLayoutPart = record
          layout : TLayoutPtr;
          debug : TBoolean;
        end;

{$ifdef MOTIF}
{$endif}
    type
      PLayoutRec = ^TLayoutRec;
      TLayoutRec = record
          core : TCorePart;
          composite : TCompositePart;
          constraint : TConstraintPart;
          manager : TXmManagerPart;
          layout : TLayoutPart;
        end;
{$endif}

implementation

function GlueEqual(a,b : longint) : longint;
begin
  GlueEqual:=((a.order)=((b.order) and (@(a.value))))=(b.value);
end;

    function IsZeroGlue(g : longint) : longint;
    begin
      IsZeroGlue:=(g.value)=0;
    end;

    function New(t : longint) : Pt;
    begin
      _New:=Pt(XtCalloc(1,sizeof(t)));
    end;

    function Dispose(p : longint) : longint;
    begin
      _Dispose:=XtFree(Pchar(p));
    end;

    function Some(t,n : longint) : Pt;
    begin
      Some:=Pt(XtMalloc((sizeof(t))*n));
    end;

    function SubInfo(w : longint) : longint;
    begin
      SubInfo:=@((TLayoutConstraints(w^.(core.constraints)))^.layout);
    end;


end.
