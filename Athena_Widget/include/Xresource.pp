
unit Xresource;
interface

{
  Automatically converted by H2Pas 1.0.0 from Xresource.h
  The following command line parameters were used:
    -p
    -T
    -S
    -d
    -c
    Xresource.h
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PDisplay  = ^Display;
Plongint  = ^longint;
PXrmBinding  = ^XrmBinding;
PXrmBindingList  = ^XrmBindingList;
PXrmClass  = ^XrmClass;
PXrmClassList  = ^XrmClassList;
PXrmDatabase  = ^XrmDatabase;
PXrmHashBucket  = ^XrmHashBucket;
PXrmHashBucketRec  = ^XrmHashBucketRec;
PXrmHashTable  = ^XrmHashTable;
PXrmName  = ^XrmName;
PXrmNameList  = ^XrmNameList;
PXrmOptionDescList  = ^XrmOptionDescList;
PXrmOptionDescRec  = ^XrmOptionDescRec;
PXrmOptionKind  = ^XrmOptionKind;
PXrmQuark  = ^XrmQuark;
PXrmQuarkList  = ^XrmQuarkList;
PXrmRepresentation  = ^XrmRepresentation;
PXrmSearchList  = ^XrmSearchList;
PXrmString  = ^XrmString;
PXrmValue  = ^XrmValue;
PXrmValuePtr  = ^XrmValuePtr;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _X11_XRESOURCE_H_}
{$define _X11_XRESOURCE_H_}
{$ifndef _XP_PRINT_SERVER_}
{$include <X11/Xlib.h>}
{$endif}




function Xpermalloc(para1:dword):Pchar;cdecl;external;

type
  PXrmQuark = ^TXrmQuark;
  TXrmQuark = longint;
  TXrmQuarkList = PXrmQuark;
  PXrmQuarkList = ^TXrmQuarkList;

function NULLQUARK : TXrmQuark;  

type
  PXrmString = ^TXrmString;
  TXrmString = Pchar;

function NULLSTRING : TXrmString;  



function XrmStringToQuark(para1:Pchar):TXrmQuark;cdecl;external;

function XrmPermStringToQuark(para1:Pchar):TXrmQuark;cdecl;external;


function XrmQuarkToString(para1:TXrmQuark):TXrmString;cdecl;external;
function XrmUniqueQuark:TXrmQuark;cdecl;external;
function XrmStringsEqual(a1,a2 : longint) : longint;


type
  PXrmBinding = ^TXrmBinding;
  TXrmBinding = (XrmBindTightly,XrmBindLoosely);
  TXrmBindingList = PXrmBinding;
  PXrmBindingList = ^TXrmBindingList;


procedure XrmStringToQuarkList(para1:Pchar; para2:TXrmQuarkList);cdecl;external;

procedure XrmStringToBindingQuarkList(para1:Pchar; para2:TXrmBindingList; para3:TXrmQuarkList);cdecl;external;

type
  PXrmName = ^TXrmName;
  TXrmName = TXrmQuark;

  PXrmNameList = ^TXrmNameList;
  TXrmNameList = TXrmQuarkList;

function XrmNameToString(name : longint) : longint;

function XrmStringToName(_string : longint) : longint;

function XrmStringToNameList(str,name : longint) : longint;

type
  PXrmClass = ^TXrmClass;
  TXrmClass = TXrmQuark;

  PXrmClassList = ^TXrmClassList;
  TXrmClassList = TXrmQuarkList;

function XrmClassToString(c_class : longint) : longint;

function XrmStringToClass(c_class : longint) : longint;

function XrmStringToClassList(str,c_class : longint) : longint;


type
  PXrmRepresentation = ^TXrmRepresentation;
  TXrmRepresentation = TXrmQuark;

function XrmStringToRepresentation(_string : longint) : longint;

function XrmRepresentationToString(_type : longint) : longint;

type
  PXrmValue = ^TXrmValue;
  TXrmValue = record
      size : dword;
      addr : TXPointer;
    end;
  TXrmValuePtr = PXrmValue;
  PXrmValuePtr = ^TXrmValuePtr;


  PXrmHashBucket = ^TXrmHashBucket;
  TXrmHashBucket = PXrmHashBucketRec;

  PXrmHashTable = ^TXrmHashTable;
  TXrmHashTable = PXrmHashBucket;

  PXrmSearchList = ^TXrmSearchList;
  TXrmSearchList = PXrmHashTable;

  PXrmDatabase = ^TXrmDatabase;
  TXrmDatabase = PXrmHashBucketRec;


procedure XrmDestroyDatabase(para1:TXrmDatabase);cdecl;external;

procedure XrmQPutResource(para1:PXrmDatabase; para2:TXrmBindingList; para3:TXrmQuarkList; para4:TXrmRepresentation; para5:PXrmValue);cdecl;external;

procedure XrmPutResource(para1:PXrmDatabase; para2:Pchar; para3:Pchar; para4:PXrmValue);cdecl;external;

procedure XrmQPutStringResource(para1:PXrmDatabase; para2:TXrmBindingList; para3:TXrmQuarkList; para4:Pchar);cdecl;external;

procedure XrmPutStringResource(para1:PXrmDatabase; para2:Pchar; para3:Pchar);cdecl;external;

procedure XrmPutLineResource(para1:PXrmDatabase; para2:Pchar);cdecl;external;

function XrmQGetResource(para1:TXrmDatabase; para2:TXrmNameList; para3:TXrmClassList; para4:PXrmRepresentation; para5:PXrmValue):TBool;cdecl;external;

function XrmGetResource(para1:TXrmDatabase; para2:Pchar; para3:Pchar; para4:PPchar; para5:PXrmValue):TBool;cdecl;external;

function XrmQGetSearchList(para1:TXrmDatabase; para2:TXrmNameList; para3:TXrmClassList; para4:TXrmSearchList; para5:longint):TBool;cdecl;external;

function XrmQGetSearchResource(para1:TXrmSearchList; para2:TXrmName; para3:TXrmClass; para4:PXrmRepresentation; para5:PXrmValue):TBool;cdecl;external;

{$ifndef _XP_PRINT_SERVER_}


procedure XrmSetDatabase(para1:PDisplay; para2:TXrmDatabase);cdecl;external;

function XrmGetDatabase(para1:PDisplay):TXrmDatabase;cdecl;external;
{$endif}



function XrmGetFileDatabase(para1:Pchar):TXrmDatabase;cdecl;external;

function XrmCombineFileDatabase(para1:Pchar; para2:PXrmDatabase; para3:TBool):TStatus;cdecl;external;

function XrmGetStringDatabase(para1:Pchar):TXrmDatabase;cdecl;external;

procedure XrmPutFileDatabase(para1:TXrmDatabase; para2:Pchar);cdecl;external;

procedure XrmMergeDatabases(para1:TXrmDatabase; para2:PXrmDatabase);cdecl;external;

procedure XrmCombineDatabase(para1:TXrmDatabase; para2:PXrmDatabase; para3:TBool);cdecl;external;
const
  XrmEnumAllLevels = 0;  
  XrmEnumOneLevel = 1;  



function XrmEnumerateDatabase(para1:TXrmDatabase; para2:TXrmNameList; para3:TXrmClassList; para4:longint; para5:function (para1:PXrmDatabase; para2:TXrmBindingList; para3:TXrmQuarkList; para4:PXrmRepresentation; para5:PXrmValue; 
                      para6:TXPointer):TBool; 
           para6:TXPointer):TBool;cdecl;external;

function XrmLocaleOfDatabase(para1:TXrmDatabase):Pchar;cdecl;external;









type
  PXrmOptionKind = ^TXrmOptionKind;
  TXrmOptionKind = (XrmoptionNoArg,XrmoptionIsArg,XrmoptionStickyArg,
    XrmoptionSepArg,XrmoptionResArg,XrmoptionSkipArg,
    XrmoptionSkipLine,XrmoptionSkipNArgs);





  PXrmOptionDescRec = ^TXrmOptionDescRec;
  TXrmOptionDescRec = record
      option : Pchar;
      specifier : Pchar;
      argKind : TXrmOptionKind;
      value : TXPointer;
    end;
  TXrmOptionDescList = PXrmOptionDescRec;
  PXrmOptionDescList = ^TXrmOptionDescList;


procedure XrmParseCommand(para1:PXrmDatabase; para2:TXrmOptionDescList; para3:longint; para4:Pchar; para5:Plongint; 
            para6:PPchar);cdecl;external;
{$endif}



implementation

function NULLQUARK : TXrmQuark;
  begin
    NULLQUARK:=TXrmQuark(0);
  end;

function NULLSTRING : TXrmString;
  begin
    NULLSTRING:=TXrmString(0);
  end;

function XrmStringsEqual(a1,a2 : longint) : longint;
begin
  XrmStringsEqual:=(strcmp(a1,a2))=0;
end;

function XrmNameToString(name : longint) : longint;
begin
  XrmNameToString:=XrmQuarkToString(name);
end;

function XrmStringToName(_string : longint) : longint;
begin
  XrmStringToName:=XrmStringToQuark(_string);
end;

function XrmStringToNameList(str,name : longint) : longint;
begin
  XrmStringToNameList:=XrmStringToQuarkList(str,name);
end;

function XrmClassToString(c_class : longint) : longint;
begin
  XrmClassToString:=XrmQuarkToString(c_class);
end;

function XrmStringToClass(c_class : longint) : longint;
begin
  XrmStringToClass:=XrmStringToQuark(c_class);
end;

function XrmStringToClassList(str,c_class : longint) : longint;
begin
  XrmStringToClassList:=XrmStringToQuarkList(str,c_class);
end;

function XrmStringToRepresentation(_string : longint) : longint;
begin
  XrmStringToRepresentation:=XrmStringToQuark(_string);
end;

function XrmRepresentationToString(_type : longint) : longint;
begin
  XrmRepresentationToString:=XrmQuarkToString(_type);
end;


end.
