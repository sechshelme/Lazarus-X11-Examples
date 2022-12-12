
unit Grip;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw3d/Grip.h
  The following command line parameters were used:
    /usr/include/X11/Xaw3d/Grip.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw3d/Grip.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef _XawGrip_h}
{$define _XawGrip_h}  
{$include <X11/Xaw3d/Simple.h>}



  const
    XtNgripTranslations = 'gripTranslations';    




  type
    _XawGripCallData = record
        event : ^XEvent;
        params : ^String;
        num_params : Cardinal;
      end;
    XawGripCallDataRec = _XawGripCallData;
    XawGripCallData = ^_XawGripCallData;
    GripCallDataRec = _XawGripCallData;
    GripCallData = ^_XawGripCallData;



    var
      gripWidgetClass : WidgetClass;cvar;external;

  type
    GripWidgetClass = ^_GripClassRec;

    GripWidget = ^_GripRec;
{$endif}


implementation


end.
