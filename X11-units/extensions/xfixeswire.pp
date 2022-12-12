
unit xfixeswire;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/extensions/xfixeswire.h
  The following command line parameters were used:
    /usr/include/X11/extensions/xfixeswire.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/extensions/xfixeswire.pp
}

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef _XFIXESWIRE_H_}
{$define _XFIXESWIRE_H_}  

  const
    XFIXES_NAME = 'XFIXES';    
    XFIXES_MAJOR = 6;    
    XFIXES_MINOR = 0;    

    X_XFixesQueryVersion = 0;    
    X_XFixesChangeSaveSet = 1;    
    X_XFixesSelectSelectionInput = 2;    
    X_XFixesSelectCursorInput = 3;    
    X_XFixesGetCursorImage = 4;    

    X_XFixesCreateRegion = 5;    
    X_XFixesCreateRegionFromBitmap = 6;    
    X_XFixesCreateRegionFromWindow = 7;    
    X_XFixesCreateRegionFromGC = 8;    
    X_XFixesCreateRegionFromPicture = 9;    
    X_XFixesDestroyRegion = 10;    
    X_XFixesSetRegion = 11;    
    X_XFixesCopyRegion = 12;    
    X_XFixesUnionRegion = 13;    
    X_XFixesIntersectRegion = 14;    
    X_XFixesSubtractRegion = 15;    
    X_XFixesInvertRegion = 16;    
    X_XFixesTranslateRegion = 17;    
    X_XFixesRegionExtents = 18;    
    X_XFixesFetchRegion = 19;    
    X_XFixesSetGCClipRegion = 20;    
    X_XFixesSetWindowShapeRegion = 21;    
    X_XFixesSetPictureClipRegion = 22;    
    X_XFixesSetCursorName = 23;    
    X_XFixesGetCursorName = 24;    
    X_XFixesGetCursorImageAndName = 25;    
    X_XFixesChangeCursor = 26;    
    X_XFixesChangeCursorByName = 27;    

    X_XFixesExpandRegion = 28;    

    X_XFixesHideCursor = 29;    
    X_XFixesShowCursor = 30;    

    X_XFixesCreatePointerBarrier = 31;    
    X_XFixesDestroyPointerBarrier = 32;    

    X_XFixesSetClientDisconnectMode = 33;    
    X_XFixesGetClientDisconnectMode = 34;    
    XFixesNumberRequests = X_XFixesGetClientDisconnectMode+1;    

    XFixesSelectionNotify = 0;    

    XFixesSetSelectionOwnerNotify = 0;    
    XFixesSelectionWindowDestroyNotify = 1;    
    XFixesSelectionClientCloseNotify = 2;    
    XFixesSetSelectionOwnerNotifyMask = 1 shl 0;    
    XFixesSelectionWindowDestroyNotifyMask = 1 shl 1;    
    XFixesSelectionClientCloseNotifyMask = 1 shl 2;    

    XFixesCursorNotify = 1;    
    XFixesDisplayCursorNotify = 0;    
    XFixesDisplayCursorNotifyMask = 1 shl 0;    
    XFixesNumberEvents = 2;    

    BadRegion = 0;    
    BadBarrier = 1;    
    XFixesNumberErrors = BadBarrier+1;    
    SaveSetNearest = 0;    
    SaveSetRoot = 1;    
    SaveSetMap = 0;    
    SaveSetUnmap = 1;    

    WindowRegionBounding = 0;    
    WindowRegionClip = 1;    

    BarrierPositiveX = 1 shl 0;    
    BarrierPositiveY = 1 shl 1;    
    BarrierNegativeX = 1 shl 2;    
    BarrierNegativeY = 1 shl 3;    


    XFixesClientDisconnectFlagDefault = 0;    

    XFixesClientDisconnectFlagTerminate = 1 shl 0;    
{$endif}


implementation


end.
