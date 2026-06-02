unit fp_xcb_util;

interface

uses
  fp_xcb;


  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {$DEFINE read_interface}
  {$include xcb_util/xcb_aux.inc}
  {$include xcb_util/xcb_event.inc}
  {$include xcb_util/xcb_atom.inc}
  {$UNDEF read_interface}


implementation

{$DEFINE read_implementation}
{$include xcb_util/xcb_aux.inc}
{$include xcb_util/xcb_event.inc}
{$include xcb_util/xcb_atom.inc}
{$UNDEF read_implementation}

end.
