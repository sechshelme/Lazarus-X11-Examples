
unit AsciiTextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/AsciiTextP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/AsciiTextP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/AsciiTextP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}






{$ifndef _AsciiTextP_h}
{$define _AsciiTextP_h}  
{$include "Xaw3dP.h"}
{$include <X11/Xaw3d/TextP.h>}
{$include <X11/Xaw3d/AsciiText.h>}
{$include <X11/Xaw3d/AsciiSrc.h>}
{$ifdef XAW_INTERNATIONALIZATION}
{$include <X11/Xaw3d/MultiSrc.h>}
{$endif}

  type
    AsciiClassPart = record
        empty : longint;
      end;

    _AsciiTextClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        text_class : TextClassPart;
        ascii_class : AsciiClassPart;
      end;
    AsciiTextClassRec = _AsciiTextClassRec;

    var
      asciiTextClassRec : AsciiTextClassRec;cvar;external;

  type
    AsciiPart = record
        foo : char;
      end;

    _AsciiRec = record
        core : CorePart;
        simple : SimplePart;
        text : TextPart;
        ascii : AsciiPart;
      end;
    AsciiRec = _AsciiRec;
{$ifdef ASCII_STRING}

    AsciiStringClassPart = record
        empty : longint;
      end;

    _AsciiStringClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        text_class : TextClassPart;
        ascii_class : AsciiClassPart;
        string_class : AsciiStringClassPart;
      end;
    AsciiStringClassRec = _AsciiStringClassRec;

    var
      asciiStringClassRec : AsciiStringClassRec;cvar;external;

  type
    AsciiStringPart = record
        foo : char;
      end;

    _AsciiStringRec = record
        core : CorePart;
        simple : SimplePart;
        text : TextPart;
        ascii : AsciiPart;
        ascii_str : AsciiStringPart;
      end;
    AsciiStringRec = _AsciiStringRec;
{$endif}

{$ifdef ASCII_DISK}

  type
    AsciiDiskClassPart = record
        empty : longint;
      end;

    _AsciiDiskClassRec = record
        core_class : CoreClassPart;
        simple_class : SimpleClassPart;
        text_class : TextClassPart;
        ascii_class : AsciiClassPart;
        disk_class : AsciiDiskClassPart;
      end;
    AsciiDiskClassRec = _AsciiDiskClassRec;

    var
      asciiDiskClassRec : AsciiDiskClassRec;cvar;external;

  type
    AsciiDiskPart = record
        foo : char;
      end;

    _AsciiDiskRec = record
        core : CorePart;
        simple : SimplePart;
        text : TextPart;
        ascii : AsciiPart;
        ascii_disk : AsciiDiskPart;
      end;
    AsciiDiskRec = _AsciiDiskRec;
{$endif}

{$endif}


implementation


end.
