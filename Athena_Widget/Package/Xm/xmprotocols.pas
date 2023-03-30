unit XmProtocols;

interface

uses
  x, xlib,
  XTIntrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <Xm/Xm.h>}
//{$include <Xm/AtomMgr.h>}

const
  XmCR_WM_PROTOCOLS = 6666;  

  { define the XM_PROTOCOLS atom for use in  routines  }

function XM_WM_PROTOCOL_ATOM(shell : TWidget) : TAtom;

procedure XmAddWMProtocols(shell :TWidget; protocols:PAtom; num_protocols : TCardinal);
procedure XmRemoveWMProtocols(shell :TWidget; protocols:PAtom; num_protocols : TCardinal);

procedure XmAddWMProtocolCallback(shell :TWidget; protocol:TAtom; callback:TXtCallbackProc; closure : TXtPointer);
procedure XmRemoveWMProtocolCallback(shell :TWidget; protocol:TAtom; callback:TXtCallbackProc; closure : TXtPointer);

procedure XmActivateWMProtocol(shell:TWidget;protocol : TAtom);
procedure XmDeactivateWMProtocol(shell:TWidget;protocol : TAtom);

procedure XmSetWMProtocolHooks(shell:TWidget; protocol:TAtom; pre_h:TXtCallbackProc;pre_c:TXtPointer;post_h:TXtCallbackProc;post_c : TXtPointer);

{*******    Public Function Declarations    ******* }
procedure XmAddProtocols(shell:TWidget; _property:TAtom; protocols:PAtom; num_protocols:TCardinal);cdecl;external libXm;
procedure XmRemoveProtocols(shell:TWidget; _property:TAtom; protocols:PAtom; num_protocols:TCardinal);cdecl;external libXm;
procedure XmAddProtocolCallback(shell:TWidget; _property:TAtom; proto_atom:TAtom; callback:TXtCallbackProc; closure:TXtPointer);cdecl;external libXm;
procedure XmRemoveProtocolCallback(shell:TWidget; _property:TAtom; proto_atom:TAtom; callback:TXtCallbackProc; closure:TXtPointer);cdecl;external libXm;
procedure XmActivateProtocol(shell:TWidget; _property:TAtom; proto_atom:TAtom);cdecl;external libXm;
procedure XmDeactivateProtocol(shell:TWidget; _property:TAtom; proto_atom:TAtom);cdecl;external libXm;
procedure XmSetProtocolHooks(shell:TWidget; _property:TAtom; proto_atom:TAtom; pre_hook:TXtCallbackProc; pre_closure:TXtPointer; 
            post_hook:TXtCallbackProc; post_closure:TXtPointer);cdecl;external libXm;
{*******    End Public Function Declarations    ******* }

implementation

function XM_WM_PROTOCOL_ATOM(shell: TWidget): TAtom;
begin
  XM_WM_PROTOCOL_ATOM:=XInternAtom(XtDisplay(shell),'WM_PROTOCOLS',False);
end;

procedure XmAddWMProtocols(shell: TWidget; protocols: PAtom; num_protocols: TCardinal);
begin
  XmAddProtocols(shell,XM_WM_PROTOCOL_ATOM(shell),protocols,num_protocols);
end;

procedure XmRemoveWMProtocols(shell: TWidget; protocols: PAtom;
  num_protocols: TCardinal);
begin
  XmRemoveProtocols(shell,XM_WM_PROTOCOL_ATOM(shell),protocols,num_protocols);
end;

procedure XmAddWMProtocolCallback(shell: TWidget; protocol: TAtom;
  callback: TXtCallbackProc; closure: TXtPointer);
begin
  XmAddProtocolCallback(shell,XM_WM_PROTOCOL_ATOM(shell),protocol,callback,closure);
end;

procedure XmRemoveWMProtocolCallback(shell: TWidget; protocol: TAtom;  callback: TXtCallbackProc; closure: TXtPointer);
begin
  XmRemoveProtocolCallback(shell,XM_WM_PROTOCOL_ATOM(shell),protocol,callback,closure);
end;

procedure XmActivateWMProtocol(shell: TWidget; protocol: TAtom);
begin
  XmActivateProtocol(shell,XM_WM_PROTOCOL_ATOM(shell),protocol);
end;

procedure XmDeactivateWMProtocol(shell: TWidget; protocol: TAtom);
begin
  XmDeactivateProtocol(shell,XM_WM_PROTOCOL_ATOM(shell),protocol);
end;

procedure XmSetWMProtocolHooks(shell: TWidget; protocol: TAtom;  pre_h: TXtCallbackProc; pre_c: TXtPointer; post_h: TXtCallbackProc;  post_c: TXtPointer);
begin
  XmSetProtocolHooks(shell,XM_WM_PROTOCOL_ATOM(shell),protocol,pre_h,pre_c,post_h,post_c);
end;

end.
