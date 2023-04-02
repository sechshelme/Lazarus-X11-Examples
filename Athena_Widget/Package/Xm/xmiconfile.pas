unit XmIconFile;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

const
  XmUNSPECIFIED_ICON_SIZE = 0;  
  XmLARGE_ICON_SIZE = 1;  
  XmMEDIUM_ICON_SIZE = 2;  
  XmSMALL_ICON_SIZE = 3;  
  XmTINY_ICON_SIZE = 4;  
{*******    Public Function Declarations for IconFile.c    ******* }

function XmGetIconFileName(screen:PScreen; imageInstanceName:TString; imageClassName:TString; hostPrefix:TString; size:dword):TString;cdecl;external libXm;

implementation

end.
