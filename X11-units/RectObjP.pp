
unit RectObjP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/RectObjP.h
  The following command line parameters were used:
    /usr/include/X11/RectObjP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/RectObjP.pp
}

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
        width : Dimension;cvar;public;

        border_width : Dimension;cvar;public;

        managed : Boolean;cvar;public;

        sensitive : Boolean;cvar;public;

        ancestor_sensitive : Boolean;cvar;public;

(* error 
}RectObjPart;
in declaration at line 69 *)

    type
      _RectObjRec = record
          object : ObjectPart;
          rectangle : RectObjPart;
        end;
      RectObjRec = _RectObjRec;




































      _RectObjClassPart = record
          superclass : WidgetClass;
          class_name : String;
          widget_size : Cardinal;
          class_initialize : XtProc;
          class_part_initialize : XtWidgetClassProc;
          class_inited : XtEnum;
          initialize : XtInitProc;
          initialize_hook : XtArgsProc;
          rect1 : XtProc;
          rect2 : XtPointer;
          rect3 : Cardinal;
          resources : XtResourceList;
          num_resources : Cardinal;
          xrm_class : XrmClass;
          rect4 : Boolean;
          rect5 : XtEnum;
          rect6 : Boolean;
          rect7 : Boolean;
          destroy : XtWidgetProc;
          resize : XtWidgetProc;
          expose : XtExposeProc;
          set_values : XtSetValuesFunc;
          set_values_hook : XtArgsFunc;
          set_values_almost : XtAlmostProc;
          get_values_hook : XtArgsProc;
          rect9 : XtProc;
          version : XtVersionType;
          callback_private : XtPointer;
          rect10 : String;
          query_geometry : XtGeometryHandler;
          rect11 : XtProc;
          extension : XtPointer;
        end;
      RectObjClassPart = _RectObjClassPart;

      _RectObjClassRec = record
          rect_class : RectObjClassPart;
        end;
      RectObjClassRec = _RectObjClassRec;
(* error 
externalref RectObjClassRec rectObjClassRec;
 in declarator_list *)
{$endif}

(* error 
#endif /*_Xt_RectObjP_h_*/

implementation


end.
