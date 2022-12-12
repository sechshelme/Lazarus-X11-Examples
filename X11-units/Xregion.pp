
unit Xregion;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xregion.h
  The following command line parameters were used:
    /usr/include/X11/Xregion.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xregion.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XREGION_H_}
{$define _X11_XREGION_H_}  

  type
    Box = record
        x1 : smallint;
        x2 : smallint;
        y1 : smallint;
        y2 : smallint;
      end;
    BoxRec = Box;
    BoxPtr = ^Box;

    RECTANGLE = record
        x : smallint;
        y : smallint;
        width : smallint;
        height : smallint;
      end;
    RectangleRec = RECTANGLE;
    RectanglePtr = ^RECTANGLE;

  const
    TRUE = 1;    
    FALSE = 0;    
    MAXSHORT = 32767;    
    MINSHORT = -(MAXSHORT);    
{$ifndef MAX}

  function MAX(a,b : longint) : longint;  

{$endif}
{$ifndef MIN}

  function MIN(a,b : longint) : longint;  

{$endif}


  type
    _XRegion = record
        size : longint;
        numRects : longint;
        rects : ^BOX;
        extents : BOX;
      end;
    REGION = _XRegion;



  function EXTENTCHECK(r1,r2 : longint) : longint;  


(* error 
#define EXTENTS(r,idRect){\
in declaration at line 101 *)
(* error 
              (idRect)->extents.x1 = (r)->x1;\
(* error 
            if((r)->y1 < (idRect)->extents.y1)\
in declaration at line 103 *)
(* error 
              (idRect)->extents.y1 = (r)->y1;\
(* error 
            if((r)->x2 > (idRect)->extents.x2)\
in declaration at line 105 *)
(* error 
              (idRect)->extents.x2 = (r)->x2;\
(* error 
            if((r)->y2 > (idRect)->extents.y2)\
in declaration at line 107 *)
(* error 
              (idRect)->extents.y2 = (r)->y2;\
(* error 
        }

in declaration at line 116 *)
(* error 
                                     (2 * (sizeof(BOX)) * ((reg)->size))); \
(* error 
          if (tmpRect == NULL) \
in declaration at line 118 *)
(* error 
            return(0);\
(* error 
          (firstrect) = tmpRect; \
in declaration at line 119 *)
(* error 
          (firstrect) = tmpRect; \
(* error 
          (reg)->size *= 2;\
in declaration at line 120 *)
(* error 
          (reg)->size *= 2;\
(* error 
          (rect) = &(firstrect)[(reg)->numRects];\
in declaration at line 121 *)
(* error 
          (rect) = &(firstrect)[(reg)->numRects];\
(* error 
         }\

in define line 134 *)

(* error 
#define ADDRECT(reg, r, rx1, ry1, rx2, ry2){\
in declaration at line 140 *)
(* error 
              (r)->x1 = (rx1);\
(* error 
              (r)->y1 = (ry1);\
in declaration at line 141 *)
(* error 
              (r)->y1 = (ry1);\
(* error 
              (r)->x2 = (rx2);\
in declaration at line 142 *)
(* error 
              (r)->x2 = (rx2);\
(* error 
              (r)->y2 = (ry2);\
in declaration at line 143 *)
(* error 
              (r)->y2 = (ry2);\
(* error 
              EXTENTS((r), (reg));\
in declaration at line 144 *)
(* error 
              EXTENTS((r), (reg));\
(* error 
              (reg)->numRects++;\
in declaration at line 145 *)
(* error 
              (reg)->numRects++;\
(* error 
              (r)++;\
in declaration at line 146 *)
(* error 
              (r)++;\
(* error 
            }\

in declaration at line 156 *)
(* error 
              (r)->x1 = (rx1);\
(* error 
              (r)->y1 = (ry1);\
in declaration at line 157 *)
(* error 
              (r)->y1 = (ry1);\
(* error 
              (r)->x2 = (rx2);\
in declaration at line 158 *)
(* error 
              (r)->x2 = (rx2);\
(* error 
              (r)->y2 = (ry2);\
in declaration at line 159 *)
(* error 
              (r)->y2 = (ry2);\
(* error 
              (reg)->numRects++;\
in declaration at line 160 *)
(* error 
              (reg)->numRects++;\
(* error 
              (r)++;\
in declaration at line 161 *)
(* error 
              (r)++;\
(* error 
            }\
in define line 165 *)
    function REGION_NOT_EMPTY(pReg : longint) : longint;    

  function INBOX(r,x,y : longint) : longint;  


const
  NUMPTSTOBUFFER = 200;  


type
  _POINTBLOCK = record
      pts : array[0..(NUMPTSTOBUFFER)-1] of XPoint;
      next : ^_POINTBLOCK;
    end;
  POINTBLOCK = _POINTBLOCK;
{$endif}


implementation

  function MAX(a,b : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if a>b then
      if_local1:=a
    else
      if_local1:=b;
    MAX:=if_local1;
  end;

  function MIN(a,b : longint) : longint;
  var
     if_local1 : longint;
  (* result types are not known *)
  begin
    if a<b then
      if_local1:=a
    else
      if_local1:=b;
    MIN:=if_local1;
  end;

  function EXTENTCHECK(r1,r2 : longint) : longint;
  begin
    EXTENTCHECK:=((((r1^.x2)>((r2^.x1) and (@(r1^.x1))))<((r2^.x2) and (@(r1^.y2))))>((r2^.y1) and (@(r1^.y1))))<(r2^.y2);
  end;

    function REGION_NOT_EMPTY(pReg : longint) : longint;
    begin
      REGION_NOT_EMPTY:=pReg^.numRects;
    end;

  function INBOX(r,x,y : longint) : longint;
  begin
    INBOX:=((((r.x2)>x) and (@((r.x1)<=x))) and (@((r.y2)>y))) and (@((r.y1)<=y));
  end;


end.
