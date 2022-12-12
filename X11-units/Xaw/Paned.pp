
unit Paned;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xaw/Paned.h
  The following command line parameters were used:
    /usr/include/X11/Xaw/Paned.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xaw/Paned.pp
}

    Type
    Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XawPaned_h}
{$define _XawPaned_h}  
{$include <X11/Intrinsic.h>}
{$include <X11/Xmu/Converters.h>}


  const
    PANED_ASK_CHILD = 0;    
    PANED_GRIP_SIZE = 0;    
    XtNallowResize = 'allowResize';    
    XtNbetweenCursor = 'betweenCursor';    
    XtNverticalBetweenCursor = 'verticalBetweenCursor';    
    XtNhorizontalBetweenCursor = 'horizontalBetweenCursor';    
    XtNgripCursor = 'gripCursor';    
    XtNgripIndent = 'gripIndent';    
    XtNhorizontalGripCursor = 'horizontalGripCursor';    
    XtNinternalBorderColor = 'internalBorderColor';    
    XtNinternalBorderWidth = 'internalBorderWidth';    
    XtNleftCursor = 'leftCursor';    
    XtNlowerCursor = 'lowerCursor';    
    XtNrefigureMode = 'refigureMode';    
    XtNposition = 'position';    
    XtNmin = 'min';    
    XtNmax = 'max';    
    XtNpreferredPaneSize = 'preferredPaneSize';    
    XtNresizeToPreferred = 'resizeToPreferred';    
    XtNrightCursor = 'rightCursor';    
    XtNshowGrip = 'showGrip';    
    XtNskipAdjust = 'skipAdjust';    
    XtNupperCursor = 'upperCursor';    
    XtNverticalGripCursor = 'verticalGripCursor';    
    XtCGripIndent = 'GripIndent';    
    XtCMin = 'Min';    
    XtCMax = 'Max';    
    XtCPreferredPaneSize = 'PreferredPaneSize';    
    XtCShowGrip = 'ShowGrip';    


    var
      panedWidgetClass : WidgetClass;cvar;external;

  type
    PanedWidgetClass = ^_PanedClassRec;

    PanedWidget = ^_PanedRec;


(* error 
void XawPanedSetMinMax
in declaration at line 177 *)


    procedure XawPanedGetMinMax(w:Widget; min_return:Plongint; max_return:Plongint);


{$if NeedWidePrototypes}
{$else}
(* error 
 Boolean		mode
{$endif}
 in declarator_list *)


    function XawPanedGetNumSub(w:Widget):longint;


{$if NeedWidePrototypes}
{$else}
(* error 
 Boolean		allow_resize
{$endif}
 in declarator_list *)
{$endif}

(* error 
#endif /* _XawPaned_h */

implementation

    procedure XawPanedGetMinMax(w:Widget; min_return:Plongint; max_return:Plongint);
    begin
      { You must implement this function }
    end;
    function XawPanedGetNumSub(w:Widget):longint;
    begin
      { You must implement this function }
    end;

end.
