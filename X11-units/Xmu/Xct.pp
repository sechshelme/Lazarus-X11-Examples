
unit Xct;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xmu/Xct.h
  The following command line parameters were used:
    /usr/include/X11/Xmu/Xct.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xmu/Xct.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _Xct_h}
{$define _Xct_h}  
{$include <X11/Xfuncproto.h>}

  const
    XctVersion = 1;    

  type
    XctString = ^byte;

    XctHDirection = (XctUnspecified,XctLeftToRight,XctRightToLeft
      );

    XctFlags = dword;


  const
    XctSingleSetSegments = $0001;    

    XctProvideExtensions = $0002;    

    XctAcceptC0Extensions = $0004;    

    XctAcceptC1Extensions = $0008;    

    XctHideDirection = $0010;    

    XctFreeString = $0020;    

    XctShiftMultiGRToGL = $0040;    













  type
    XctResult = (XctSegment,XctC0Segment,XctGLSegment,XctC1Segment,
      XctGRSegment,XctExtendedSegment,XctExtension,
      XctHorizontal,XctEndOfText,XctError);






















    _XctRec = ^record
        total_string : XctString;
        total_length : longint;
        flags : XctFlags;
        version : longint;
        can_ignore_exts : longint;
        item : XctString;
        item_length : dword;
        char_size : longint;
        encoding : ^char;
        horizontal : XctHDirection;
        horz_depth : dword;
        GL : ^char;
        GL_encoding : ^char;
        GL_set_size : longint;
        GL_char_size : longint;
        GR : ^char;
        GR_encoding : ^char;
        GR_set_size : longint;
        GR_char_size : longint;
        GLGR_encoding : ^char;
        priv : ^_XctPriv;
      end;
    XctData = ^_XctRec;

(* error 
XctData XctCreate
(* error 
 int			length,
(* error 
 XctFlags		flags
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

  function XctNextItem(data:XctData):XctResult;

  procedure XctFree(data:XctData);

  procedure XctReset(data:XctData);

{$endif}

(* error 
#endif /* _Xct_h */

implementation

  function XctNextItem(data:XctData):XctResult;
  begin
    { You must implement this function }
  end;
  procedure XctFree(data:XctData);
  begin
    { You must implement this function }
  end;
  procedure XctReset(data:XctData);
  begin
    { You must implement this function }
  end;

end.
