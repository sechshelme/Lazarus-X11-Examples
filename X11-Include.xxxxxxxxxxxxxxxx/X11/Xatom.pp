
unit Xatom;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xatom.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xatom.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Xatom.pp
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef XATOM_H}

const
  XATOM_H = 1;  


function XA_PRIMARY : TAtom;  

function XA_SECONDARY : TAtom;  

function XA_ARC : TAtom;  

function XA_ATOM : TAtom;  

function XA_BITMAP : TAtom;  

function XA_CARDINAL : TAtom;  

function XA_COLORMAP : TAtom;  

function XA_CURSOR : TAtom;  

function XA_CUT_BUFFER0 : TAtom;  

function XA_CUT_BUFFER1 : TAtom;  

function XA_CUT_BUFFER2 : TAtom;  

function XA_CUT_BUFFER3 : TAtom;  

function XA_CUT_BUFFER4 : TAtom;  

function XA_CUT_BUFFER5 : TAtom;  

function XA_CUT_BUFFER6 : TAtom;  

function XA_CUT_BUFFER7 : TAtom;  

function XA_DRAWABLE : TAtom;  

function XA_FONT : TAtom;  

function XA_INTEGER : TAtom;  

function XA_PIXMAP : TAtom;  

function XA_POINT : TAtom;  

function XA_RECTANGLE : TAtom;  

function XA_RESOURCE_MANAGER : TAtom;  

function XA_RGB_COLOR_MAP : TAtom;  

function XA_RGB_BEST_MAP : TAtom;  

function XA_RGB_BLUE_MAP : TAtom;  

function XA_RGB_DEFAULT_MAP : TAtom;  

function XA_RGB_GRAY_MAP : TAtom;  

function XA_RGB_GREEN_MAP : TAtom;  

function XA_RGB_RED_MAP : TAtom;  

function XA_STRING : TAtom;  

function XA_VISUALID : TAtom;  

function XA_WINDOW : TAtom;  

function XA_WM_COMMAND : TAtom;  

function XA_WM_HINTS : TAtom;  

function XA_WM_CLIENT_MACHINE : TAtom;  

function XA_WM_ICON_NAME : TAtom;  

function XA_WM_ICON_SIZE : TAtom;  

function XA_WM_NAME : TAtom;  

function XA_WM_NORMAL_HINTS : TAtom;  

function XA_WM_SIZE_HINTS : TAtom;  

function XA_WM_ZOOM_HINTS : TAtom;  

function XA_MIN_SPACE : TAtom;  

function XA_NORM_SPACE : TAtom;  

function XA_MAX_SPACE : TAtom;  

function XA_END_SPACE : TAtom;  

function XA_SUPERSCRIPT_X : TAtom;  

function XA_SUPERSCRIPT_Y : TAtom;  

function XA_SUBSCRIPT_X : TAtom;  

function XA_SUBSCRIPT_Y : TAtom;  

function XA_UNDERLINE_POSITION : TAtom;  

function XA_UNDERLINE_THICKNESS : TAtom;  

function XA_STRIKEOUT_ASCENT : TAtom;  

function XA_STRIKEOUT_DESCENT : TAtom;  

function XA_ITALIC_ANGLE : TAtom;  

function XA_X_HEIGHT : TAtom;  

function XA_QUAD_WIDTH : TAtom;  

function XA_WEIGHT : TAtom;  

function XA_POINT_SIZE : TAtom;  

function XA_RESOLUTION : TAtom;  

function XA_COPYRIGHT : TAtom;  

function XA_NOTICE : TAtom;  

function XA_FONT_NAME : TAtom;  

function XA_FAMILY_NAME : TAtom;  

function XA_FULL_NAME : TAtom;  

function XA_CAP_HEIGHT : TAtom;  

function XA_WM_CLASS : TAtom;  

function XA_WM_TRANSIENT_FOR : TAtom;  

function XA_LAST_PREDEFINED : TAtom;  

{$endif}


implementation

function XA_PRIMARY : TAtom;
  begin
    XA_PRIMARY:=TAtom(1);
  end;

function XA_SECONDARY : TAtom;
  begin
    XA_SECONDARY:=TAtom(2);
  end;

function XA_ARC : TAtom;
  begin
    XA_ARC:=TAtom(3);
  end;

function XA_ATOM : TAtom;
  begin
    XA_ATOM:=TAtom(4);
  end;

function XA_BITMAP : TAtom;
  begin
    XA_BITMAP:=TAtom(5);
  end;

function XA_CARDINAL : TAtom;
  begin
    XA_CARDINAL:=TAtom(6);
  end;

function XA_COLORMAP : TAtom;
  begin
    XA_COLORMAP:=TAtom(7);
  end;

function XA_CURSOR : TAtom;
  begin
    XA_CURSOR:=TAtom(8);
  end;

function XA_CUT_BUFFER0 : TAtom;
  begin
    XA_CUT_BUFFER0:=TAtom(9);
  end;

function XA_CUT_BUFFER1 : TAtom;
  begin
    XA_CUT_BUFFER1:=TAtom(10);
  end;

function XA_CUT_BUFFER2 : TAtom;
  begin
    XA_CUT_BUFFER2:=TAtom(11);
  end;

function XA_CUT_BUFFER3 : TAtom;
  begin
    XA_CUT_BUFFER3:=TAtom(12);
  end;

function XA_CUT_BUFFER4 : TAtom;
  begin
    XA_CUT_BUFFER4:=TAtom(13);
  end;

function XA_CUT_BUFFER5 : TAtom;
  begin
    XA_CUT_BUFFER5:=TAtom(14);
  end;

function XA_CUT_BUFFER6 : TAtom;
  begin
    XA_CUT_BUFFER6:=TAtom(15);
  end;

function XA_CUT_BUFFER7 : TAtom;
  begin
    XA_CUT_BUFFER7:=TAtom(16);
  end;

function XA_DRAWABLE : TAtom;
  begin
    XA_DRAWABLE:=TAtom(17);
  end;

function XA_FONT : TAtom;
  begin
    XA_FONT:=TAtom(18);
  end;

function XA_INTEGER : TAtom;
  begin
    XA_INTEGER:=TAtom(19);
  end;

function XA_PIXMAP : TAtom;
  begin
    XA_PIXMAP:=TAtom(20);
  end;

function XA_POINT : TAtom;
  begin
    XA_POINT:=TAtom(21);
  end;

function XA_RECTANGLE : TAtom;
  begin
    XA_RECTANGLE:=TAtom(22);
  end;

function XA_RESOURCE_MANAGER : TAtom;
  begin
    XA_RESOURCE_MANAGER:=TAtom(23);
  end;

function XA_RGB_COLOR_MAP : TAtom;
  begin
    XA_RGB_COLOR_MAP:=TAtom(24);
  end;

function XA_RGB_BEST_MAP : TAtom;
  begin
    XA_RGB_BEST_MAP:=TAtom(25);
  end;

function XA_RGB_BLUE_MAP : TAtom;
  begin
    XA_RGB_BLUE_MAP:=TAtom(26);
  end;

function XA_RGB_DEFAULT_MAP : TAtom;
  begin
    XA_RGB_DEFAULT_MAP:=TAtom(27);
  end;

function XA_RGB_GRAY_MAP : TAtom;
  begin
    XA_RGB_GRAY_MAP:=TAtom(28);
  end;

function XA_RGB_GREEN_MAP : TAtom;
  begin
    XA_RGB_GREEN_MAP:=TAtom(29);
  end;

function XA_RGB_RED_MAP : TAtom;
  begin
    XA_RGB_RED_MAP:=TAtom(30);
  end;

function XA_STRING : TAtom;
  begin
    XA_STRING:=TAtom(31);
  end;

function XA_VISUALID : TAtom;
  begin
    XA_VISUALID:=TAtom(32);
  end;

function XA_WINDOW : TAtom;
  begin
    XA_WINDOW:=TAtom(33);
  end;

function XA_WM_COMMAND : TAtom;
  begin
    XA_WM_COMMAND:=TAtom(34);
  end;

function XA_WM_HINTS : TAtom;
  begin
    XA_WM_HINTS:=TAtom(35);
  end;

function XA_WM_CLIENT_MACHINE : TAtom;
  begin
    XA_WM_CLIENT_MACHINE:=TAtom(36);
  end;

function XA_WM_ICON_NAME : TAtom;
  begin
    XA_WM_ICON_NAME:=TAtom(37);
  end;

function XA_WM_ICON_SIZE : TAtom;
  begin
    XA_WM_ICON_SIZE:=TAtom(38);
  end;

function XA_WM_NAME : TAtom;
  begin
    XA_WM_NAME:=TAtom(39);
  end;

function XA_WM_NORMAL_HINTS : TAtom;
  begin
    XA_WM_NORMAL_HINTS:=TAtom(40);
  end;

function XA_WM_SIZE_HINTS : TAtom;
  begin
    XA_WM_SIZE_HINTS:=TAtom(41);
  end;

function XA_WM_ZOOM_HINTS : TAtom;
  begin
    XA_WM_ZOOM_HINTS:=TAtom(42);
  end;

function XA_MIN_SPACE : TAtom;
  begin
    XA_MIN_SPACE:=TAtom(43);
  end;

function XA_NORM_SPACE : TAtom;
  begin
    XA_NORM_SPACE:=TAtom(44);
  end;

function XA_MAX_SPACE : TAtom;
  begin
    XA_MAX_SPACE:=TAtom(45);
  end;

function XA_END_SPACE : TAtom;
  begin
    XA_END_SPACE:=TAtom(46);
  end;

function XA_SUPERSCRIPT_X : TAtom;
  begin
    XA_SUPERSCRIPT_X:=TAtom(47);
  end;

function XA_SUPERSCRIPT_Y : TAtom;
  begin
    XA_SUPERSCRIPT_Y:=TAtom(48);
  end;

function XA_SUBSCRIPT_X : TAtom;
  begin
    XA_SUBSCRIPT_X:=TAtom(49);
  end;

function XA_SUBSCRIPT_Y : TAtom;
  begin
    XA_SUBSCRIPT_Y:=TAtom(50);
  end;

function XA_UNDERLINE_POSITION : TAtom;
  begin
    XA_UNDERLINE_POSITION:=TAtom(51);
  end;

function XA_UNDERLINE_THICKNESS : TAtom;
  begin
    XA_UNDERLINE_THICKNESS:=TAtom(52);
  end;

function XA_STRIKEOUT_ASCENT : TAtom;
  begin
    XA_STRIKEOUT_ASCENT:=TAtom(53);
  end;

function XA_STRIKEOUT_DESCENT : TAtom;
  begin
    XA_STRIKEOUT_DESCENT:=TAtom(54);
  end;

function XA_ITALIC_ANGLE : TAtom;
  begin
    XA_ITALIC_ANGLE:=TAtom(55);
  end;

function XA_X_HEIGHT : TAtom;
  begin
    XA_X_HEIGHT:=TAtom(56);
  end;

function XA_QUAD_WIDTH : TAtom;
  begin
    XA_QUAD_WIDTH:=TAtom(57);
  end;

function XA_WEIGHT : TAtom;
  begin
    XA_WEIGHT:=TAtom(58);
  end;

function XA_POINT_SIZE : TAtom;
  begin
    XA_POINT_SIZE:=TAtom(59);
  end;

function XA_RESOLUTION : TAtom;
  begin
    XA_RESOLUTION:=TAtom(60);
  end;

function XA_COPYRIGHT : TAtom;
  begin
    XA_COPYRIGHT:=TAtom(61);
  end;

function XA_NOTICE : TAtom;
  begin
    XA_NOTICE:=TAtom(62);
  end;

function XA_FONT_NAME : TAtom;
  begin
    XA_FONT_NAME:=TAtom(63);
  end;

function XA_FAMILY_NAME : TAtom;
  begin
    XA_FAMILY_NAME:=TAtom(64);
  end;

function XA_FULL_NAME : TAtom;
  begin
    XA_FULL_NAME:=TAtom(65);
  end;

function XA_CAP_HEIGHT : TAtom;
  begin
    XA_CAP_HEIGHT:=TAtom(66);
  end;

function XA_WM_CLASS : TAtom;
  begin
    XA_WM_CLASS:=TAtom(67);
  end;

function XA_WM_TRANSIENT_FOR : TAtom;
  begin
    XA_WM_TRANSIENT_FOR:=TAtom(68);
  end;

function XA_LAST_PREDEFINED : TAtom;
  begin
    XA_LAST_PREDEFINED:=TAtom(68);
  end;


end.
