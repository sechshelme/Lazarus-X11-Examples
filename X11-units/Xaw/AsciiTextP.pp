
unit AsciiTextP;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/AsciiTextP.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/AsciiTextP.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/AsciiTextP.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _AsciiTextP_h}
{$define _AsciiTextP_h}  
{$include <X11/Xaw/TextP.h>}
{$include <X11/Xaw/AsciiText.h>}
{$include <X11/Xaw/AsciiSrc.h>}
{$include <X11/Xaw/MultiSrc.h>}

  type
    AsciiClassPart = record
        extension : XtPointer;
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
{$ifndef OLDXAW}

{$endif}

  type
    AsciiPart = record
        resource : longint;
        pad : array[0..3] of XtPointer;
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
        extension : XtPointer;
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
{$ifndef OLDXAW}

{$endif}

  type
    AsciiStringPart = record
        resource : longint;
        pad : array[0..3] of XtPointer;
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
        extension : XtPointer;
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
{$ifndef OLDXAW}

{$endif}

  type
    AsciiDiskPart = record
        resource : char;
        pad : array[0..3] of XtPointer;
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
