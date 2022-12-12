
unit Xresource;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xresource.h
  The following command line parameters were used:
    /usr/include/X11/Xresource.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xresource.pp
}

    Type
    PDisplay  = ^Display;
    PXrmDatabase  = ^XrmDatabase;
    PXrmRepresentation  = ^XrmRepresentation;
    PXrmValue  = ^XrmValue;
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
      XrmQuark = longint;
      XrmQuarkList = ^XrmQuark;

    function NULLQUARK : XrmQuark;      


    type
      XrmString = ^char;

    function NULLSTRING : XrmString;      


(* error 
    _Xconst char* 	/* string */

 in declarator_list *)
(* error 
    _Xconst char* 	/* string */

 in declarator_list *)


    function XrmQuarkToString(_para1:XrmQuark):XrmString;cdecl;

    function XrmUniqueQuark:XrmQuark;cdecl;

    function XrmStringsEqual(a1,a2 : longint) : longint;    



    type
      XrmBinding = (XrmBindTightly,XrmBindLoosely);
      XrmBindingList = ^XrmBinding;
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


      XrmName = XrmQuark;

      XrmNameList = XrmQuarkList;

    function XrmNameToString(name : longint) : longint;    

    function XrmStringToName(_string : longint) : longint;    

    function XrmStringToNameList(str,name : longint) : longint;    


    type
      XrmClass = XrmQuark;

      XrmClassList = XrmQuarkList;

    function XrmClassToString(c_class : longint) : longint;    

    function XrmStringToClass(c_class : longint) : longint;    

    function XrmStringToClassList(str,c_class : longint) : longint;    



    type
      XrmRepresentation = XrmQuark;

    function XrmStringToRepresentation(_string : longint) : longint;    

    function XrmRepresentationToString(_type : longint) : longint;    


    type
      XrmValue = record
          size : dword;
          addr : XPointer;
        end;
      XrmValuePtr = ^XrmValue;


      XrmHashBucket = ^_XrmHashBucketRec;

      XrmHashTable = ^XrmHashBucket;

      XrmSearchList = ^XrmHashTable;

      XrmDatabase = ^_XrmHashBucketRec;


    procedure XrmDestroyDatabase(_para1:XrmDatabase);cdecl;


    procedure XrmQPutResource(_para1:PXrmDatabase; _para2:XrmBindingList; _para3:XrmQuarkList; _para4:XrmRepresentation; _para5:PXrmValue);cdecl;

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

    function XrmQGetResource(_para1:XrmDatabase; _para2:XrmNameList; _para3:XrmClassList; _para4:PXrmRepresentation; _para5:PXrmValue):Bool;cdecl;

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

    function XrmQGetSearchList(_para1:XrmDatabase; _para2:XrmNameList; _para3:XrmClassList; _para4:XrmSearchList; _para5:longint):Bool;cdecl;


    function XrmQGetSearchResource(_para1:XrmSearchList; _para2:XrmName; _para3:XrmClass; _para4:PXrmRepresentation; _para5:PXrmValue):Bool;cdecl;


{$ifndef _XP_PRINT_SERVER_}


    procedure XrmSetDatabase(_para1:PDisplay; _para2:XrmDatabase);cdecl;


    function XrmGetDatabase(_para1:PDisplay):XrmDatabase;cdecl;

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


    procedure XrmMergeDatabases(_para1:XrmDatabase; _para2:PXrmDatabase);cdecl;


    procedure XrmCombineDatabase(_para1:XrmDatabase; _para2:PXrmDatabase; _para3:Bool);cdecl;

    const
      XrmEnumAllLevels = 0;      
      XrmEnumOneLevel = 1;      



    function XrmEnumerateDatabase(_para1:XrmDatabase; _para2:XrmNameList; _para3:XrmClassList; _para4:longint; _para5:function (_para1:PXrmDatabase; _para2:XrmBindingList; _para3:XrmQuarkList; _para4:PXrmRepresentation; _para5:PXrmValue; 
                          _para6:XPointer):Bool; 
               _para6:XPointer):Bool;cdecl;


    function XrmLocaleOfDatabase(_para1:XrmDatabase):^char;cdecl;











    type
      XrmOptionKind = (XrmoptionNoArg,XrmoptionIsArg,XrmoptionStickyArg,
        XrmoptionSepArg,XrmoptionResArg,XrmoptionSkipArg,
        XrmoptionSkipLine,XrmoptionSkipNArgs
        );





      XrmOptionDescRec = record
          option : ^char;
          specifier : ^char;
          argKind : XrmOptionKind;
          value : XPointer;
        end;
      XrmOptionDescList = ^XrmOptionDescRec;
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

    function NULLQUARK : XrmQuark;
      begin
        NULLQUARK:=XrmQuark(0);
      end;

    function NULLSTRING : XrmString;
      begin
        NULLSTRING:=XrmString(0);
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
