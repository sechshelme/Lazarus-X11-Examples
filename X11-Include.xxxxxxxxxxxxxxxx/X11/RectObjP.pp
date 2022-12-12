
unit RectObjP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObjP.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObjP.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/RectObjP.pp
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
    PRectObjClassPart  = ^RectObjClassPart;
    PRectObjClassRec  = ^RectObjClassRec;
    PRectObjRec  = ^RectObjRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xt_RectObjP_h_}
{$define _Xt_RectObjP_h_}
{$include <X11/RectObj.h>}
{$include <X11/ObjectP.h>}


(* error 
typedef struct _RectObjPart {
in declaration at line 63 *)

      var
        width : TDimension;cvar;public;

        border_width : TDimension;cvar;public;

        managed : TBoolean;cvar;public;

        sensitive : TBoolean;cvar;public;

        ancestor_sensitive : TBoolean;cvar;public;

(* error 
}RectObjPart;
in declaration at line 69 *)
    type
      PRectObjRec = ^TRectObjRec;
      TRectObjRec = record
          object : TObjectPart;
          rectangle : TRectObjPart;
        end;




































      PRectObjClassPart = ^TRectObjClassPart;
      TRectObjClassPart = record
          superclass : TWidgetClass;
          class_name : TString;
          widget_size : TCardinal;
          class_initialize : TXtProc;
          class_part_initialize : TXtWidgetClassProc;
          class_inited : TXtEnum;
          initialize : TXtInitProc;
          initialize_hook : TXtArgsProc;
          rect1 : TXtProc;
          rect2 : TXtPointer;
          rect3 : TCardinal;
          resources : TXtResourceList;
          num_resources : TCardinal;
          xrm_class : TXrmClass;
          rect4 : TBoolean;
          rect5 : TXtEnum;
          rect6 : TBoolean;
          rect7 : TBoolean;
          destroy : TXtWidgetProc;
          resize : TXtWidgetProc;
          expose : TXtExposeProc;
          set_values : TXtSetValuesFunc;
          set_values_hook : TXtArgsFunc;
          set_values_almost : TXtAlmostProc;
          get_values_hook : TXtArgsProc;
          rect9 : TXtProc;
          version : TXtVersionType;
          callback_private : TXtPointer;
          rect10 : TString;
          query_geometry : TXtGeometryHandler;
          rect11 : TXtProc;
          extension : TXtPointer;
        end;

      PRectObjClassRec = ^TRectObjClassRec;
      TRectObjClassRec = record
          rect_class : TRectObjClassPart;
        end;
(* error 
externalref RectObjClassRec rectObjClassRec;
 in declarator_list *)
{$endif}

(* error 
#endif /*_Xt_RectObjP_h_*/

implementation


end.
