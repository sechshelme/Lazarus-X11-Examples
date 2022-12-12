
unit XEVI;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XEVI.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XEVI.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XEVI.pp
}

  Type
  PDisplay  = ^Display;
  PExtendedVisualInfo  = ^ExtendedVisualInfo;
  Plongint  = ^longint;
  PVisualID  = ^VisualID;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XEVI_H_}
{$define _XEVI_H_}  
{$include <X11/Xfuncproto.h>}
{$include <X11/extensions/EVI.h>}

  type
    ExtendedVisualInfo = record
        core_visual_id : VisualID;
        screen : longint;
        level : longint;
        transparency_type : dword;
        transparency_value : dword;
        min_hw_colormaps : dword;
        max_hw_colormaps : dword;
        num_colormap_conflicts : dword;
        colormap_conflicts : ^VisualID;
      end;
(* error 
Bool XeviQueryExtension(

 in declarator_list *)


  function XeviQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;


  function XeviGetVisualInfo(_para1:PDisplay; _para2:PVisualID; _para3:longint; _para4:PPExtendedVisualInfo; _para5:Plongint):Status;

{$endif}
(* error 
#endif

implementation

  function XeviQueryVersion(_para1:PDisplay; _para2:Plongint; _para3:Plongint):Status;
  begin
    { You must implement this function }
  end;
  function XeviGetVisualInfo(_para1:PDisplay; _para2:PVisualID; _para3:longint; _para4:PPExtendedVisualInfo; _para5:Plongint):Status;
  begin
    { You must implement this function }
  end;

end.
