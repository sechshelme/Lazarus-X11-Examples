
unit test;
interface

{
  Automatically converted by H2Pas 1.0.0 from test.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -l
    libXaw.so
    test.h
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
PCoreWidget  = ^CoreWidget;
PCoreWidgetClass  = ^CoreWidgetClass;
PWidgetClassRec  = ^WidgetClassRec;
PWidgetRec  = ^WidgetRec;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



const
  tt = 'sdfsdafsdfsfdasffsdf';  
{const **ch (char *[]"abc","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","Ich bin ein sehr langer Text",0 }
(* error 
char **temp = (char *[]){"abc", "def","fg"};
 in declarator_list *)
(* error 
char **temp = (char *[]){"abc", "def","fg"};
(* error 
char **temp = (char *[]){"abc", "def","fg"};
(* error 
char **temp = (char *[]){"abc", "def","fg"};
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
type
  PCoreWidgetClass = ^TCoreWidgetClass;
  TCoreWidgetClass = PWidgetClassRec;

  PCoreWidget = ^TCoreWidget;
  TCoreWidget = PWidgetRec;
  var
    coreWidgetClass : TWidgetClass;cvar;external;
{$ifndef VMS}
  var
    widgetClass : TWidgetClass;cvar;external;
{$endif}
{$endif}
{ _XtCore_h  }
{ DON'T ADD STUFF AFTER THIS #endif  }

implementation


end.
