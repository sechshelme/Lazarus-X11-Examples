
unit SimpleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/SimpleP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/SimpleP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/SimpleP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SimpleP_h}
{$define _SimpleP_h}  
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/Simple.h>}

  type
    SimpleClassPart = record
        change_sensitive : function :Boolean;cdecl;
      end;
(* error 
#define XtInheritChangeSensitive ((Boolean (*)())_XtInherit)
in define line 62 *)

      _SimpleClassRec = record
          core_class : CoreClassPart;
          simple_class : SimpleClassPart;
        end;
      SimpleClassRec = _SimpleClassRec;

      var
        simpleClassRec : SimpleClassRec;cvar;external;



{$ifdef XAW_INTERNATIONALIZATION}
{$endif}


    type
      SimplePart = record
          cursor : Cursor;
          insensitive_border : Pixmap;
          cursor_name : String;
          pointer_fg : Pixel;
          pointer_bg : Pixel;
          international : Boolean;
        end;

      _SimpleRec = record
          core : CorePart;
          simple : SimplePart;
        end;
      SimpleRec = _SimpleRec;
{$endif}


implementation


end.
