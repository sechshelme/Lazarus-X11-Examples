
unit AsciiText;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/AsciiText.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/AsciiText.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/AsciiText.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _AsciiText_h}
{$define _AsciiText_h}  
{$include <X11/Xaw/Text.h>}
{$include <X11/Xaw/AsciiSrc.h>}
{$include <X11/Xaw/MultiSrc.h>}


  type
    AsciiTextWidgetClass = ^_AsciiTextClassRec;

    AsciiWidget = ^_AsciiRec;

    var
      asciiTextWidgetClass : WidgetClass;cvar;external;

{$ifdef ASCII_STRING}
      asciiStringWidgetClass : WidgetClass;cvar;external;
{$endif}
{$ifdef ASCII_DISK}

    var
      asciiDiskWidgetClass : WidgetClass;cvar;external;
{$endif}
{$endif}


implementation


end.
