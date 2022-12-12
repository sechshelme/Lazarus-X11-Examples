
unit SimpleP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/SimpleP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/SimpleP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/SimpleP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _SimpleP_h}
{$define _SimpleP_h}  
{$include <X11/Xfuncproto.h>}
{$include <X11/Xaw/Simple.h>}
{$include <X11/Xaw/XawInit.h>}
(* error 
typedef struct {
in declaration at line 60 *)
{$ifndef OLDXAW}

      var
        extension : XtPointer;cvar;public;
{$endif}
(* error 
} SimpleClassPart;
in declaration at line 64 *)
(* error 
#define XtInheritChangeSensitive	((Bool (*)(Widget))_XtInherit)
in define line 66 *)

    type
      _SimpleClassRec = record
          core_class : CoreClassPart;
          simple_class : SimpleClassPart;
        end;
      SimpleClassRec = _SimpleClassRec;

      var
        simpleClassRec : SimpleClassRec;cvar;external;




{$ifndef OLDXAW}

{$endif}

    type
      SimplePart = record
          cursor : Cursor;
          insensitive_border : Pixmap;
          cursor_name : String;
          pointer_fg : Pixel;
          pointer_bg : Pixel;
          international : Boolean;
          display_list : ^XawDisplayList;
          tip : String;
          pad : array[0..2] of XtPointer;
        end;

      _SimpleRec = record
          core : CorePart;
          simple : SimplePart;
        end;
      SimpleRec = _SimpleRec;
{$endif}

(* error 
#endif /* _SimpleP_h */

implementation


end.
