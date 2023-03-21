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
  XTIntrinsic, XTObject, XTRectObj, XtShell, XTStringdefs, XtVendor, 
  LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('Athena_Package', @Register);
end.
