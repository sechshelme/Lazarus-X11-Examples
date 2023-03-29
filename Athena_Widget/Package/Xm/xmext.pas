unit XmExt;

interface

uses
  x,
  xresource,
  XTIntrinsic,
  XmXm;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

// {$include <Xm/Xm.h>}

type

  TXmWidgetFunc = function (para1:TWidget):TWidget;cdecl ;

{***********************************************************
*	TYPEDEFS AND DEFINES
************************************************************ }
{
 * General name definitions.
  }

const
  XmNbadActionParameters = 'badActionParameters';  
  XmNbadActionParametersMsg = 'Bad parameters passed to an action routine of widget %s.';
  XmNbadMotionParams = 'badMotionParams';  
  XmNbadMotionParamsMsg = '%s - Motion Action : must have exactly 1 parameter, either %s or %s.';
  XmNbadRowPixmap = 'badRowPixmap';  
  XmNbadRowPixmapMsg = 'Extended List: Row pixmaps must have depth of 1.';  
  XmNbadXlfdFont = 'badXlfdFont';  
  XmNbadXlfdFontMsg = '%s: All Xlfd fonts must contain 14 hyphens'#10'%s is not valid.';
  XmNcellNotEmpty = 'cellNotEmpty';  
  XmNcellNotEmptyMsg = 'XmIconBox: Cell %s is not empty';  
  XmNcolorNameTooLong = 'colorNameTooLong';  
  XmNcolorNameTooLongMsg = 'Color name %s is too long, truncated to %s.';
  XmNcontextSaveFailed = 'contextSaveFailed';  
  XmNcontextSaveFailedMsg = 'Internal Error: Could not save context data.';  
  XmNconversionFailure = 'conversionFailure';  
  XmNconversionFailureMsg = '%s: Unable to perform string to %s conversion.';  
  XmNcouldNotFindFamilyData = 'couldNotFindFamilyData';  
  XmNcouldNotFindFamilyDataMsg = 'Could not find family data for family %s.';
  XmNforceGreaterThanZero = 'forceGreaterThanZero';  
  XmNforceGreaterThanZeroMsg = 'XmNvisibleItemCount must be greater than zero being reset to one (1).';  
  XmNinsertBeforeNotSibling = 'insertBeforeNotSibling';  
  XmNinsertBeforeNotSiblingMsg = 'XmHierarchy: InsertBefore Widget is not a sibling of %s.'#10'Inserting child at end of list.';
  XmNnoComboShell = 'noComboShell';  
  XmNnoComboShellMsg = 'Combination Box: When using a custom combo box a shell must be provided.';  
  XmNnoEmptyCells = 'noEmptyCells';  
  XmNnoEmptyCellsMsg = 'XmIconBox: Could not find any empty cells.';  
  XmNnoGadgetSupport = 'noGadgetSupport';  
  XmNnoGadgetSupportMsg = 'Widget does not support gadget children.';  
  XmNpixEditBadImageCreate = 'pixEditBadImageCreate';  
  XmNpixEditBadImageCreateMsg = 'Pixmap Editor: Can''t allocate image data';  
  XmNsameAsImageOrPix = 'sameAsImageOrPix';  
  XmNsameAsImageOrPixMsg = '%s : The bitmapMode resource can only be changed at the same time as the pixmap or image';  
  XmNselfOrOutsideOfApplicationDrop = 'selfOrOutsideOfApplicationDrop';  
  XmNselfOrOutsideOfApplicationDropMsg = 'Attempt to drop into illegal object.';  
  XmNstaticTranslationsMsg = 'Cannot change translation table after initialization.';  
  XmNstaticScrollbarsMsg = 'Cannot change scrollbars after initialization.';  
  XmNtextVerifyFailed = 'textVerifyFailed';  
  XmNtextVerifyFailedMsg = 'Combination Box: Text item validation failed.';  
  XmNunexpectedEvent = 'unexpectedEvent';  
  XmNunexpectedEventMsg = 'Unexpected Event Type %s.\n';  
  XmNunparsableColor = 'unparsableColor';  
  XmNunparsableColorMsg = 'Could not parse the color name %s.';
  XmNnodeParentIsSelf = 'nodeParentIsSelf';  
  XmNnodeParentIsSelfMsg = 'The node parent cannot be self referential.';  
  XmNstringGetFailed = 'stringGetFailed';  
  XmNstringGetFailedMsg = 'Unable to get MB string from XmString.';  
{***********************************************************
*	MACROS
************************************************************ }
{***********************************************************
*	GLOBAL DECLARATIONS
************************************************************ }
{***********************************************************
*	EXTERNAL DECLARATIONS
************************************************************ }

procedure XmCopyISOLatin1Lowered(para1:Pchar; para2:Pchar);cdecl;external libXm;
function XmCompareISOLatin1(para1:Pchar; para2:Pchar):longint;cdecl;external libXm;
function XmCompareXtWidgetGeometryToWidget(para1:PXtWidgetGeometry; para2:TWidget):TBoolean;cdecl;external libXm;
function XmCompareXtWidgetGeometry(para1:PXtWidgetGeometry; para2:PXtWidgetGeometry):TBoolean;cdecl;external libXm;

implementation

end.
