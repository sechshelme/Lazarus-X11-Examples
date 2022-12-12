
unit LayoutP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/LayoutP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/LayoutP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/LayoutP.pp
}

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
      _BoxType = (BoxBox,WidgetBox,GlueBox,VariableBox
        );
      BoxType = _BoxType;

      _LayoutDirection = (LayoutHorizontal := 0,LayoutVertical := 1
        );
      LayoutDirection = _LayoutDirection;

      _Operator = (Plus,Minus,Times,Divide,Percent);
      Operator = _Operator;

      _ExprType = (Constant,Binary,Unary,Width,Height,Variable
        );
      ExprType = _ExprType;

      ExprPtr = ^_Expr;

      _Expr = record
          _type : ExprType;
          u : record
              case longint of
                0 : ( constant : double );
                1 : ( binary : record
                    op : Operator;
                    left : ExprPtr;
                    right : ExprPtr;
                  end );
                2 : ( unary : record
                    op : Operator;
                    down : ExprPtr;
                  end );
                3 : ( width : XrmQuark );
                4 : ( height : XrmQuark );
                5 : ( variable : XrmQuark );
              end;
        end;
      ExprRec = _Expr;

      _Glue = record
          order : longint;
          value : double;
          expr : ExprPtr;
        end;
      GlueRec = _Glue;
      GluePtr = ^_Glue;

      _BoxParams = record
          stretch : array[0..1] of GlueRec;
          shrink : array[0..1] of GlueRec;
        end;
      BoxParamsRec = _BoxParams;
      BoxParamsPtr = ^_BoxParams;

      BoxPtr = ^_Box;

      LayoutPtr = BoxPtr;

      _Box = record
          nextSibling : BoxPtr;
          parent : BoxPtr;
          params : BoxParamsRec;
          size : array[0..1] of longint;
          natural : array[0..1] of longint;
          _type : BoxType;
          u : record
              case longint of
                0 : ( box : record
                    firstChild : BoxPtr;
                    dir : LayoutDirection;
                  end );
                1 : ( widget : record
                    quark : XrmQuark;
                    widget : Widget;
                  end );
                2 : ( glue : record
                    expr : ExprPtr;
                  end );
                3 : ( variable : record
                    quark : XrmQuark;
                    expr : ExprPtr;
                  end );
              end;
        end;
      LBoxRec = _Box;


      _SubInfo = record
          naturalSize : array[0..1] of longint;
          naturalBw : longint;
        end;
      SubInfoRec = _SubInfo;
      SubInfoPtr = ^_SubInfo;


    function New(t : longint) : pt;    

  function Dispose(p : longint) : longint;  

  function Some(t,n : longint) : pt;  

(* error 
#define More(p,t,n) ((p)? (t *) XtRealloc((char *) p, sizeof(t)*n):Some(t,n)
in define line 173 *)




    type
      _LayoutClassPart = record
          foo : longint;
        end;
      LayoutClassPart = _LayoutClassPart;

{$ifdef MOTIF}
{$endif}

    type
      _LayoutClassRec = record
          core_class : CoreClassPart;
          composite_class : CompositeClassPart;
          constraint_class : ConstraintClassPart;
          manager_class : XmManagerClassPart;
          layout_class : LayoutClassPart;
        end;
      LayoutClassRec = _LayoutClassRec;

      var
        layoutClassRec : LayoutClassRec;cvar;external;
{$ifdef MOTIF}
{$endif}

    type
      _LayoutConstraintsRec = record
          manager : XmManagerConstraintPart;
          layout : SubInfoRec;
        end;
      LayoutConstraintsRec = _LayoutConstraintsRec;
      LayoutConstraints = ^_LayoutConstraintsRec;

    function SubInfo(w : longint) : longint;    




  type
    LayoutPart = record
        layout : LayoutPtr;
        debug : Boolean;
      end;

{$ifdef MOTIF}
{$endif}

  type
    _LayoutRec = record
        core : CorePart;
        composite : CompositePart;
        constraint : ConstraintPart;
        manager : XmManagerPart;
        layout : LayoutPart;
      end;
    LayoutRec = _LayoutRec;
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

    function New(t : longint) : pt;
    begin
      _New:=pt(XtCalloc(1,sizeof(t)));
    end;

  function Dispose(p : longint) : longint;
  begin
    _Dispose:=XtFree(pchar(p));
  end;

  function Some(t,n : longint) : pt;
  begin
    Some:=pt(XtMalloc((sizeof(t))*n));
  end;

    function SubInfo(w : longint) : longint;
    begin
      SubInfo:=@((LayoutConstraints(w^.(core.constraints)))^.layout);
    end;


end.
