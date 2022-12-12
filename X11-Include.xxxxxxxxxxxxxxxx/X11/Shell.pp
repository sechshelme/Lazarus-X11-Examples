
unit Shell;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Shell.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Shell.h
    -p
    -T
    -S
    -d
    -c
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-Include/X11/Shell.pp
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
    PApplicationShellClassRec  = ^ApplicationShellClassRec;
    PApplicationShellWidgetClass  = ^ApplicationShellWidgetClass;
    POverrideShellClassRec  = ^OverrideShellClassRec;
    POverrideShellWidgetClass  = ^OverrideShellWidgetClass;
    PSessionShellClassRec  = ^SessionShellClassRec;
    PSessionShellWidgetClass  = ^SessionShellWidgetClass;
    PShellClassRec  = ^ShellClassRec;
    PShellWidgetClass  = ^ShellWidgetClass;
    PTopLevelShellClassRec  = ^TopLevelShellClassRec;
    PTopLevelShellWidgetClass  = ^TopLevelShellWidgetClass;
    PTransientShellClassRec  = ^TransientShellClassRec;
    PTransientShellWidgetClass  = ^TransientShellWidgetClass;
    PWMShellClassRec  = ^WMShellClassRec;
    PWMShellWidgetClass  = ^WMShellWidgetClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef _XtShell_h}
{$define _XtShell_h}
{$include <X11/SM/SMlib.h>}
{$include <X11/Intrinsic.h>}


{$ifndef XTSTRINGDEFINES}
(* error 
#define _XtShell_h_Const const
in define line 64 *)
{$endif}



{$ifdef XTSTRINGDEFINES}

    const
      XtNiconName = 'iconName';      
      XtCIconName = 'IconName';      
      XtNiconPixmap = 'iconPixmap';      
      XtCIconPixmap = 'IconPixmap';      
      XtNiconWindow = 'iconWindow';      
      XtCIconWindow = 'IconWindow';      
      XtNiconMask = 'iconMask';      
      XtCIconMask = 'IconMask';      
      XtNwindowGroup = 'windowGroup';      
      XtCWindowGroup = 'WindowGroup';      
      XtNvisual = 'visual';      
      XtCVisual = 'Visual';      
      XtNtitleEncoding = 'titleEncoding';      
      XtCTitleEncoding = 'TitleEncoding';      
      XtNsaveUnder = 'saveUnder';      
      XtCSaveUnder = 'SaveUnder';      
      XtNtransient = 'transient';      
      XtCTransient = 'Transient';      
      XtNoverrideRedirect = 'overrideRedirect';      
      XtCOverrideRedirect = 'OverrideRedirect';      
      XtNtransientFor = 'transientFor';      
      XtCTransientFor = 'TransientFor';      
      XtNiconNameEncoding = 'iconNameEncoding';      
      XtCIconNameEncoding = 'IconNameEncoding';      
      XtNallowShellResize = 'allowShellResize';      
      XtCAllowShellResize = 'AllowShellResize';      
      XtNcreatePopupChildProc = 'createPopupChildProc';      
      XtCCreatePopupChildProc = 'CreatePopupChildProc';      
      XtNtitle = 'title';      
      XtCTitle = 'Title';      
{$ifndef XtRAtom}

    const
      XtRAtom = 'Atom';      
{$endif}

    const
      XtNargc = 'argc';      
      XtCArgc = 'Argc';      
      XtNargv = 'argv';      
      XtCArgv = 'Argv';      
      XtNiconX = 'iconX';      
      XtCIconX = 'IconX';      
      XtNiconY = 'iconY';      
      XtCIconY = 'IconY';      
      XtNinput = 'input';      
      XtCInput = 'Input';      
      XtNiconic = 'iconic';      
      XtCIconic = 'Iconic';      
      XtNinitialState = 'initialState';      
      XtCInitialState = 'InitialState';      
      XtNgeometry = 'geometry';      
      XtCGeometry = 'Geometry';      
      XtNbaseWidth = 'baseWidth';      
      XtCBaseWidth = 'BaseWidth';      
      XtNbaseHeight = 'baseHeight';      
      XtCBaseHeight = 'BaseHeight';      
      XtNwinGravity = 'winGravity';      
      XtCWinGravity = 'WinGravity';      
      XtNminWidth = 'minWidth';      
      XtCMinWidth = 'MinWidth';      
      XtNminHeight = 'minHeight';      
      XtCMinHeight = 'MinHeight';      
      XtNmaxWidth = 'maxWidth';      
      XtCMaxWidth = 'MaxWidth';      
      XtNmaxHeight = 'maxHeight';      
      XtCMaxHeight = 'MaxHeight';      
      XtNwidthInc = 'widthInc';      
      XtCWidthInc = 'WidthInc';      
      XtNheightInc = 'heightInc';      
      XtCHeightInc = 'HeightInc';      
      XtNminAspectY = 'minAspectY';      
      XtCMinAspectY = 'MinAspectY';      
      XtNmaxAspectY = 'maxAspectY';      
      XtCMaxAspectY = 'MaxAspectY';      
      XtNminAspectX = 'minAspectX';      
      XtCMinAspectX = 'MinAspectX';      
      XtNmaxAspectX = 'maxAspectX';      
      XtCMaxAspectX = 'MaxAspectX';      
      XtNwmTimeout = 'wmTimeout';      
      XtCWmTimeout = 'WmTimeout';      
      XtNwaitForWm = 'waitforwm';      
      XtCWaitForWm = 'Waitforwm';      
      XtNwaitforwm = 'waitforwm';      
      XtCWaitforwm = 'Waitforwm';      
      XtNclientLeader = 'clientLeader';      
      XtCClientLeader = 'ClientLeader';      
      XtNwindowRole = 'windowRole';      
      XtCWindowRole = 'WindowRole';      
      XtNurgency = 'urgency';      
      XtCUrgency = 'Urgency';      
      XtNcancelCallback = 'cancelCallback';      
      XtNcloneCommand = 'cloneCommand';      
      XtCCloneCommand = 'CloneCommand';      
      XtNconnection = 'connection';      
      XtCConnection = 'Connection';      
      XtNcurrentDirectory = 'currentDirectory';      
      XtCCurrentDirectory = 'CurrentDirectory';      
      XtNdieCallback = 'dieCallback';      
      XtNdiscardCommand = 'discardCommand';      
      XtCDiscardCommand = 'DiscardCommand';      
      XtNenvironment = 'environment';      
      XtCEnvironment = 'Environment';      
      XtNinteractCallback = 'interactCallback';      
      XtNjoinSession = 'joinSession';      
      XtCJoinSession = 'JoinSession';      
      XtNprogramPath = 'programPath';      
      XtCProgramPath = 'ProgramPath';      
      XtNresignCommand = 'resignCommand';      
      XtCResignCommand = 'ResignCommand';      
      XtNrestartCommand = 'restartCommand';      
      XtCRestartCommand = 'RestartCommand';      
      XtNrestartStyle = 'restartStyle';      
      XtCRestartStyle = 'RestartStyle';      
      XtNsaveCallback = 'saveCallback';      
      XtNsaveCompleteCallback = 'saveCompleteCallback';      
      XtNsessionID = 'sessionID';      
      XtCSessionID = 'SessionID';      
      XtNshutdownCommand = 'shutdownCommand';      
      XtCShutdownCommand = 'ShutdownCommand';      
      XtNerrorCallback = 'errorCallback';      
{$else}
(* error 
extern _XtShell_h_Const char XtShellStrings[];
in declaration at line 189 *)
{$ifndef XtNiconName}

    function XtNiconName : TString;      

{$endif}
{$ifndef XtCIconName}

    function XtCIconName : TString;      

{$endif}
{$ifndef XtNiconPixmap}

    function XtNiconPixmap : TString;      

{$endif}
{$ifndef XtCIconPixmap}

    function XtCIconPixmap : TString;      

{$endif}
{$ifndef XtNiconWindow}

    function XtNiconWindow : TString;      

{$endif}
{$ifndef XtCIconWindow}

    function XtCIconWindow : TString;      

{$endif}
{$ifndef XtNiconMask}

    function XtNiconMask : TString;      

{$endif}
{$ifndef XtCIconMask}

    function XtCIconMask : TString;      

{$endif}
{$ifndef XtNwindowGroup}

    function XtNwindowGroup : TString;      

{$endif}
{$ifndef XtCWindowGroup}

    function XtCWindowGroup : TString;      

{$endif}
{$ifndef XtNvisual}

    function XtNvisual : TString;      

{$endif}
{$ifndef XtCVisual}

    function XtCVisual : TString;      

{$endif}
{$ifndef XtNtitleEncoding}

    function XtNtitleEncoding : TString;      

{$endif}
{$ifndef XtCTitleEncoding}

    function XtCTitleEncoding : TString;      

{$endif}
{$ifndef XtNsaveUnder}

    function XtNsaveUnder : TString;      

{$endif}
{$ifndef XtCSaveUnder}

    function XtCSaveUnder : TString;      

{$endif}
{$ifndef XtNtransient}

    function XtNtransient : TString;      

{$endif}
{$ifndef XtCTransient}

    function XtCTransient : TString;      

{$endif}
{$ifndef XtNoverrideRedirect}

    function XtNoverrideRedirect : TString;      

{$endif}
{$ifndef XtCOverrideRedirect}

    function XtCOverrideRedirect : TString;      

{$endif}
{$ifndef XtNtransientFor}

    function XtNtransientFor : TString;      

{$endif}
{$ifndef XtCTransientFor}

    function XtCTransientFor : TString;      

{$endif}
{$ifndef XtNiconNameEncoding}

    function XtNiconNameEncoding : TString;      

{$endif}
{$ifndef XtCIconNameEncoding}

    function XtCIconNameEncoding : TString;      

{$endif}
{$ifndef XtNallowShellResize}

    function XtNallowShellResize : TString;      

{$endif}
{$ifndef XtCAllowShellResize}

    function XtCAllowShellResize : TString;      

{$endif}
{$ifndef XtNcreatePopupChildProc}

    function XtNcreatePopupChildProc : TString;      

{$endif}
{$ifndef XtCCreatePopupChildProc}

    function XtCCreatePopupChildProc : TString;      

{$endif}
{$ifndef XtNtitle}

    function XtNtitle : TString;      

{$endif}
{$ifndef XtCTitle}

    function XtCTitle : TString;      

{$endif}
{$ifndef XtRAtom}

    function XtRAtom : TString;      

{$endif}
{$ifndef XtNargc}

    function XtNargc : TString;      

{$endif}
{$ifndef XtCArgc}

    function XtCArgc : TString;      

{$endif}
{$ifndef XtNargv}

    function XtNargv : TString;      

{$endif}
{$ifndef XtCArgv}

    function XtCArgv : TString;      

{$endif}
{$ifndef XtNiconX}

    function XtNiconX : TString;      

{$endif}
{$ifndef XtCIconX}

    function XtCIconX : TString;      

{$endif}
{$ifndef XtNiconY}

    function XtNiconY : TString;      

{$endif}
{$ifndef XtCIconY}

    function XtCIconY : TString;      

{$endif}
{$ifndef XtNinput}

    function XtNinput : TString;      

{$endif}
{$ifndef XtCInput}

    function XtCInput : TString;      

{$endif}
{$ifndef XtNiconic}

    function XtNiconic : TString;      

{$endif}
{$ifndef XtCIconic}

    function XtCIconic : TString;      

{$endif}
{$ifndef XtNinitialState}

    function XtNinitialState : TString;      

{$endif}
{$ifndef XtCInitialState}

    function XtCInitialState : TString;      

{$endif}
{$ifndef XtNgeometry}

    function XtNgeometry : TString;      

{$endif}
{$ifndef XtCGeometry}

    function XtCGeometry : TString;      

{$endif}
{$ifndef XtNbaseWidth}

    function XtNbaseWidth : TString;      

{$endif}
{$ifndef XtCBaseWidth}

    function XtCBaseWidth : TString;      

{$endif}
{$ifndef XtNbaseHeight}

    function XtNbaseHeight : TString;      

{$endif}
{$ifndef XtCBaseHeight}

    function XtCBaseHeight : TString;      

{$endif}
{$ifndef XtNwinGravity}

    function XtNwinGravity : TString;      

{$endif}
{$ifndef XtCWinGravity}

    function XtCWinGravity : TString;      

{$endif}
{$ifndef XtNminWidth}

    function XtNminWidth : TString;      

{$endif}
{$ifndef XtCMinWidth}

    function XtCMinWidth : TString;      

{$endif}
{$ifndef XtNminHeight}

    function XtNminHeight : TString;      

{$endif}
{$ifndef XtCMinHeight}

    function XtCMinHeight : TString;      

{$endif}
{$ifndef XtNmaxWidth}

    function XtNmaxWidth : TString;      

{$endif}
{$ifndef XtCMaxWidth}

    function XtCMaxWidth : TString;      

{$endif}
{$ifndef XtNmaxHeight}

    function XtNmaxHeight : TString;      

{$endif}
{$ifndef XtCMaxHeight}

    function XtCMaxHeight : TString;      

{$endif}
{$ifndef XtNwidthInc}

    function XtNwidthInc : TString;      

{$endif}
{$ifndef XtCWidthInc}

    function XtCWidthInc : TString;      

{$endif}
{$ifndef XtNheightInc}

    function XtNheightInc : TString;      

{$endif}
{$ifndef XtCHeightInc}

    function XtCHeightInc : TString;      

{$endif}
{$ifndef XtNminAspectY}

    function XtNminAspectY : TString;      

{$endif}
{$ifndef XtCMinAspectY}

    function XtCMinAspectY : TString;      

{$endif}
{$ifndef XtNmaxAspectY}

    function XtNmaxAspectY : TString;      

{$endif}
{$ifndef XtCMaxAspectY}

    function XtCMaxAspectY : TString;      

{$endif}
{$ifndef XtNminAspectX}

    function XtNminAspectX : TString;      

{$endif}
{$ifndef XtCMinAspectX}

    function XtCMinAspectX : TString;      

{$endif}
{$ifndef XtNmaxAspectX}

    function XtNmaxAspectX : TString;      

{$endif}
{$ifndef XtCMaxAspectX}

    function XtCMaxAspectX : TString;      

{$endif}
{$ifndef XtNwmTimeout}

    function XtNwmTimeout : TString;      

{$endif}
{$ifndef XtCWmTimeout}

    function XtCWmTimeout : TString;      

{$endif}
{$ifndef XtNwaitForWm}

    function XtNwaitForWm : TString;      

{$endif}
{$ifndef XtCWaitForWm}

    function XtCWaitForWm : TString;      

{$endif}
{$ifndef XtNwaitforwm}

    function XtNwaitforwm : TString;      

{$endif}
{$ifndef XtCWaitforwm}

    function XtCWaitforwm : TString;      

{$endif}
{$ifndef XtNclientLeader}

    function XtNclientLeader : TString;      

{$endif}
{$ifndef XtCClientLeader}

    function XtCClientLeader : TString;      

{$endif}
{$ifndef XtNwindowRole}

    function XtNwindowRole : TString;      

{$endif}
{$ifndef XtCWindowRole}

    function XtCWindowRole : TString;      

{$endif}
{$ifndef XtNurgency}

    function XtNurgency : TString;      

{$endif}
{$ifndef XtCUrgency}

    function XtCUrgency : TString;      

{$endif}
{$ifndef XtNcancelCallback}

    function XtNcancelCallback : TString;      

{$endif}
{$ifndef XtNcloneCommand}

    function XtNcloneCommand : TString;      

{$endif}
{$ifndef XtCCloneCommand}

    function XtCCloneCommand : TString;      

{$endif}
{$ifndef XtNconnection}

    function XtNconnection : TString;      

{$endif}
{$ifndef XtCConnection}

    function XtCConnection : TString;      

{$endif}
{$ifndef XtNcurrentDirectory}

    function XtNcurrentDirectory : TString;      

{$endif}
{$ifndef XtCCurrentDirectory}

    function XtCCurrentDirectory : TString;      

{$endif}
{$ifndef XtNdieCallback}

    function XtNdieCallback : TString;      

{$endif}
{$ifndef XtNdiscardCommand}

    function XtNdiscardCommand : TString;      

{$endif}
{$ifndef XtCDiscardCommand}

    function XtCDiscardCommand : TString;      

{$endif}
{$ifndef XtNenvironment}

    function XtNenvironment : TString;      

{$endif}
{$ifndef XtCEnvironment}

    function XtCEnvironment : TString;      

{$endif}
{$ifndef XtNinteractCallback}

    function XtNinteractCallback : TString;      

{$endif}
{$ifndef XtNjoinSession}

    function XtNjoinSession : TString;      

{$endif}
{$ifndef XtCJoinSession}

    function XtCJoinSession : TString;      

{$endif}
{$ifndef XtNprogramPath}

    function XtNprogramPath : TString;      

{$endif}
{$ifndef XtCProgramPath}

    function XtCProgramPath : TString;      

{$endif}
{$ifndef XtNresignCommand}

    function XtNresignCommand : TString;      

{$endif}
{$ifndef XtCResignCommand}

    function XtCResignCommand : TString;      

{$endif}
{$ifndef XtNrestartCommand}

    function XtNrestartCommand : TString;      

{$endif}
{$ifndef XtCRestartCommand}

    function XtCRestartCommand : TString;      

{$endif}
{$ifndef XtNrestartStyle}

    function XtNrestartStyle : TString;      

{$endif}
{$ifndef XtCRestartStyle}

    function XtCRestartStyle : TString;      

{$endif}
{$ifndef XtNsaveCallback}

    function XtNsaveCallback : TString;      

{$endif}
{$ifndef XtNsaveCompleteCallback}

    function XtNsaveCompleteCallback : TString;      

{$endif}
{$ifndef XtNsessionID}

    function XtNsessionID : TString;      

{$endif}
{$ifndef XtCSessionID}

    function XtCSessionID : TString;      

{$endif}
{$ifndef XtNshutdownCommand}

    function XtNshutdownCommand : TString;      

{$endif}
{$ifndef XtCShutdownCommand}

    function XtCShutdownCommand : TString;      

{$endif}
{$ifndef XtNerrorCallback}

    function XtNerrorCallback : TString;      

{$endif}
{$endif}

{$ifndef XTSTRINGDEFINES}
{$undef _XtShell_h_Const}
{$endif}

    type
      PShellWidgetClass = ^TShellWidgetClass;
      TShellWidgetClass = PShellClassRec;

      POverrideShellWidgetClass = ^TOverrideShellWidgetClass;
      TOverrideShellWidgetClass = POverrideShellClassRec;

      PWMShellWidgetClass = ^TWMShellWidgetClass;
      TWMShellWidgetClass = PWMShellClassRec;

      PTransientShellWidgetClass = ^TTransientShellWidgetClass;
      TTransientShellWidgetClass = PTransientShellClassRec;

      PTopLevelShellWidgetClass = ^TTopLevelShellWidgetClass;
      TTopLevelShellWidgetClass = PTopLevelShellClassRec;

      PApplicationShellWidgetClass = ^TApplicationShellWidgetClass;
      TApplicationShellWidgetClass = PApplicationShellClassRec;

      PSessionShellWidgetClass = ^TSessionShellWidgetClass;
      TSessionShellWidgetClass = PSessionShellClassRec;
{$ifndef SHELL}
(* error 
externalref WidgetClass shellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass overrideShellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass wmShellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass transientShellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass topLevelShellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass applicationShellWidgetClass;
 in declarator_list *)
(* error 
externalref WidgetClass sessionShellWidgetClass;
 in declarator_list *)
{$endif}
{$endif}



implementation

    function XtNiconName : TString;
      begin
        XtNiconName:=TString(@(XtShellStrings[0]));
      end;

    function XtCIconName : TString;
      begin
        XtCIconName:=TString(@(XtShellStrings[9]));
      end;

    function XtNiconPixmap : TString;
      begin
        XtNiconPixmap:=TString(@(XtShellStrings[18]));
      end;

    function XtCIconPixmap : TString;
      begin
        XtCIconPixmap:=TString(@(XtShellStrings[29]));
      end;

    function XtNiconWindow : TString;
      begin
        XtNiconWindow:=TString(@(XtShellStrings[40]));
      end;

    function XtCIconWindow : TString;
      begin
        XtCIconWindow:=TString(@(XtShellStrings[51]));
      end;

    function XtNiconMask : TString;
      begin
        XtNiconMask:=TString(@(XtShellStrings[62]));
      end;

    function XtCIconMask : TString;
      begin
        XtCIconMask:=TString(@(XtShellStrings[71]));
      end;

    function XtNwindowGroup : TString;
      begin
        XtNwindowGroup:=TString(@(XtShellStrings[80]));
      end;

    function XtCWindowGroup : TString;
      begin
        XtCWindowGroup:=TString(@(XtShellStrings[92]));
      end;

    function XtNvisual : TString;
      begin
        XtNvisual:=TString(@(XtShellStrings[104]));
      end;

    function XtCVisual : TString;
      begin
        XtCVisual:=TString(@(XtShellStrings[111]));
      end;

    function XtNtitleEncoding : TString;
      begin
        XtNtitleEncoding:=TString(@(XtShellStrings[118]));
      end;

    function XtCTitleEncoding : TString;
      begin
        XtCTitleEncoding:=TString(@(XtShellStrings[132]));
      end;

    function XtNsaveUnder : TString;
      begin
        XtNsaveUnder:=TString(@(XtShellStrings[146]));
      end;

    function XtCSaveUnder : TString;
      begin
        XtCSaveUnder:=TString(@(XtShellStrings[156]));
      end;

    function XtNtransient : TString;
      begin
        XtNtransient:=TString(@(XtShellStrings[166]));
      end;

    function XtCTransient : TString;
      begin
        XtCTransient:=TString(@(XtShellStrings[176]));
      end;

    function XtNoverrideRedirect : TString;
      begin
        XtNoverrideRedirect:=TString(@(XtShellStrings[186]));
      end;

    function XtCOverrideRedirect : TString;
      begin
        XtCOverrideRedirect:=TString(@(XtShellStrings[203]));
      end;

    function XtNtransientFor : TString;
      begin
        XtNtransientFor:=TString(@(XtShellStrings[220]));
      end;

    function XtCTransientFor : TString;
      begin
        XtCTransientFor:=TString(@(XtShellStrings[233]));
      end;

    function XtNiconNameEncoding : TString;
      begin
        XtNiconNameEncoding:=TString(@(XtShellStrings[246]));
      end;

    function XtCIconNameEncoding : TString;
      begin
        XtCIconNameEncoding:=TString(@(XtShellStrings[263]));
      end;

    function XtNallowShellResize : TString;
      begin
        XtNallowShellResize:=TString(@(XtShellStrings[280]));
      end;

    function XtCAllowShellResize : TString;
      begin
        XtCAllowShellResize:=TString(@(XtShellStrings[297]));
      end;

    function XtNcreatePopupChildProc : TString;
      begin
        XtNcreatePopupChildProc:=TString(@(XtShellStrings[314]));
      end;

    function XtCCreatePopupChildProc : TString;
      begin
        XtCCreatePopupChildProc:=TString(@(XtShellStrings[335]));
      end;

    function XtNtitle : TString;
      begin
        XtNtitle:=TString(@(XtShellStrings[356]));
      end;

    function XtCTitle : TString;
      begin
        XtCTitle:=TString(@(XtShellStrings[362]));
      end;

    function XtRAtom : TString;
      begin
        XtRAtom:=TString(@(XtShellStrings[368]));
      end;

    function XtNargc : TString;
      begin
        XtNargc:=TString(@(XtShellStrings[373]));
      end;

    function XtCArgc : TString;
      begin
        XtCArgc:=TString(@(XtShellStrings[378]));
      end;

    function XtNargv : TString;
      begin
        XtNargv:=TString(@(XtShellStrings[383]));
      end;

    function XtCArgv : TString;
      begin
        XtCArgv:=TString(@(XtShellStrings[388]));
      end;

    function XtNiconX : TString;
      begin
        XtNiconX:=TString(@(XtShellStrings[393]));
      end;

    function XtCIconX : TString;
      begin
        XtCIconX:=TString(@(XtShellStrings[399]));
      end;

    function XtNiconY : TString;
      begin
        XtNiconY:=TString(@(XtShellStrings[405]));
      end;

    function XtCIconY : TString;
      begin
        XtCIconY:=TString(@(XtShellStrings[411]));
      end;

    function XtNinput : TString;
      begin
        XtNinput:=TString(@(XtShellStrings[417]));
      end;

    function XtCInput : TString;
      begin
        XtCInput:=TString(@(XtShellStrings[423]));
      end;

    function XtNiconic : TString;
      begin
        XtNiconic:=TString(@(XtShellStrings[429]));
      end;

    function XtCIconic : TString;
      begin
        XtCIconic:=TString(@(XtShellStrings[436]));
      end;

    function XtNinitialState : TString;
      begin
        XtNinitialState:=TString(@(XtShellStrings[443]));
      end;

    function XtCInitialState : TString;
      begin
        XtCInitialState:=TString(@(XtShellStrings[456]));
      end;

    function XtNgeometry : TString;
      begin
        XtNgeometry:=TString(@(XtShellStrings[469]));
      end;

    function XtCGeometry : TString;
      begin
        XtCGeometry:=TString(@(XtShellStrings[478]));
      end;

    function XtNbaseWidth : TString;
      begin
        XtNbaseWidth:=TString(@(XtShellStrings[487]));
      end;

    function XtCBaseWidth : TString;
      begin
        XtCBaseWidth:=TString(@(XtShellStrings[497]));
      end;

    function XtNbaseHeight : TString;
      begin
        XtNbaseHeight:=TString(@(XtShellStrings[507]));
      end;

    function XtCBaseHeight : TString;
      begin
        XtCBaseHeight:=TString(@(XtShellStrings[518]));
      end;

    function XtNwinGravity : TString;
      begin
        XtNwinGravity:=TString(@(XtShellStrings[529]));
      end;

    function XtCWinGravity : TString;
      begin
        XtCWinGravity:=TString(@(XtShellStrings[540]));
      end;

    function XtNminWidth : TString;
      begin
        XtNminWidth:=TString(@(XtShellStrings[551]));
      end;

    function XtCMinWidth : TString;
      begin
        XtCMinWidth:=TString(@(XtShellStrings[560]));
      end;

    function XtNminHeight : TString;
      begin
        XtNminHeight:=TString(@(XtShellStrings[569]));
      end;

    function XtCMinHeight : TString;
      begin
        XtCMinHeight:=TString(@(XtShellStrings[579]));
      end;

    function XtNmaxWidth : TString;
      begin
        XtNmaxWidth:=TString(@(XtShellStrings[589]));
      end;

    function XtCMaxWidth : TString;
      begin
        XtCMaxWidth:=TString(@(XtShellStrings[598]));
      end;

    function XtNmaxHeight : TString;
      begin
        XtNmaxHeight:=TString(@(XtShellStrings[607]));
      end;

    function XtCMaxHeight : TString;
      begin
        XtCMaxHeight:=TString(@(XtShellStrings[617]));
      end;

    function XtNwidthInc : TString;
      begin
        XtNwidthInc:=TString(@(XtShellStrings[627]));
      end;

    function XtCWidthInc : TString;
      begin
        XtCWidthInc:=TString(@(XtShellStrings[636]));
      end;

    function XtNheightInc : TString;
      begin
        XtNheightInc:=TString(@(XtShellStrings[645]));
      end;

    function XtCHeightInc : TString;
      begin
        XtCHeightInc:=TString(@(XtShellStrings[655]));
      end;

    function XtNminAspectY : TString;
      begin
        XtNminAspectY:=TString(@(XtShellStrings[665]));
      end;

    function XtCMinAspectY : TString;
      begin
        XtCMinAspectY:=TString(@(XtShellStrings[676]));
      end;

    function XtNmaxAspectY : TString;
      begin
        XtNmaxAspectY:=TString(@(XtShellStrings[687]));
      end;

    function XtCMaxAspectY : TString;
      begin
        XtCMaxAspectY:=TString(@(XtShellStrings[698]));
      end;

    function XtNminAspectX : TString;
      begin
        XtNminAspectX:=TString(@(XtShellStrings[709]));
      end;

    function XtCMinAspectX : TString;
      begin
        XtCMinAspectX:=TString(@(XtShellStrings[720]));
      end;

    function XtNmaxAspectX : TString;
      begin
        XtNmaxAspectX:=TString(@(XtShellStrings[731]));
      end;

    function XtCMaxAspectX : TString;
      begin
        XtCMaxAspectX:=TString(@(XtShellStrings[742]));
      end;

    function XtNwmTimeout : TString;
      begin
        XtNwmTimeout:=TString(@(XtShellStrings[753]));
      end;

    function XtCWmTimeout : TString;
      begin
        XtCWmTimeout:=TString(@(XtShellStrings[763]));
      end;

    function XtNwaitForWm : TString;
      begin
        XtNwaitForWm:=TString(@(XtShellStrings[773]));
      end;

    function XtCWaitForWm : TString;
      begin
        XtCWaitForWm:=TString(@(XtShellStrings[783]));
      end;

    function XtNwaitforwm : TString;
      begin
        XtNwaitforwm:=TString(@(XtShellStrings[793]));
      end;

    function XtCWaitforwm : TString;
      begin
        XtCWaitforwm:=TString(@(XtShellStrings[803]));
      end;

    function XtNclientLeader : TString;
      begin
        XtNclientLeader:=TString(@(XtShellStrings[813]));
      end;

    function XtCClientLeader : TString;
      begin
        XtCClientLeader:=TString(@(XtShellStrings[826]));
      end;

    function XtNwindowRole : TString;
      begin
        XtNwindowRole:=TString(@(XtShellStrings[839]));
      end;

    function XtCWindowRole : TString;
      begin
        XtCWindowRole:=TString(@(XtShellStrings[850]));
      end;

    function XtNurgency : TString;
      begin
        XtNurgency:=TString(@(XtShellStrings[861]));
      end;

    function XtCUrgency : TString;
      begin
        XtCUrgency:=TString(@(XtShellStrings[869]));
      end;

    function XtNcancelCallback : TString;
      begin
        XtNcancelCallback:=TString(@(XtShellStrings[877]));
      end;

    function XtNcloneCommand : TString;
      begin
        XtNcloneCommand:=TString(@(XtShellStrings[892]));
      end;

    function XtCCloneCommand : TString;
      begin
        XtCCloneCommand:=TString(@(XtShellStrings[905]));
      end;

    function XtNconnection : TString;
      begin
        XtNconnection:=TString(@(XtShellStrings[918]));
      end;

    function XtCConnection : TString;
      begin
        XtCConnection:=TString(@(XtShellStrings[929]));
      end;

    function XtNcurrentDirectory : TString;
      begin
        XtNcurrentDirectory:=TString(@(XtShellStrings[940]));
      end;

    function XtCCurrentDirectory : TString;
      begin
        XtCCurrentDirectory:=TString(@(XtShellStrings[957]));
      end;

    function XtNdieCallback : TString;
      begin
        XtNdieCallback:=TString(@(XtShellStrings[974]));
      end;

    function XtNdiscardCommand : TString;
      begin
        XtNdiscardCommand:=TString(@(XtShellStrings[986]));
      end;

    function XtCDiscardCommand : TString;
      begin
        XtCDiscardCommand:=TString(@(XtShellStrings[1001]));
      end;

    function XtNenvironment : TString;
      begin
        XtNenvironment:=TString(@(XtShellStrings[1016]));
      end;

    function XtCEnvironment : TString;
      begin
        XtCEnvironment:=TString(@(XtShellStrings[1028]));
      end;

    function XtNinteractCallback : TString;
      begin
        XtNinteractCallback:=TString(@(XtShellStrings[1040]));
      end;

    function XtNjoinSession : TString;
      begin
        XtNjoinSession:=TString(@(XtShellStrings[1057]));
      end;

    function XtCJoinSession : TString;
      begin
        XtCJoinSession:=TString(@(XtShellStrings[1069]));
      end;

    function XtNprogramPath : TString;
      begin
        XtNprogramPath:=TString(@(XtShellStrings[1081]));
      end;

    function XtCProgramPath : TString;
      begin
        XtCProgramPath:=TString(@(XtShellStrings[1093]));
      end;

    function XtNresignCommand : TString;
      begin
        XtNresignCommand:=TString(@(XtShellStrings[1105]));
      end;

    function XtCResignCommand : TString;
      begin
        XtCResignCommand:=TString(@(XtShellStrings[1119]));
      end;

    function XtNrestartCommand : TString;
      begin
        XtNrestartCommand:=TString(@(XtShellStrings[1133]));
      end;

    function XtCRestartCommand : TString;
      begin
        XtCRestartCommand:=TString(@(XtShellStrings[1148]));
      end;

    function XtNrestartStyle : TString;
      begin
        XtNrestartStyle:=TString(@(XtShellStrings[1163]));
      end;

    function XtCRestartStyle : TString;
      begin
        XtCRestartStyle:=TString(@(XtShellStrings[1176]));
      end;

    function XtNsaveCallback : TString;
      begin
        XtNsaveCallback:=TString(@(XtShellStrings[1189]));
      end;

    function XtNsaveCompleteCallback : TString;
      begin
        XtNsaveCompleteCallback:=TString(@(XtShellStrings[1202]));
      end;

    function XtNsessionID : TString;
      begin
        XtNsessionID:=TString(@(XtShellStrings[1223]));
      end;

    function XtCSessionID : TString;
      begin
        XtCSessionID:=TString(@(XtShellStrings[1233]));
      end;

    function XtNshutdownCommand : TString;
      begin
        XtNshutdownCommand:=TString(@(XtShellStrings[1243]));
      end;

    function XtCShutdownCommand : TString;
      begin
        XtCShutdownCommand:=TString(@(XtShellStrings[1259]));
      end;

    function XtNerrorCallback : TString;
      begin
        XtNerrorCallback:=TString(@(XtShellStrings[1275]));
      end;


end.
