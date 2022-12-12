
unit XKBgeom;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBgeom.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBgeom.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/extensions/XKBgeom.pp
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
    Pchar  = ^char;
    PDisplay  = ^Display;
    PXkbAnyDoodad  = ^XkbAnyDoodad;
    PXkbAnyDoodadPtr  = ^XkbAnyDoodadPtr;
    PXkbAnyDoodadRec  = ^XkbAnyDoodadRec;
    PXkbBounds  = ^XkbBounds;
    PXkbBoundsPtr  = ^XkbBoundsPtr;
    PXkbBoundsRec  = ^XkbBoundsRec;
    PXkbColor  = ^XkbColor;
    PXkbColorPtr  = ^XkbColorPtr;
    PXkbColorRec  = ^XkbColorRec;
    PXkbDoodad  = ^XkbDoodad;
    PXkbDoodadPtr  = ^XkbDoodadPtr;
    PXkbDoodadRec  = ^XkbDoodadRec;
    PXkbGeometry  = ^XkbGeometry;
    PXkbGeometryRec  = ^XkbGeometryRec;
    PXkbGeometrySizes  = ^XkbGeometrySizes;
    PXkbGeometrySizesPtr  = ^XkbGeometrySizesPtr;
    PXkbGeometrySizesRec  = ^XkbGeometrySizesRec;
    PXkbIndicatorDoodad  = ^XkbIndicatorDoodad;
    PXkbIndicatorDoodadPtr  = ^XkbIndicatorDoodadPtr;
    PXkbIndicatorDoodadRec  = ^XkbIndicatorDoodadRec;
    PXkbKey  = ^XkbKey;
    PXkbKeyPtr  = ^XkbKeyPtr;
    PXkbKeyRec  = ^XkbKeyRec;
    PXkbLogoDoodad  = ^XkbLogoDoodad;
    PXkbLogoDoodadPtr  = ^XkbLogoDoodadPtr;
    PXkbLogoDoodadRec  = ^XkbLogoDoodadRec;
    PXkbOutline  = ^XkbOutline;
    PXkbOutlinePtr  = ^XkbOutlinePtr;
    PXkbOutlineRec  = ^XkbOutlineRec;
    PXkbOverlay  = ^XkbOverlay;
    PXkbOverlayKey  = ^XkbOverlayKey;
    PXkbOverlayKeyPtr  = ^XkbOverlayKeyPtr;
    PXkbOverlayKeyRec  = ^XkbOverlayKeyRec;
    PXkbOverlayPtr  = ^XkbOverlayPtr;
    PXkbOverlayRec  = ^XkbOverlayRec;
    PXkbOverlayRow  = ^XkbOverlayRow;
    PXkbOverlayRowPtr  = ^XkbOverlayRowPtr;
    PXkbOverlayRowRec  = ^XkbOverlayRowRec;
    PXkbPoint  = ^XkbPoint;
    PXkbPointPtr  = ^XkbPointPtr;
    PXkbPointRec  = ^XkbPointRec;
    PXkbProperty  = ^XkbProperty;
    PXkbPropertyPtr  = ^XkbPropertyPtr;
    PXkbPropertyRec  = ^XkbPropertyRec;
    PXkbRow  = ^XkbRow;
    PXkbRowPtr  = ^XkbRowPtr;
    PXkbRowRec  = ^XkbRowRec;
    PXkbSection  = ^XkbSection;
    PXkbSectionPtr  = ^XkbSectionPtr;
    PXkbSectionRec  = ^XkbSectionRec;
    PXkbShape  = ^XkbShape;
    PXkbShapeDoodad  = ^XkbShapeDoodad;
    PXkbShapeDoodadPtr  = ^XkbShapeDoodadPtr;
    PXkbShapeDoodadRec  = ^XkbShapeDoodadRec;
    PXkbShapePtr  = ^XkbShapePtr;
    PXkbShapeRec  = ^XkbShapeRec;
    PXkbTextDoodad  = ^XkbTextDoodad;
    PXkbTextDoodadPtr  = ^XkbTextDoodadPtr;
    PXkbTextDoodadRec  = ^XkbTextDoodadRec;
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
  PXkbProperty = ^TXkbProperty;
  TXkbProperty = record
      name : Pchar;
      value : Pchar;
    end;
  TXkbPropertyRec = TXkbProperty;
  PXkbPropertyRec = ^TXkbPropertyRec;
  TXkbPropertyPtr = PXkbProperty;
  PXkbPropertyPtr = ^TXkbPropertyPtr;

  PXkbColor = ^TXkbColor;
  TXkbColor = record
      pixel : dword;
      spec : Pchar;
    end;
  TXkbColorRec = TXkbColor;
  PXkbColorRec = ^TXkbColorRec;
  TXkbColorPtr = PXkbColor;
  PXkbColorPtr = ^TXkbColorPtr;

  PXkbPoint = ^TXkbPoint;
  TXkbPoint = record
      x : smallint;
      y : smallint;
    end;
  TXkbPointRec = TXkbPoint;
  PXkbPointRec = ^TXkbPointRec;
  TXkbPointPtr = PXkbPoint;
  PXkbPointPtr = ^TXkbPointPtr;

  PXkbBounds = ^TXkbBounds;
  TXkbBounds = record
      x1 : smallint;
      y1 : smallint;
      x2 : smallint;
      y2 : smallint;
    end;
  TXkbBoundsRec = TXkbBounds;
  PXkbBoundsRec = ^TXkbBoundsRec;
  TXkbBoundsPtr = PXkbBounds;
  PXkbBoundsPtr = ^TXkbBoundsPtr;

function XkbBoundsWidth(b : longint) : longint;

function XkbBoundsHeight(b : longint) : longint;


type
  PXkbOutline = ^TXkbOutline;
  TXkbOutline = record
      num_points : word;
      sz_points : word;
      corner_radius : word;
      points : TXkbPointPtr;
    end;
  TXkbOutlineRec = TXkbOutline;
  PXkbOutlineRec = ^TXkbOutlineRec;
  TXkbOutlinePtr = PXkbOutline;
  PXkbOutlinePtr = ^TXkbOutlinePtr;

  PXkbShape = ^TXkbShape;
  TXkbShape = record
      name : TAtom;
      num_outlines : word;
      sz_outlines : word;
      outlines : TXkbOutlinePtr;
      approx : TXkbOutlinePtr;
      primary : TXkbOutlinePtr;
      bounds : TXkbBoundsRec;
    end;
  TXkbShapeRec = TXkbShape;
  PXkbShapeRec = ^TXkbShapeRec;
  TXkbShapePtr = PXkbShape;
  PXkbShapePtr = ^TXkbShapePtr;

function XkbOutlineIndex(s,o : longint) : longint;

type
  PXkbShapeDoodad = ^TXkbShapeDoodad;
  TXkbShapeDoodad = record
      name : TAtom;
      _type : byte;
      priority : byte;
      top : smallint;
      left : smallint;
      angle : smallint;
      color_ndx : word;
      shape_ndx : word;
    end;
  TXkbShapeDoodadRec = TXkbShapeDoodad;
  PXkbShapeDoodadRec = ^TXkbShapeDoodadRec;
  TXkbShapeDoodadPtr = PXkbShapeDoodad;
  PXkbShapeDoodadPtr = ^TXkbShapeDoodadPtr;

function XkbShapeDoodadColor(g,d : longint) : longint;

function XkbShapeDoodadShape(g,d : longint) : longint;

function XkbSetShapeDoodadColor(g,d,c : longint) : longint;

function XkbSetShapeDoodadShape(g,d,s : longint) : longint;

type
  PXkbTextDoodad = ^TXkbTextDoodad;
  TXkbTextDoodad = record
      name : TAtom;
      _type : byte;
      priority : byte;
      top : smallint;
      left : smallint;
      angle : smallint;
      width : smallint;
      height : smallint;
      color_ndx : word;
      text : Pchar;
      font : Pchar;
    end;
  TXkbTextDoodadRec = TXkbTextDoodad;
  PXkbTextDoodadRec = ^TXkbTextDoodadRec;
  TXkbTextDoodadPtr = PXkbTextDoodad;
  PXkbTextDoodadPtr = ^TXkbTextDoodadPtr;

function XkbTextDoodadColor(g,d : longint) : longint;

function XkbSetTextDoodadColor(g,d,c : longint) : longint;

type
  PXkbIndicatorDoodad = ^TXkbIndicatorDoodad;
  TXkbIndicatorDoodad = record
      name : TAtom;
      _type : byte;
      priority : byte;
      top : smallint;
      left : smallint;
      angle : smallint;
      shape_ndx : word;
      on_color_ndx : word;
      off_color_ndx : word;
    end;
  TXkbIndicatorDoodadRec = TXkbIndicatorDoodad;
  PXkbIndicatorDoodadRec = ^TXkbIndicatorDoodadRec;
  TXkbIndicatorDoodadPtr = PXkbIndicatorDoodad;
  PXkbIndicatorDoodadPtr = ^TXkbIndicatorDoodadPtr;

function XkbIndicatorDoodadShape(g,d : longint) : longint;

function XkbIndicatorDoodadOnColor(g,d : longint) : longint;

function XkbIndicatorDoodadOffColor(g,d : longint) : longint;

function XkbSetIndicatorDoodadOnColor(g,d,c : longint) : longint;

function XkbSetIndicatorDoodadOffColor(g,d,c : longint) : longint;

function XkbSetIndicatorDoodadShape(g,d,s : longint) : longint;

type
  PXkbLogoDoodad = ^TXkbLogoDoodad;
  TXkbLogoDoodad = record
      name : TAtom;
      _type : byte;
      priority : byte;
      top : smallint;
      left : smallint;
      angle : smallint;
      color_ndx : word;
      shape_ndx : word;
      logo_name : Pchar;
    end;
  TXkbLogoDoodadRec = TXkbLogoDoodad;
  PXkbLogoDoodadRec = ^TXkbLogoDoodadRec;
  TXkbLogoDoodadPtr = PXkbLogoDoodad;
  PXkbLogoDoodadPtr = ^TXkbLogoDoodadPtr;

function XkbLogoDoodadColor(g,d : longint) : longint;

function XkbLogoDoodadShape(g,d : longint) : longint;

function XkbSetLogoDoodadColor(g,d,c : longint) : longint;

function XkbSetLogoDoodadShape(g,d,s : longint) : longint;

type
  PXkbAnyDoodad = ^TXkbAnyDoodad;
  TXkbAnyDoodad = record
      name : TAtom;
      _type : byte;
      priority : byte;
      top : smallint;
      left : smallint;
      angle : smallint;
    end;
  TXkbAnyDoodadRec = TXkbAnyDoodad;
  PXkbAnyDoodadRec = ^TXkbAnyDoodadRec;
  TXkbAnyDoodadPtr = PXkbAnyDoodad;
  PXkbAnyDoodadPtr = ^TXkbAnyDoodadPtr;

  PXkbDoodad = ^TXkbDoodad;
  TXkbDoodad = record
      case longint of
        0 : ( any : TXkbAnyDoodadRec );
        1 : ( shape : TXkbShapeDoodadRec );
        2 : ( text : TXkbTextDoodadRec );
        3 : ( indicator : TXkbIndicatorDoodadRec );
        4 : ( logo : TXkbLogoDoodadRec );
      end;
  TXkbDoodadRec = TXkbDoodad;
  PXkbDoodadRec = ^TXkbDoodadRec;
  TXkbDoodadPtr = PXkbDoodad;
  PXkbDoodadPtr = ^TXkbDoodadPtr;

const
  XkbUnknownDoodad = 0;  
  XkbOutlineDoodad = 1;  
  XkbSolidDoodad = 2;  
  XkbTextDoodad = 3;  
  XkbIndicatorDoodad = 4;  
  XkbLogoDoodad = 5;  
type
  PXkbKey = ^TXkbKey;
  TXkbKey = record
      name : TXkbKeyNameRec;
      gap : smallint;
      shape_ndx : byte;
      color_ndx : byte;
    end;
  TXkbKeyRec = TXkbKey;
  PXkbKeyRec = ^TXkbKeyRec;
  TXkbKeyPtr = PXkbKey;
  PXkbKeyPtr = ^TXkbKeyPtr;

function XkbKeyShape(g,k : longint) : longint;

function XkbKeyColor(g,k : longint) : longint;

function XkbSetKeyShape(g,k,s : longint) : longint;

function XkbSetKeyColor(g,k,c : longint) : longint;

type
  PXkbRow = ^TXkbRow;
  TXkbRow = record
      top : smallint;
      left : smallint;
      num_keys : word;
      sz_keys : word;
      vertical : longint;
      keys : TXkbKeyPtr;
      bounds : TXkbBoundsRec;
    end;
  TXkbRowRec = TXkbRow;
  PXkbRowRec = ^TXkbRowRec;
  TXkbRowPtr = PXkbRow;
  PXkbRowPtr = ^TXkbRowPtr;

  PXkbSection = ^TXkbSection;
  TXkbSection = record
      name : TAtom;
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
      rows : TXkbRowPtr;
      doodads : TXkbDoodadPtr;
      bounds : TXkbBoundsRec;
      overlays : PXkbOverlay;
    end;
  TXkbSectionRec = TXkbSection;
  PXkbSectionRec = ^TXkbSectionRec;
  TXkbSectionPtr = PXkbSection;
  PXkbSectionPtr = ^TXkbSectionPtr;

  PXkbOverlayKey = ^TXkbOverlayKey;
  TXkbOverlayKey = record
      over : TXkbKeyNameRec;
      under : TXkbKeyNameRec;
    end;
  TXkbOverlayKeyRec = TXkbOverlayKey;
  PXkbOverlayKeyRec = ^TXkbOverlayKeyRec;
  TXkbOverlayKeyPtr = PXkbOverlayKey;
  PXkbOverlayKeyPtr = ^TXkbOverlayKeyPtr;

  PXkbOverlayRow = ^TXkbOverlayRow;
  TXkbOverlayRow = record
      row_under : word;
      num_keys : word;
      sz_keys : word;
      keys : TXkbOverlayKeyPtr;
    end;
  TXkbOverlayRowRec = TXkbOverlayRow;
  PXkbOverlayRowRec = ^TXkbOverlayRowRec;
  TXkbOverlayRowPtr = PXkbOverlayRow;
  PXkbOverlayRowPtr = ^TXkbOverlayRowPtr;

  PXkbOverlay = ^TXkbOverlay;
  TXkbOverlay = record
      name : TAtom;
      section_under : TXkbSectionPtr;
      num_rows : word;
      sz_rows : word;
      rows : TXkbOverlayRowPtr;
      bounds : TXkbBoundsPtr;
    end;
  TXkbOverlayRec = TXkbOverlay;
  PXkbOverlayRec = ^TXkbOverlayRec;
  TXkbOverlayPtr = PXkbOverlay;
  PXkbOverlayPtr = ^TXkbOverlayPtr;

  PXkbGeometry = ^TXkbGeometry;
  TXkbGeometry = record
      name : TAtom;
      width_mm : word;
      height_mm : word;
      label_font : Pchar;
      label_color : TXkbColorPtr;
      base_color : TXkbColorPtr;
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
      properties : TXkbPropertyPtr;
      colors : TXkbColorPtr;
      shapes : TXkbShapePtr;
      sections : TXkbSectionPtr;
      doodads : TXkbDoodadPtr;
      key_aliases : TXkbKeyAliasPtr;
    end;
  TXkbGeometryRec = TXkbGeometry;
  PXkbGeometryRec = ^TXkbGeometryRec;

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
  PXkbGeometrySizes = ^TXkbGeometrySizes;
  TXkbGeometrySizes = record
      which : dword;
      num_properties : word;
      num_colors : word;
      num_shapes : word;
      num_sections : word;
      num_doodads : word;
      num_key_aliases : word;
    end;
  TXkbGeometrySizesRec = TXkbGeometrySizes;
  PXkbGeometrySizesRec = ^TXkbGeometrySizesRec;
  TXkbGeometrySizesPtr = PXkbGeometrySizes;
  PXkbGeometrySizesPtr = ^TXkbGeometrySizesPtr;
(* error 
extern	XkbPropertyPtr

in declaration at line 328 *)


function XkbAddGeomKeyAlias(para1:TXkbGeometryPtr; para2:Pchar; para3:Pchar):TXkbKeyAliasPtr;cdecl;external;

function XkbAddGeomColor(para1:TXkbGeometryPtr; para2:Pchar; para3:dword):TXkbColorPtr;cdecl;external;

function XkbAddGeomOutline(para1:TXkbShapePtr; para2:longint):TXkbOutlinePtr;cdecl;external;

function XkbAddGeomShape(para1:TXkbGeometryPtr; para2:TAtom; para3:longint):TXkbShapePtr;cdecl;external;

function XkbAddGeomKey(para1:TXkbRowPtr):TXkbKeyPtr;cdecl;external;

function XkbAddGeomRow(para1:TXkbSectionPtr; para2:longint):TXkbRowPtr;cdecl;external;

function XkbAddGeomSection(para1:TXkbGeometryPtr; para2:TAtom; para3:longint; para4:longint; para5:longint):TXkbSectionPtr;cdecl;external;

function XkbAddGeomOverlay(para1:TXkbSectionPtr; para2:TAtom; para3:longint):TXkbOverlayPtr;cdecl;external;

function XkbAddGeomOverlayRow(para1:TXkbOverlayPtr; para2:longint; para3:longint):TXkbOverlayRowPtr;cdecl;external;

function XkbAddGeomOverlayKey(para1:TXkbOverlayPtr; para2:TXkbOverlayRowPtr; para3:Pchar; para4:Pchar):TXkbOverlayKeyPtr;cdecl;external;

function XkbAddGeomDoodad(para1:TXkbGeometryPtr; para2:TXkbSectionPtr; para3:TAtom):TXkbDoodadPtr;cdecl;external;

procedure XkbFreeGeomKeyAliases(para1:TXkbGeometryPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomColors(para1:TXkbGeometryPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomDoodads(para1:TXkbDoodadPtr; para2:longint; para3:TBool);cdecl;external;

procedure XkbFreeGeomProperties(para1:TXkbGeometryPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomOverlayKeys(para1:TXkbOverlayRowPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomOverlayRows(para1:TXkbOverlayPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomOverlays(para1:TXkbSectionPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomKeys(para1:TXkbRowPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomRows(para1:TXkbSectionPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomSections(para1:TXkbGeometryPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomPoints(para1:TXkbOutlinePtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomOutlines(para1:TXkbShapePtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeomShapes(para1:TXkbGeometryPtr; para2:longint; para3:longint; para4:TBool);cdecl;external;

procedure XkbFreeGeometry(para1:TXkbGeometryPtr; para2:dword; para3:TBool);cdecl;external;

function XkbAllocGeomProps(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomKeyAliases(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomColors(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomShapes(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomSections(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomOverlays(para1:TXkbSectionPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomOverlayRows(para1:TXkbOverlayPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomOverlayKeys(para1:TXkbOverlayRowPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomDoodads(para1:TXkbGeometryPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomSectionDoodads(para1:TXkbSectionPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomOutlines(para1:TXkbShapePtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomRows(para1:TXkbSectionPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomPoints(para1:TXkbOutlinePtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeomKeys(para1:TXkbRowPtr; para2:longint):TStatus;cdecl;external;

function XkbAllocGeometry(para1:TXkbDescPtr; para2:TXkbGeometrySizesPtr):TStatus;cdecl;external;

function XkbSetGeometry(para1:PDisplay; para2:dword; para3:TXkbGeometryPtr):TStatus;cdecl;external;

function XkbComputeShapeTop(para1:TXkbShapePtr; para2:TXkbBoundsPtr):TBool;cdecl;external;

function XkbComputeShapeBounds(para1:TXkbShapePtr):TBool;cdecl;external;

function XkbComputeRowBounds(para1:TXkbGeometryPtr; para2:TXkbSectionPtr; para3:TXkbRowPtr):TBool;cdecl;external;

function XkbComputeSectionBounds(para1:TXkbGeometryPtr; para2:TXkbSectionPtr):TBool;cdecl;external;

function XkbFindOverlayForKey(para1:TXkbGeometryPtr; para2:TXkbSectionPtr; para3:Pchar):Pchar;cdecl;external;

function XkbGetGeometry(para1:PDisplay; para2:TXkbDescPtr):TStatus;cdecl;external;

function XkbGetNamedGeometry(para1:PDisplay; para2:TXkbDescPtr; para3:TAtom):TStatus;cdecl;external;
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
  XkbOutlineIndex:=longint(To(-(@(s^.(outlines[0])))));
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
  XkbSetShapeDoodadColor:=(d^.color_ndx):=(Tc(-(@(g^.(colors[0])))));
end;

function XkbSetShapeDoodadShape(g,d,s : longint) : longint;
begin
  XkbSetShapeDoodadShape:=(d^.shape_ndx):=(Ts(-(@(g^.(shapes[0])))));
end;

function XkbTextDoodadColor(g,d : longint) : longint;
begin
  XkbTextDoodadColor:=@(g^.(colors[d^.color_ndx]));
end;

function XkbSetTextDoodadColor(g,d,c : longint) : longint;
begin
  XkbSetTextDoodadColor:=(d^.color_ndx):=(Tc(-(@(g^.(colors[0])))));
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
  XkbSetIndicatorDoodadOnColor:=(d^.on_color_ndx):=(Tc(-(@(g^.(colors[0])))));
end;

function XkbSetIndicatorDoodadOffColor(g,d,c : longint) : longint;
begin
  XkbSetIndicatorDoodadOffColor:=(d^.off_color_ndx):=(Tc(-(@(g^.(colors[0])))));
end;

function XkbSetIndicatorDoodadShape(g,d,s : longint) : longint;
begin
  XkbSetIndicatorDoodadShape:=(d^.shape_ndx):=(Ts(-(@(g^.(shapes[0])))));
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
  XkbSetLogoDoodadColor:=(d^.color_ndx):=(Tc(-(@(g^.(colors[0])))));
end;

function XkbSetLogoDoodadShape(g,d,s : longint) : longint;
begin
  XkbSetLogoDoodadShape:=(d^.shape_ndx):=(Ts(-(@(g^.(shapes[0])))));
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
  XkbSetKeyShape:=(k^.shape_ndx):=(Ts(-(@(g^.(shapes[0])))));
end;

function XkbSetKeyColor(g,k,c : longint) : longint;
begin
  XkbSetKeyColor:=(k^.color_ndx):=(Tc(-(@(g^.(colors[0])))));
end;

function XkbGeomColorIndex(g,c : longint) : longint;
begin
  XkbGeomColorIndex:=longint(Tc(-(@(g^.(colors[0])))));
end;


end.
