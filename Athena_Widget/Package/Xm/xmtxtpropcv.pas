unit XmTxtPropCv;

interface

uses
  unixtype,
  x, xlib,
  xutil,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
{*******    Public Function Declarations    ******* }

function XmCvtXmStringTableToTextProperty(display:PDisplay; string_table:TXmStringTable; count:longint; style:TXmICCEncodingStyle; text_prop_return:PXTextProperty):longint;cdecl;external libXm;
function XmCvtTextPropertyToXmStringTable(display:PDisplay; text_prop:PXTextProperty; string_table_return:PXmStringTable; count_return:Plongint):longint;cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

end.
