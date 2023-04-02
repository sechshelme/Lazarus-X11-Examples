unit XmPicture;

interface

uses
  unixtype,
  x, xlib,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <stdio.h>}
//{$include <stdlib.h>}
//{$include <ctype.h>}
//{$include <X11/Intrinsic.h>}

type
  PXmPicture = ^TXmPicture;
  TXmPicture = Pointer;
  //  TXmPicture = PXmPictureRec;

  PXmPictureState = ^TXmPictureState;
  TXmPictureState = Pointer;
  //  TXmPictureState = PXmPictureStateRec;

function XmParsePicture(para1:Pchar):TXmPicture;cdecl;external libXm;
function XmGetNewPictureState(para1:TXmPicture):TXmPictureState;cdecl;external libXm;
function XmPictureProcessCharacter(para1:TXmPictureState; para2:char; para3:PBoolean):Pchar;cdecl;external libXm;
procedure XmPictureDelete(para1:TXmPicture);cdecl;external libXm;
procedure XmPictureDeleteState(para1:TXmPictureState);cdecl;external libXm;
function XmPictureGetCurrentString(para1:TXmPictureState):Pchar;cdecl;external libXm;
function XmPictureDoAutoFill(para1:TXmPictureState):Pchar;cdecl;external libXm;

implementation

end.
