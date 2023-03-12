unit X11Composite;

interface

uses
  x, xlib,
  X11Intrinsic;

//const
//  libXaw = 'libXaw.so';

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

  type
{ child  }

  TXtOrderProc = function (para1:TWidget):TCardinal;cdecl;
{_XFUNCPROTOBEGIN }
{ children  }{ num_children  }

procedure XtManageChildren(para1:TWidgetList; para2:TCardinal);cdecl;external libXt;
{ child  }
procedure XtManageChild(para1:TWidget);cdecl;external libXt;
{ children  }{ num_children  }
procedure XtUnmanageChildren(para1:TWidgetList; para2:TCardinal);cdecl;external libXt;
{ child  }
procedure XtUnmanageChild(para1:TWidget);cdecl;external libXt;
{ composite_parent  }{ unmanage_children  }{ num_unmanage_children  }{ manage_children  }{ num_manage_children  }{ client_data  }
type

  TXtDoChangeProc = procedure (para1:TWidget; para2:TWidgetList; para3:PCardinal; para4:TWidgetList; para5:PCardinal; 
                para6:TXtPointer);cdecl;
{ unmanage_children  }{ num_unmanage_children  }{ do_change_proc  }{ client_data  }{ manage_children  }{ num_manage_children  }

procedure XtChangeManagedSet(para1:TWidgetList; para2:TCardinal; para3:TXtDoChangeProc; para4:TXtPointer; para5:TWidgetList; 
            para6:TCardinal);cdecl;external libXt;
  var
    compositeWidgetClass : TWidgetClass;cvar;external libXt;

implementation

//type
//  PCompositeWidgetClass = ^TCompositeWidgetClass;
//  TCompositeWidgetClass = PCompositeClassRec;

end.
