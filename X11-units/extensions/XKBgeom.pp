
unit XKBgeom;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/XKBgeom.h
  The following command line parameters were used:
    /usr/include/X11/extensions/XKBgeom.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/XKBgeom.pp
}

    Type
    Pchar  = ^char;
    PDisplay  = ^Display;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XKBGEOM_H_}
{$define _XKBGEOM_H_}  
{$include <X11/extensions/XKBstr.h>}
{$ifdef XKB_IN_SERVER}

  const
    XkbAddGeomKeyAlias = SrvXkbAddGeomKeyAlias;    
    XkbAddGeomColor = SrvXkbAddGeomColor;    
    XkbAddGeomDoodad = SrvXkbAddGeomDoodad;    
    XkbAddGeomKey = SrvXkbAddGeomKey;    
    XkbAddGeomOutline = SrvXkbAddGeomOutline;    
    XkbAddGeomOverlay = SrvXkbAddGeomOverlay;    
    XkbAddGeomOverlayRow = SrvXkbAddGeomOverlayRow;    
    XkbAddGeomOverlayKey = SrvXkbAddGeomOverlayKey;    
    XkbAddGeomProperty = SrvXkbAddGeomProperty;    
    XkbAddGeomRow = SrvXkbAddGeomRow;    
    XkbAddGeomSection = SrvXkbAddGeomSection;    
    XkbAddGeomShape = SrvXkbAddGeomShape;    
    XkbAllocGeomKeyAliases = SrvXkbAllocGeomKeyAliases;    
    XkbAllocGeomColors = SrvXkbAllocGeomColors;    
    XkbAllocGeomDoodads = SrvXkbAllocGeomDoodads;    
    XkbAllocGeomKeys = SrvXkbAllocGeomKeys;    
    XkbAllocGeomOutlines = SrvXkbAllocGeomOutlines;    
    XkbAllocGeomPoints = SrvXkbAllocGeomPoints;    
    XkbAllocGeomProps = SrvXkbAllocGeomProps;    
    XkbAllocGeomRows = SrvXkbAllocGeomRows;    
    XkbAllocGeomSectionDoodads = SrvXkbAllocGeomSectionDoodads;    
    XkbAllocGeomSections = SrvXkbAllocGeomSections;    
    XkbAllocGeomOverlays = SrvXkbAllocGeomOverlays;    
    XkbAllocGeomOverlayRows = SrvXkbAllocGeomOverlayRows;    
    XkbAllocGeomOverlayKeys = SrvXkbAllocGeomOverlayKeys;    
    XkbAllocGeomShapes = SrvXkbAllocGeomShapes;    
    XkbAllocGeometry = SrvXkbAllocGeometry;    
    XkbFreeGeomKeyAliases = SrvXkbFreeGeomKeyAliases;    
    XkbFreeGeomColors = SrvXkbFreeGeomColors;    
    XkbFreeGeomDoodads = SrvXkbFreeGeomDoodads;    
    XkbFreeGeomProperties = SrvXkbFreeGeomProperties;    
    XkbFreeGeomOverlayKeys = SrvXkbFreeGeomOverlayKeys;    
    XkbFreeGeomOverlayRows = SrvXkbFreeGeomOverlayRows;    
    XkbFreeGeomOverlays = SrvXkbFreeGeomOverlays;    
    XkbFreeGeomKeys = SrvXkbFreeGeomKeys;    
    XkbFreeGeomRows = SrvXkbFreeGeomRows;    
    XkbFreeGeomSections = SrvXkbFreeGeomSections;    
    XkbFreeGeomPoints = SrvXkbFreeGeomPoints;    
    XkbFreeGeomOutlines = SrvXkbFreeGeomOutlines;    
    XkbFreeGeomShapes = SrvXkbFreeGeomShapes;    
    XkbFreeGeometry = SrvXkbFreeGeometry;    
{$endif}

  type
    _XkbProperty = record
        name : ^char;
        value : ^char;
      end;
    XkbPropertyRec = _XkbProperty;
    XkbPropertyPtr = ^_XkbProperty;

    _XkbColor = record
        pixel : dword;
        spec : ^char;
      end;
    XkbColorRec = _XkbColor;
    XkbColorPtr = ^_XkbColor;

    _XkbPoint = record
        x : smallint;
        y : smallint;
      end;
    XkbPointRec = _XkbPoint;
    XkbPointPtr = ^_XkbPoint;

    _XkbBounds = record
        x1 : smallint;
        y1 : smallint;
        x2 : smallint;
        y2 : smallint;
      end;
    XkbBoundsRec = _XkbBounds;
    XkbBoundsPtr = ^_XkbBounds;

  function XkbBoundsWidth(b : longint) : longint;  

  function XkbBoundsHeight(b : longint) : longint;  



  type
    _XkbOutline = record
        num_points : word;
        sz_points : word;
        corner_radius : word;
        points : XkbPointPtr;
      end;
    XkbOutlineRec = _XkbOutline;
    XkbOutlinePtr = ^_XkbOutline;

    _XkbShape = record
        name : Atom;
        num_outlines : word;
        sz_outlines : word;
        outlines : XkbOutlinePtr;
        approx : XkbOutlinePtr;
        primary : XkbOutlinePtr;
        bounds : XkbBoundsRec;
      end;
    XkbShapeRec = _XkbShape;
    XkbShapePtr = ^_XkbShape;

  function XkbOutlineIndex(s,o : longint) : longint;  


  type
    _XkbShapeDoodad = record
        name : Atom;
        _type : byte;
        priority : byte;
        top : smallint;
        left : smallint;
        angle : smallint;
        color_ndx : word;
        shape_ndx : word;
      end;
    XkbShapeDoodadRec = _XkbShapeDoodad;
    XkbShapeDoodadPtr = ^_XkbShapeDoodad;

  function XkbShapeDoodadColor(g,d : longint) : longint;  

  function XkbShapeDoodadShape(g,d : longint) : longint;  

  function XkbSetShapeDoodadColor(g,d,c : longint) : longint;  

  function XkbSetShapeDoodadShape(g,d,s : longint) : longint;  


  type
    _XkbTextDoodad = record
        name : Atom;
        _type : byte;
        priority : byte;
        top : smallint;
        left : smallint;
        angle : smallint;
        width : smallint;
        height : smallint;
        color_ndx : word;
        text : ^char;
        font : ^char;
      end;
    XkbTextDoodadRec = _XkbTextDoodad;
    XkbTextDoodadPtr = ^_XkbTextDoodad;

  function XkbTextDoodadColor(g,d : longint) : longint;  

  function XkbSetTextDoodadColor(g,d,c : longint) : longint;  


  type
    _XkbIndicatorDoodad = record
        name : Atom;
        _type : byte;
        priority : byte;
        top : smallint;
        left : smallint;
        angle : smallint;
        shape_ndx : word;
        on_color_ndx : word;
        off_color_ndx : word;
      end;
    XkbIndicatorDoodadRec = _XkbIndicatorDoodad;
    XkbIndicatorDoodadPtr = ^_XkbIndicatorDoodad;

  function XkbIndicatorDoodadShape(g,d : longint) : longint;  

  function XkbIndicatorDoodadOnColor(g,d : longint) : longint;  

  function XkbIndicatorDoodadOffColor(g,d : longint) : longint;  

  function XkbSetIndicatorDoodadOnColor(g,d,c : longint) : longint;  

  function XkbSetIndicatorDoodadOffColor(g,d,c : longint) : longint;  

  function XkbSetIndicatorDoodadShape(g,d,s : longint) : longint;  


  type
    _XkbLogoDoodad = record
        name : Atom;
        _type : byte;
        priority : byte;
        top : smallint;
        left : smallint;
        angle : smallint;
        color_ndx : word;
        shape_ndx : word;
        logo_name : ^char;
      end;
    XkbLogoDoodadRec = _XkbLogoDoodad;
    XkbLogoDoodadPtr = ^_XkbLogoDoodad;

  function XkbLogoDoodadColor(g,d : longint) : longint;  

  function XkbLogoDoodadShape(g,d : longint) : longint;  

  function XkbSetLogoDoodadColor(g,d,c : longint) : longint;  

  function XkbSetLogoDoodadShape(g,d,s : longint) : longint;  


  type
    _XkbAnyDoodad = record
        name : Atom;
        _type : byte;
        priority : byte;
        top : smallint;
        left : smallint;
        angle : smallint;
      end;
    XkbAnyDoodadRec = _XkbAnyDoodad;
    XkbAnyDoodadPtr = ^_XkbAnyDoodad;

    _XkbDoodad = record
        case longint of
          0 : ( any : XkbAnyDoodadRec );
          1 : ( shape : XkbShapeDoodadRec );
          2 : ( text : XkbTextDoodadRec );
          3 : ( indicator : XkbIndicatorDoodadRec );
          4 : ( logo : XkbLogoDoodadRec );
        end;
    XkbDoodadRec = _XkbDoodad;
    XkbDoodadPtr = ^_XkbDoodad;

  const
    XkbUnknownDoodad = 0;    
    XkbOutlineDoodad = 1;    
    XkbSolidDoodad = 2;    
    XkbTextDoodad = 3;    
    XkbIndicatorDoodad = 4;    
    XkbLogoDoodad = 5;    

  type
    _XkbKey = record
        name : XkbKeyNameRec;
        gap : smallint;
        shape_ndx : byte;
        color_ndx : byte;
      end;
    XkbKeyRec = _XkbKey;
    XkbKeyPtr = ^_XkbKey;

  function XkbKeyShape(g,k : longint) : longint;  

  function XkbKeyColor(g,k : longint) : longint;  

  function XkbSetKeyShape(g,k,s : longint) : longint;  

  function XkbSetKeyColor(g,k,c : longint) : longint;  


  type
    _XkbRow = record
        top : smallint;
        left : smallint;
        num_keys : word;
        sz_keys : word;
        vertical : longint;
        keys : XkbKeyPtr;
        bounds : XkbBoundsRec;
      end;
    XkbRowRec = _XkbRow;
    XkbRowPtr = ^_XkbRow;

    _XkbSection = record
        name : Atom;
        priority : byte;
        top : smallint;
        left : smallint;
        width : word;
        height : word;
        angle : smallint;
        num_rows : word;
        num_doodads : word;
        num_overlays : word;
        sz_rows : word;
        sz_doodads : word;
        sz_overlays : word;
        rows : XkbRowPtr;
        doodads : XkbDoodadPtr;
        bounds : XkbBoundsRec;
        overlays : ^_XkbOverlay;
      end;
    XkbSectionRec = _XkbSection;
    XkbSectionPtr = ^_XkbSection;

    _XkbOverlayKey = record
        over : XkbKeyNameRec;
        under : XkbKeyNameRec;
      end;
    XkbOverlayKeyRec = _XkbOverlayKey;
    XkbOverlayKeyPtr = ^_XkbOverlayKey;

    _XkbOverlayRow = record
        row_under : word;
        num_keys : word;
        sz_keys : word;
        keys : XkbOverlayKeyPtr;
      end;
    XkbOverlayRowRec = _XkbOverlayRow;
    XkbOverlayRowPtr = ^_XkbOverlayRow;

    _XkbOverlay = record
        name : Atom;
        section_under : XkbSectionPtr;
        num_rows : word;
        sz_rows : word;
        rows : XkbOverlayRowPtr;
        bounds : XkbBoundsPtr;
      end;
    XkbOverlayRec = _XkbOverlay;
    XkbOverlayPtr = ^_XkbOverlay;

    _XkbGeometry = record
        name : Atom;
        width_mm : word;
        height_mm : word;
        label_font : ^char;
        label_color : XkbColorPtr;
        base_color : XkbColorPtr;
        sz_properties : word;
        sz_colors : word;
        sz_shapes : word;
        sz_sections : word;
        sz_doodads : word;
        sz_key_aliases : word;
        num_properties : word;
        num_colors : word;
        num_shapes : word;
        num_sections : word;
        num_doodads : word;
        num_key_aliases : word;
        properties : XkbPropertyPtr;
        colors : XkbColorPtr;
        shapes : XkbShapePtr;
        sections : XkbSectionPtr;
        doodads : XkbDoodadPtr;
        key_aliases : XkbKeyAliasPtr;
      end;
    XkbGeometryRec = _XkbGeometry;

  function XkbGeomColorIndex(g,c : longint) : longint;  

  const
    XkbGeomPropertiesMask = 1 shl 0;    
    XkbGeomColorsMask = 1 shl 1;    
    XkbGeomShapesMask = 1 shl 2;    
    XkbGeomSectionsMask = 1 shl 3;    
    XkbGeomDoodadsMask = 1 shl 4;    
    XkbGeomKeyAliasesMask = 1 shl 5;    
    XkbGeomAllMask = $3f;    

  type
    _XkbGeometrySizes = record
        which : dword;
        num_properties : word;
        num_colors : word;
        num_shapes : word;
        num_sections : word;
        num_doodads : word;
        num_key_aliases : word;
      end;
    XkbGeometrySizesRec = _XkbGeometrySizes;
    XkbGeometrySizesPtr = ^_XkbGeometrySizes;
(* error 
extern	XkbPropertyPtr

in declaration at line 328 *)


    function XkbAddGeomKeyAlias(_para1:XkbGeometryPtr; _para2:Pchar; _para3:Pchar):XkbKeyAliasPtr;cdecl;


    function XkbAddGeomColor(_para1:XkbGeometryPtr; _para2:Pchar; _para3:dword):XkbColorPtr;cdecl;


    function XkbAddGeomOutline(_para1:XkbShapePtr; _para2:longint):XkbOutlinePtr;cdecl;


    function XkbAddGeomShape(_para1:XkbGeometryPtr; _para2:Atom; _para3:longint):XkbShapePtr;cdecl;


    function XkbAddGeomKey(_para1:XkbRowPtr):XkbKeyPtr;cdecl;


    function XkbAddGeomRow(_para1:XkbSectionPtr; _para2:longint):XkbRowPtr;cdecl;


    function XkbAddGeomSection(_para1:XkbGeometryPtr; _para2:Atom; _para3:longint; _para4:longint; _para5:longint):XkbSectionPtr;cdecl;


    function XkbAddGeomOverlay(_para1:XkbSectionPtr; _para2:Atom; _para3:longint):XkbOverlayPtr;cdecl;


    function XkbAddGeomOverlayRow(_para1:XkbOverlayPtr; _para2:longint; _para3:longint):XkbOverlayRowPtr;cdecl;


    function XkbAddGeomOverlayKey(_para1:XkbOverlayPtr; _para2:XkbOverlayRowPtr; _para3:Pchar; _para4:Pchar):XkbOverlayKeyPtr;cdecl;


    function XkbAddGeomDoodad(_para1:XkbGeometryPtr; _para2:XkbSectionPtr; _para3:Atom):XkbDoodadPtr;cdecl;


    procedure XkbFreeGeomKeyAliases(_para1:XkbGeometryPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomColors(_para1:XkbGeometryPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomDoodads(_para1:XkbDoodadPtr; _para2:longint; _para3:Bool);cdecl;


    procedure XkbFreeGeomProperties(_para1:XkbGeometryPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomOverlayKeys(_para1:XkbOverlayRowPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomOverlayRows(_para1:XkbOverlayPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomOverlays(_para1:XkbSectionPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomKeys(_para1:XkbRowPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomRows(_para1:XkbSectionPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomSections(_para1:XkbGeometryPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomPoints(_para1:XkbOutlinePtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomOutlines(_para1:XkbShapePtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeomShapes(_para1:XkbGeometryPtr; _para2:longint; _para3:longint; _para4:Bool);cdecl;


    procedure XkbFreeGeometry(_para1:XkbGeometryPtr; _para2:dword; _para3:Bool);cdecl;


    function XkbAllocGeomProps(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomKeyAliases(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomColors(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomShapes(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomSections(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomOverlays(_para1:XkbSectionPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomOverlayRows(_para1:XkbOverlayPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomOverlayKeys(_para1:XkbOverlayRowPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomDoodads(_para1:XkbGeometryPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomSectionDoodads(_para1:XkbSectionPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomOutlines(_para1:XkbShapePtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomRows(_para1:XkbSectionPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomPoints(_para1:XkbOutlinePtr; _para2:longint):Status;cdecl;


    function XkbAllocGeomKeys(_para1:XkbRowPtr; _para2:longint):Status;cdecl;


    function XkbAllocGeometry(_para1:XkbDescPtr; _para2:XkbGeometrySizesPtr):Status;cdecl;


    function XkbSetGeometry(_para1:PDisplay; _para2:dword; _para3:XkbGeometryPtr):Status;cdecl;


    function XkbComputeShapeTop(_para1:XkbShapePtr; _para2:XkbBoundsPtr):Bool;cdecl;


    function XkbComputeShapeBounds(_para1:XkbShapePtr):Bool;cdecl;


    function XkbComputeRowBounds(_para1:XkbGeometryPtr; _para2:XkbSectionPtr; _para3:XkbRowPtr):Bool;cdecl;


    function XkbComputeSectionBounds(_para1:XkbGeometryPtr; _para2:XkbSectionPtr):Bool;cdecl;


    function XkbFindOverlayForKey(_para1:XkbGeometryPtr; _para2:XkbSectionPtr; _para3:Pchar):^char;cdecl;


    function XkbGetGeometry(_para1:PDisplay; _para2:XkbDescPtr):Status;cdecl;


    function XkbGetNamedGeometry(_para1:PDisplay; _para2:XkbDescPtr; _para3:Atom):Status;cdecl;

{$endif}

(* error 
#endif /* _XKBSTR_H_ */

implementation

  function XkbBoundsWidth(b : longint) : longint;
  begin
    XkbBoundsWidth:=(b^.x2)-(b^.x1);
  end;

  function XkbBoundsHeight(b : longint) : longint;
  begin
    XkbBoundsHeight:=(b^.y2)-(b^.y1);
  end;

  function XkbOutlineIndex(s,o : longint) : longint;
  begin
    XkbOutlineIndex:=longint(o(-(@(s^.(outlines[0])))));
  end;

  function XkbShapeDoodadColor(g,d : longint) : longint;
  begin
    XkbShapeDoodadColor:=@(g^.(colors[d^.color_ndx]));
  end;

  function XkbShapeDoodadShape(g,d : longint) : longint;
  begin
    XkbShapeDoodadShape:=@(g^.(shapes[d^.shape_ndx]));
  end;

  function XkbSetShapeDoodadColor(g,d,c : longint) : longint;
  begin
    XkbSetShapeDoodadColor:=(d^.color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbSetShapeDoodadShape(g,d,s : longint) : longint;
  begin
    XkbSetShapeDoodadShape:=(d^.shape_ndx):=(s(-(@(g^.(shapes[0])))));
  end;

  function XkbTextDoodadColor(g,d : longint) : longint;
  begin
    XkbTextDoodadColor:=@(g^.(colors[d^.color_ndx]));
  end;

  function XkbSetTextDoodadColor(g,d,c : longint) : longint;
  begin
    XkbSetTextDoodadColor:=(d^.color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbIndicatorDoodadShape(g,d : longint) : longint;
  begin
    XkbIndicatorDoodadShape:=@(g^.(shapes[d^.shape_ndx]));
  end;

  function XkbIndicatorDoodadOnColor(g,d : longint) : longint;
  begin
    XkbIndicatorDoodadOnColor:=@(g^.(colors[d^.on_color_ndx]));
  end;

  function XkbIndicatorDoodadOffColor(g,d : longint) : longint;
  begin
    XkbIndicatorDoodadOffColor:=@(g^.(colors[d^.off_color_ndx]));
  end;

  function XkbSetIndicatorDoodadOnColor(g,d,c : longint) : longint;
  begin
    XkbSetIndicatorDoodadOnColor:=(d^.on_color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbSetIndicatorDoodadOffColor(g,d,c : longint) : longint;
  begin
    XkbSetIndicatorDoodadOffColor:=(d^.off_color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbSetIndicatorDoodadShape(g,d,s : longint) : longint;
  begin
    XkbSetIndicatorDoodadShape:=(d^.shape_ndx):=(s(-(@(g^.(shapes[0])))));
  end;

  function XkbLogoDoodadColor(g,d : longint) : longint;
  begin
    XkbLogoDoodadColor:=@(g^.(colors[d^.color_ndx]));
  end;

  function XkbLogoDoodadShape(g,d : longint) : longint;
  begin
    XkbLogoDoodadShape:=@(g^.(shapes[d^.shape_ndx]));
  end;

  function XkbSetLogoDoodadColor(g,d,c : longint) : longint;
  begin
    XkbSetLogoDoodadColor:=(d^.color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbSetLogoDoodadShape(g,d,s : longint) : longint;
  begin
    XkbSetLogoDoodadShape:=(d^.shape_ndx):=(s(-(@(g^.(shapes[0])))));
  end;

  function XkbKeyShape(g,k : longint) : longint;
  begin
    XkbKeyShape:=@(g^.(shapes[k^.shape_ndx]));
  end;

  function XkbKeyColor(g,k : longint) : longint;
  begin
    XkbKeyColor:=@(g^.(colors[k^.color_ndx]));
  end;

  function XkbSetKeyShape(g,k,s : longint) : longint;
  begin
    XkbSetKeyShape:=(k^.shape_ndx):=(s(-(@(g^.(shapes[0])))));
  end;

  function XkbSetKeyColor(g,k,c : longint) : longint;
  begin
    XkbSetKeyColor:=(k^.color_ndx):=(c(-(@(g^.(colors[0])))));
  end;

  function XkbGeomColorIndex(g,c : longint) : longint;
  begin
    XkbGeomColorIndex:=longint(c(-(@(g^.(colors[0])))));
  end;


end.
