
unit Xresource;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xresource.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xresource.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xresource.pp
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


(* error 
extern char *Xpermalloc(

in declaration at line 76 *)

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


(* error 
    _Xconst char* 	/* string */

 in declarator_list *)
(* error 
    _Xconst char* 	/* string */

 in declarator_list *)


function XrmQuarkToString(para1:TXrmQuark):TXrmString;cdecl;external;
function XrmUniqueQuark:TXrmQuark;cdecl;external;
    function XrmStringsEqual(a1,a2 : longint) : longint;    


    type
      PXrmBinding = ^TXrmBinding;
      TXrmBinding = (XrmBindTightly,XrmBindLoosely);
      TXrmBindingList = PXrmBinding;
      PXrmBindingList = ^TXrmBindingList;
(* error 
    _Xconst char*	/* string */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* string */,
 in declarator_list *)

(* error 
);
 in declarator_list *)


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
(* error 
    _Xconst char*	/* specifier */,
(* error 
    _Xconst char*	/* type */,
(* error 
    XrmValue*		/* value */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* value */

 in declarator_list *)
(* error 
    _Xconst char*	/* specifier */,
(* error 
    _Xconst char*	/* value */

 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* line */

 in declarator_list *)

function XrmQGetResource(para1:TXrmDatabase; para2:TXrmNameList; para3:TXrmClassList; para4:PXrmRepresentation; para5:PXrmValue):TBool;cdecl;external;
(* error 
    _Xconst char*	/* str_name */,
(* error 
    _Xconst char*	/* str_class */,
(* error 
    char**		/* str_type_return */,
(* error 
    XrmValue*		/* value_return */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)

function XrmQGetSearchList(para1:TXrmDatabase; para2:TXrmNameList; para3:TXrmClassList; para4:TXrmSearchList; para5:longint):TBool;cdecl;external;

function XrmQGetSearchResource(para1:TXrmSearchList; para2:TXrmName; para3:TXrmClass; para4:PXrmRepresentation; para5:PXrmValue):TBool;cdecl;external;

{$ifndef _XP_PRINT_SERVER_}


procedure XrmSetDatabase(para1:PDisplay; para2:TXrmDatabase);cdecl;external;

function XrmGetDatabase(para1:PDisplay):TXrmDatabase;cdecl;external;
{$endif}

(* error 
    _Xconst char*	/* filename */

 in declarator_list *)
(* error 
    _Xconst char* 	/* filename */,
(* error 
    XrmDatabase*	/* target */,

(* error 
);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
    _Xconst char*	/* data */  /*  null terminated string */

 in declarator_list *)
(* error 
    _Xconst char*	/* filename */

 in declarator_list *)


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
        XrmoptionSkipLine,XrmoptionSkipNArgs
        );





      PXrmOptionDescRec = ^TXrmOptionDescRec;
      TXrmOptionDescRec = record
          option : Pchar;
          specifier : Pchar;
          argKind : TXrmOptionKind;
          value : TXPointer;
        end;
      TXrmOptionDescList = PXrmOptionDescRec;
      PXrmOptionDescList = ^TXrmOptionDescList;
(* error 
    _Xconst char*	/* name */,
(* error 
    int*		/* argc_in_out */,
(* error 
    char**		/* argv_in_out */

 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
{$endif}


(* error 
/* DON'T ADD STUFF AFTER THIS #endif */

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
