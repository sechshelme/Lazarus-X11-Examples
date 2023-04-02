{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit Athena_Package;

{$warn 5023 off : no warning about unused units}
interface

uses
  XawAllWidgets, XawAsciiSink, XawAsciiSrc, XawAsciiText, XawBox, 
  XawCardinals, XawCommand, XawDialog, XawForm, XawGrip, XawLabel, XawList, 
  XawMenuButton, XawMultiSink, XawMultiSrc, XawPaned, XawPanner, XawPorthole, 
  XawRepeater, XawReports, XawScrollbar, XawSimple, XawSimpleMenu, XawSme, 
  XawSmeBSB, XawSmeLine, XawStripChart, XawTemplate, XawText, XawTextSink, 
  XawTextSrc, XawTip, XawToggle, XawTree, XawViewport, XawXawInit, 
  XmuConverters, XmuDrawing, XmuWidgetNode, XTComposite, XTConstraint, XTCore, 
  XTIntrinsic, XTObject, XTRectObj, XtShell, XTStringdefs, XtVendor, XmPushB, 
  XmXmStrDefs, XmContainer, XmToolTipT, XmDialogS, XmColumn, XmLabel, 
  XmDisplay, XmContainerT, XmColorS, XmLabelG, XmMainW, XmCommand, 
  XmScrollBar, XmMessageB, XmRowColumn, XmButtonBox, XmDataF, xmCutPaste, 
  XmList, XmMultiList, XmText, XmAccColorT, XmActivatableT, XmArrowB, 
  XmArrowBG, XmAtomMgr, XmBulletinB, XmCareVisualT, XmCascadeB, XmCascadeBG, 
  XmComboBox, XmComboBox2, XmContItemT, XmDialogSavvyT, XmDragC, XmDragOverS, 
  XmDrawingA, XmDrawnB, XmDrawUtils, XmDropDown, XmDropsMgr, XmDropTrans, 
  XmExt, XmExt18List, XmFileSB, XmFontS, XmForm, XmFrame, XmHierarchy, 
  XmIconBox, XmIconButton, XmIconFile, XmIconG, XmJoinSideT, XmLayoutT, 
  XmMenuT, XmMwmUtil, XmNavigatorT, XmNotebook, XmOutline, XmPaned, XmPanedW, 
  XmPicture, XmProtocols, XmPushBG, XmRepType, XmScale, XmScrolledW, 
  XmScrollFrameT, XmSelectioB, XmSeparatoG, XmSeparator, XmSlideC, XmSpinB, 
  XmSSpinB, XmTabList, XmTabStack, XmTextF, XmToggleB, XmToggleBG, 
  XmToolTipCT, XmTransferT, XmTree, XmUnhighlightT, XmUnitTypeT, XmVirtKeys, 
  XmXmfuncs, XmXmIm, Xmxmlist, XmXmStrDefs22, XmXmStrDefs23, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('Athena_Package', @Register);
end.
