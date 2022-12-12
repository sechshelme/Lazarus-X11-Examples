
unit Xatom;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Xatom.h
  The following command line parameters were used:
    /usr/include/X11/Xatom.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Xatom.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef XATOM_H}

  const
    XATOM_H = 1;    


  function XA_PRIMARY : Atom;    

  function XA_SECONDARY : Atom;    

  function XA_ARC : Atom;    

  function XA_ATOM : Atom;    

  function XA_BITMAP : Atom;    

  function XA_CARDINAL : Atom;    

  function XA_COLORMAP : Atom;    

  function XA_CURSOR : Atom;    

  function XA_CUT_BUFFER0 : Atom;    

  function XA_CUT_BUFFER1 : Atom;    

  function XA_CUT_BUFFER2 : Atom;    

  function XA_CUT_BUFFER3 : Atom;    

  function XA_CUT_BUFFER4 : Atom;    

  function XA_CUT_BUFFER5 : Atom;    

  function XA_CUT_BUFFER6 : Atom;    

  function XA_CUT_BUFFER7 : Atom;    

  function XA_DRAWABLE : Atom;    

  function XA_FONT : Atom;    

  function XA_INTEGER : Atom;    

  function XA_PIXMAP : Atom;    

  function XA_POINT : Atom;    

  function XA_RECTANGLE : Atom;    

  function XA_RESOURCE_MANAGER : Atom;    

  function XA_RGB_COLOR_MAP : Atom;    

  function XA_RGB_BEST_MAP : Atom;    

  function XA_RGB_BLUE_MAP : Atom;    

  function XA_RGB_DEFAULT_MAP : Atom;    

  function XA_RGB_GRAY_MAP : Atom;    

  function XA_RGB_GREEN_MAP : Atom;    

  function XA_RGB_RED_MAP : Atom;    

  function XA_STRING : Atom;    

  function XA_VISUALID : Atom;    

  function XA_WINDOW : Atom;    

  function XA_WM_COMMAND : Atom;    

  function XA_WM_HINTS : Atom;    

  function XA_WM_CLIENT_MACHINE : Atom;    

  function XA_WM_ICON_NAME : Atom;    

  function XA_WM_ICON_SIZE : Atom;    

  function XA_WM_NAME : Atom;    

  function XA_WM_NORMAL_HINTS : Atom;    

  function XA_WM_SIZE_HINTS : Atom;    

  function XA_WM_ZOOM_HINTS : Atom;    

  function XA_MIN_SPACE : Atom;    

  function XA_NORM_SPACE : Atom;    

  function XA_MAX_SPACE : Atom;    

  function XA_END_SPACE : Atom;    

  function XA_SUPERSCRIPT_X : Atom;    

  function XA_SUPERSCRIPT_Y : Atom;    

  function XA_SUBSCRIPT_X : Atom;    

  function XA_SUBSCRIPT_Y : Atom;    

  function XA_UNDERLINE_POSITION : Atom;    

  function XA_UNDERLINE_THICKNESS : Atom;    

  function XA_STRIKEOUT_ASCENT : Atom;    

  function XA_STRIKEOUT_DESCENT : Atom;    

  function XA_ITALIC_ANGLE : Atom;    

  function XA_X_HEIGHT : Atom;    

  function XA_QUAD_WIDTH : Atom;    

  function XA_WEIGHT : Atom;    

  function XA_POINT_SIZE : Atom;    

  function XA_RESOLUTION : Atom;    

  function XA_COPYRIGHT : Atom;    

  function XA_NOTICE : Atom;    

  function XA_FONT_NAME : Atom;    

  function XA_FAMILY_NAME : Atom;    

  function XA_FULL_NAME : Atom;    

  function XA_CAP_HEIGHT : Atom;    

  function XA_WM_CLASS : Atom;    

  function XA_WM_TRANSIENT_FOR : Atom;    

  function XA_LAST_PREDEFINED : Atom;    

{$endif}


implementation

  function XA_PRIMARY : Atom;
    begin
      XA_PRIMARY:=Atom(1);
    end;

  function XA_SECONDARY : Atom;
    begin
      XA_SECONDARY:=Atom(2);
    end;

  function XA_ARC : Atom;
    begin
      XA_ARC:=Atom(3);
    end;

  function XA_ATOM : Atom;
    begin
      XA_ATOM:=Atom(4);
    end;

  function XA_BITMAP : Atom;
    begin
      XA_BITMAP:=Atom(5);
    end;

  function XA_CARDINAL : Atom;
    begin
      XA_CARDINAL:=Atom(6);
    end;

  function XA_COLORMAP : Atom;
    begin
      XA_COLORMAP:=Atom(7);
    end;

  function XA_CURSOR : Atom;
    begin
      XA_CURSOR:=Atom(8);
    end;

  function XA_CUT_BUFFER0 : Atom;
    begin
      XA_CUT_BUFFER0:=Atom(9);
    end;

  function XA_CUT_BUFFER1 : Atom;
    begin
      XA_CUT_BUFFER1:=Atom(10);
    end;

  function XA_CUT_BUFFER2 : Atom;
    begin
      XA_CUT_BUFFER2:=Atom(11);
    end;

  function XA_CUT_BUFFER3 : Atom;
    begin
      XA_CUT_BUFFER3:=Atom(12);
    end;

  function XA_CUT_BUFFER4 : Atom;
    begin
      XA_CUT_BUFFER4:=Atom(13);
    end;

  function XA_CUT_BUFFER5 : Atom;
    begin
      XA_CUT_BUFFER5:=Atom(14);
    end;

  function XA_CUT_BUFFER6 : Atom;
    begin
      XA_CUT_BUFFER6:=Atom(15);
    end;

  function XA_CUT_BUFFER7 : Atom;
    begin
      XA_CUT_BUFFER7:=Atom(16);
    end;

  function XA_DRAWABLE : Atom;
    begin
      XA_DRAWABLE:=Atom(17);
    end;

  function XA_FONT : Atom;
    begin
      XA_FONT:=Atom(18);
    end;

  function XA_INTEGER : Atom;
    begin
      XA_INTEGER:=Atom(19);
    end;

  function XA_PIXMAP : Atom;
    begin
      XA_PIXMAP:=Atom(20);
    end;

  function XA_POINT : Atom;
    begin
      XA_POINT:=Atom(21);
    end;

  function XA_RECTANGLE : Atom;
    begin
      XA_RECTANGLE:=Atom(22);
    end;

  function XA_RESOURCE_MANAGER : Atom;
    begin
      XA_RESOURCE_MANAGER:=Atom(23);
    end;

  function XA_RGB_COLOR_MAP : Atom;
    begin
      XA_RGB_COLOR_MAP:=Atom(24);
    end;

  function XA_RGB_BEST_MAP : Atom;
    begin
      XA_RGB_BEST_MAP:=Atom(25);
    end;

  function XA_RGB_BLUE_MAP : Atom;
    begin
      XA_RGB_BLUE_MAP:=Atom(26);
    end;

  function XA_RGB_DEFAULT_MAP : Atom;
    begin
      XA_RGB_DEFAULT_MAP:=Atom(27);
    end;

  function XA_RGB_GRAY_MAP : Atom;
    begin
      XA_RGB_GRAY_MAP:=Atom(28);
    end;

  function XA_RGB_GREEN_MAP : Atom;
    begin
      XA_RGB_GREEN_MAP:=Atom(29);
    end;

  function XA_RGB_RED_MAP : Atom;
    begin
      XA_RGB_RED_MAP:=Atom(30);
    end;

  function XA_STRING : Atom;
    begin
      XA_STRING:=Atom(31);
    end;

  function XA_VISUALID : Atom;
    begin
      XA_VISUALID:=Atom(32);
    end;

  function XA_WINDOW : Atom;
    begin
      XA_WINDOW:=Atom(33);
    end;

  function XA_WM_COMMAND : Atom;
    begin
      XA_WM_COMMAND:=Atom(34);
    end;

  function XA_WM_HINTS : Atom;
    begin
      XA_WM_HINTS:=Atom(35);
    end;

  function XA_WM_CLIENT_MACHINE : Atom;
    begin
      XA_WM_CLIENT_MACHINE:=Atom(36);
    end;

  function XA_WM_ICON_NAME : Atom;
    begin
      XA_WM_ICON_NAME:=Atom(37);
    end;

  function XA_WM_ICON_SIZE : Atom;
    begin
      XA_WM_ICON_SIZE:=Atom(38);
    end;

  function XA_WM_NAME : Atom;
    begin
      XA_WM_NAME:=Atom(39);
    end;

  function XA_WM_NORMAL_HINTS : Atom;
    begin
      XA_WM_NORMAL_HINTS:=Atom(40);
    end;

  function XA_WM_SIZE_HINTS : Atom;
    begin
      XA_WM_SIZE_HINTS:=Atom(41);
    end;

  function XA_WM_ZOOM_HINTS : Atom;
    begin
      XA_WM_ZOOM_HINTS:=Atom(42);
    end;

  function XA_MIN_SPACE : Atom;
    begin
      XA_MIN_SPACE:=Atom(43);
    end;

  function XA_NORM_SPACE : Atom;
    begin
      XA_NORM_SPACE:=Atom(44);
    end;

  function XA_MAX_SPACE : Atom;
    begin
      XA_MAX_SPACE:=Atom(45);
    end;

  function XA_END_SPACE : Atom;
    begin
      XA_END_SPACE:=Atom(46);
    end;

  function XA_SUPERSCRIPT_X : Atom;
    begin
      XA_SUPERSCRIPT_X:=Atom(47);
    end;

  function XA_SUPERSCRIPT_Y : Atom;
    begin
      XA_SUPERSCRIPT_Y:=Atom(48);
    end;

  function XA_SUBSCRIPT_X : Atom;
    begin
      XA_SUBSCRIPT_X:=Atom(49);
    end;

  function XA_SUBSCRIPT_Y : Atom;
    begin
      XA_SUBSCRIPT_Y:=Atom(50);
    end;

  function XA_UNDERLINE_POSITION : Atom;
    begin
      XA_UNDERLINE_POSITION:=Atom(51);
    end;

  function XA_UNDERLINE_THICKNESS : Atom;
    begin
      XA_UNDERLINE_THICKNESS:=Atom(52);
    end;

  function XA_STRIKEOUT_ASCENT : Atom;
    begin
      XA_STRIKEOUT_ASCENT:=Atom(53);
    end;

  function XA_STRIKEOUT_DESCENT : Atom;
    begin
      XA_STRIKEOUT_DESCENT:=Atom(54);
    end;

  function XA_ITALIC_ANGLE : Atom;
    begin
      XA_ITALIC_ANGLE:=Atom(55);
    end;

  function XA_X_HEIGHT : Atom;
    begin
      XA_X_HEIGHT:=Atom(56);
    end;

  function XA_QUAD_WIDTH : Atom;
    begin
      XA_QUAD_WIDTH:=Atom(57);
    end;

  function XA_WEIGHT : Atom;
    begin
      XA_WEIGHT:=Atom(58);
    end;

  function XA_POINT_SIZE : Atom;
    begin
      XA_POINT_SIZE:=Atom(59);
    end;

  function XA_RESOLUTION : Atom;
    begin
      XA_RESOLUTION:=Atom(60);
    end;

  function XA_COPYRIGHT : Atom;
    begin
      XA_COPYRIGHT:=Atom(61);
    end;

  function XA_NOTICE : Atom;
    begin
      XA_NOTICE:=Atom(62);
    end;

  function XA_FONT_NAME : Atom;
    begin
      XA_FONT_NAME:=Atom(63);
    end;

  function XA_FAMILY_NAME : Atom;
    begin
      XA_FAMILY_NAME:=Atom(64);
    end;

  function XA_FULL_NAME : Atom;
    begin
      XA_FULL_NAME:=Atom(65);
    end;

  function XA_CAP_HEIGHT : Atom;
    begin
      XA_CAP_HEIGHT:=Atom(66);
    end;

  function XA_WM_CLASS : Atom;
    begin
      XA_WM_CLASS:=Atom(67);
    end;

  function XA_WM_TRANSIENT_FOR : Atom;
    begin
      XA_WM_TRANSIENT_FOR:=Atom(68);
    end;

  function XA_LAST_PREDEFINED : Atom;
    begin
      XA_LAST_PREDEFINED:=Atom(68);
    end;


end.
