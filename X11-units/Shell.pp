
unit Shell;
interface

{
  Automatically converted by H2Pas 1.0.0 from /usr/include/X11/Shell.h
  The following command line parameters were used:
    /usr/include/X11/Shell.h
    -s
    -S
    -o
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/X11/X11-units/Shell.pp
}

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

    function XtNiconName : String;      

{$endif}
{$ifndef XtCIconName}

    function XtCIconName : String;      

{$endif}
{$ifndef XtNiconPixmap}

    function XtNiconPixmap : String;      

{$endif}
{$ifndef XtCIconPixmap}

    function XtCIconPixmap : String;      

{$endif}
{$ifndef XtNiconWindow}

    function XtNiconWindow : String;      

{$endif}
{$ifndef XtCIconWindow}

    function XtCIconWindow : String;      

{$endif}
{$ifndef XtNiconMask}

    function XtNiconMask : String;      

{$endif}
{$ifndef XtCIconMask}

    function XtCIconMask : String;      

{$endif}
{$ifndef XtNwindowGroup}

    function XtNwindowGroup : String;      

{$endif}
{$ifndef XtCWindowGroup}

    function XtCWindowGroup : String;      

{$endif}
{$ifndef XtNvisual}

    function XtNvisual : String;      

{$endif}
{$ifndef XtCVisual}

    function XtCVisual : String;      

{$endif}
{$ifndef XtNtitleEncoding}

    function XtNtitleEncoding : String;      

{$endif}
{$ifndef XtCTitleEncoding}

    function XtCTitleEncoding : String;      

{$endif}
{$ifndef XtNsaveUnder}

    function XtNsaveUnder : String;      

{$endif}
{$ifndef XtCSaveUnder}

    function XtCSaveUnder : String;      

{$endif}
{$ifndef XtNtransient}

    function XtNtransient : String;      

{$endif}
{$ifndef XtCTransient}

    function XtCTransient : String;      

{$endif}
{$ifndef XtNoverrideRedirect}

    function XtNoverrideRedirect : String;      

{$endif}
{$ifndef XtCOverrideRedirect}

    function XtCOverrideRedirect : String;      

{$endif}
{$ifndef XtNtransientFor}

    function XtNtransientFor : String;      

{$endif}
{$ifndef XtCTransientFor}

    function XtCTransientFor : String;      

{$endif}
{$ifndef XtNiconNameEncoding}

    function XtNiconNameEncoding : String;      

{$endif}
{$ifndef XtCIconNameEncoding}

    function XtCIconNameEncoding : String;      

{$endif}
{$ifndef XtNallowShellResize}

    function XtNallowShellResize : String;      

{$endif}
{$ifndef XtCAllowShellResize}

    function XtCAllowShellResize : String;      

{$endif}
{$ifndef XtNcreatePopupChildProc}

    function XtNcreatePopupChildProc : String;      

{$endif}
{$ifndef XtCCreatePopupChildProc}

    function XtCCreatePopupChildProc : String;      

{$endif}
{$ifndef XtNtitle}

    function XtNtitle : String;      

{$endif}
{$ifndef XtCTitle}

    function XtCTitle : String;      

{$endif}
{$ifndef XtRAtom}

    function XtRAtom : String;      

{$endif}
{$ifndef XtNargc}

    function XtNargc : String;      

{$endif}
{$ifndef XtCArgc}

    function XtCArgc : String;      

{$endif}
{$ifndef XtNargv}

    function XtNargv : String;      

{$endif}
{$ifndef XtCArgv}

    function XtCArgv : String;      

{$endif}
{$ifndef XtNiconX}

    function XtNiconX : String;      

{$endif}
{$ifndef XtCIconX}

    function XtCIconX : String;      

{$endif}
{$ifndef XtNiconY}

    function XtNiconY : String;      

{$endif}
{$ifndef XtCIconY}

    function XtCIconY : String;      

{$endif}
{$ifndef XtNinput}

    function XtNinput : String;      

{$endif}
{$ifndef XtCInput}

    function XtCInput : String;      

{$endif}
{$ifndef XtNiconic}

    function XtNiconic : String;      

{$endif}
{$ifndef XtCIconic}

    function XtCIconic : String;      

{$endif}
{$ifndef XtNinitialState}

    function XtNinitialState : String;      

{$endif}
{$ifndef XtCInitialState}

    function XtCInitialState : String;      

{$endif}
{$ifndef XtNgeometry}

    function XtNgeometry : String;      

{$endif}
{$ifndef XtCGeometry}

    function XtCGeometry : String;      

{$endif}
{$ifndef XtNbaseWidth}

    function XtNbaseWidth : String;      

{$endif}
{$ifndef XtCBaseWidth}

    function XtCBaseWidth : String;      

{$endif}
{$ifndef XtNbaseHeight}

    function XtNbaseHeight : String;      

{$endif}
{$ifndef XtCBaseHeight}

    function XtCBaseHeight : String;      

{$endif}
{$ifndef XtNwinGravity}

    function XtNwinGravity : String;      

{$endif}
{$ifndef XtCWinGravity}

    function XtCWinGravity : String;      

{$endif}
{$ifndef XtNminWidth}

    function XtNminWidth : String;      

{$endif}
{$ifndef XtCMinWidth}

    function XtCMinWidth : String;      

{$endif}
{$ifndef XtNminHeight}

    function XtNminHeight : String;      

{$endif}
{$ifndef XtCMinHeight}

    function XtCMinHeight : String;      

{$endif}
{$ifndef XtNmaxWidth}

    function XtNmaxWidth : String;      

{$endif}
{$ifndef XtCMaxWidth}

    function XtCMaxWidth : String;      

{$endif}
{$ifndef XtNmaxHeight}

    function XtNmaxHeight : String;      

{$endif}
{$ifndef XtCMaxHeight}

    function XtCMaxHeight : String;      

{$endif}
{$ifndef XtNwidthInc}

    function XtNwidthInc : String;      

{$endif}
{$ifndef XtCWidthInc}

    function XtCWidthInc : String;      

{$endif}
{$ifndef XtNheightInc}

    function XtNheightInc : String;      

{$endif}
{$ifndef XtCHeightInc}

    function XtCHeightInc : String;      

{$endif}
{$ifndef XtNminAspectY}

    function XtNminAspectY : String;      

{$endif}
{$ifndef XtCMinAspectY}

    function XtCMinAspectY : String;      

{$endif}
{$ifndef XtNmaxAspectY}

    function XtNmaxAspectY : String;      

{$endif}
{$ifndef XtCMaxAspectY}

    function XtCMaxAspectY : String;      

{$endif}
{$ifndef XtNminAspectX}

    function XtNminAspectX : String;      

{$endif}
{$ifndef XtCMinAspectX}

    function XtCMinAspectX : String;      

{$endif}
{$ifndef XtNmaxAspectX}

    function XtNmaxAspectX : String;      

{$endif}
{$ifndef XtCMaxAspectX}

    function XtCMaxAspectX : String;      

{$endif}
{$ifndef XtNwmTimeout}

    function XtNwmTimeout : String;      

{$endif}
{$ifndef XtCWmTimeout}

    function XtCWmTimeout : String;      

{$endif}
{$ifndef XtNwaitForWm}

    function XtNwaitForWm : String;      

{$endif}
{$ifndef XtCWaitForWm}

    function XtCWaitForWm : String;      

{$endif}
{$ifndef XtNwaitforwm}

    function XtNwaitforwm : String;      

{$endif}
{$ifndef XtCWaitforwm}

    function XtCWaitforwm : String;      

{$endif}
{$ifndef XtNclientLeader}

    function XtNclientLeader : String;      

{$endif}
{$ifndef XtCClientLeader}

    function XtCClientLeader : String;      

{$endif}
{$ifndef XtNwindowRole}

    function XtNwindowRole : String;      

{$endif}
{$ifndef XtCWindowRole}

    function XtCWindowRole : String;      

{$endif}
{$ifndef XtNurgency}

    function XtNurgency : String;      

{$endif}
{$ifndef XtCUrgency}

    function XtCUrgency : String;      

{$endif}
{$ifndef XtNcancelCallback}

    function XtNcancelCallback : String;      

{$endif}
{$ifndef XtNcloneCommand}

    function XtNcloneCommand : String;      

{$endif}
{$ifndef XtCCloneCommand}

    function XtCCloneCommand : String;      

{$endif}
{$ifndef XtNconnection}

    function XtNconnection : String;      

{$endif}
{$ifndef XtCConnection}

    function XtCConnection : String;      

{$endif}
{$ifndef XtNcurrentDirectory}

    function XtNcurrentDirectory : String;      

{$endif}
{$ifndef XtCCurrentDirectory}

    function XtCCurrentDirectory : String;      

{$endif}
{$ifndef XtNdieCallback}

    function XtNdieCallback : String;      

{$endif}
{$ifndef XtNdiscardCommand}

    function XtNdiscardCommand : String;      

{$endif}
{$ifndef XtCDiscardCommand}

    function XtCDiscardCommand : String;      

{$endif}
{$ifndef XtNenvironment}

    function XtNenvironment : String;      

{$endif}
{$ifndef XtCEnvironment}

    function XtCEnvironment : String;      

{$endif}
{$ifndef XtNinteractCallback}

    function XtNinteractCallback : String;      

{$endif}
{$ifndef XtNjoinSession}

    function XtNjoinSession : String;      

{$endif}
{$ifndef XtCJoinSession}

    function XtCJoinSession : String;      

{$endif}
{$ifndef XtNprogramPath}

    function XtNprogramPath : String;      

{$endif}
{$ifndef XtCProgramPath}

    function XtCProgramPath : String;      

{$endif}
{$ifndef XtNresignCommand}

    function XtNresignCommand : String;      

{$endif}
{$ifndef XtCResignCommand}

    function XtCResignCommand : String;      

{$endif}
{$ifndef XtNrestartCommand}

    function XtNrestartCommand : String;      

{$endif}
{$ifndef XtCRestartCommand}

    function XtCRestartCommand : String;      

{$endif}
{$ifndef XtNrestartStyle}

    function XtNrestartStyle : String;      

{$endif}
{$ifndef XtCRestartStyle}

    function XtCRestartStyle : String;      

{$endif}
{$ifndef XtNsaveCallback}

    function XtNsaveCallback : String;      

{$endif}
{$ifndef XtNsaveCompleteCallback}

    function XtNsaveCompleteCallback : String;      

{$endif}
{$ifndef XtNsessionID}

    function XtNsessionID : String;      

{$endif}
{$ifndef XtCSessionID}

    function XtCSessionID : String;      

{$endif}
{$ifndef XtNshutdownCommand}

    function XtNshutdownCommand : String;      

{$endif}
{$ifndef XtCShutdownCommand}

    function XtCShutdownCommand : String;      

{$endif}
{$ifndef XtNerrorCallback}

    function XtNerrorCallback : String;      

{$endif}
{$endif}

{$ifndef XTSTRINGDEFINES}
{$undef _XtShell_h_Const}
{$endif}


    type
      ShellWidgetClass = ^_ShellClassRec;

      OverrideShellWidgetClass = ^_OverrideShellClassRec;

      WMShellWidgetClass = ^_WMShellClassRec;

      TransientShellWidgetClass = ^_TransientShellClassRec;

      TopLevelShellWidgetClass = ^_TopLevelShellClassRec;

      ApplicationShellWidgetClass = ^_ApplicationShellClassRec;

      SessionShellWidgetClass = ^_SessionShellClassRec;
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

    function XtNiconName : String;
      begin
        XtNiconName:=String(@(XtShellStrings[0]));
      end;

    function XtCIconName : String;
      begin
        XtCIconName:=String(@(XtShellStrings[9]));
      end;

    function XtNiconPixmap : String;
      begin
        XtNiconPixmap:=String(@(XtShellStrings[18]));
      end;

    function XtCIconPixmap : String;
      begin
        XtCIconPixmap:=String(@(XtShellStrings[29]));
      end;

    function XtNiconWindow : String;
      begin
        XtNiconWindow:=String(@(XtShellStrings[40]));
      end;

    function XtCIconWindow : String;
      begin
        XtCIconWindow:=String(@(XtShellStrings[51]));
      end;

    function XtNiconMask : String;
      begin
        XtNiconMask:=String(@(XtShellStrings[62]));
      end;

    function XtCIconMask : String;
      begin
        XtCIconMask:=String(@(XtShellStrings[71]));
      end;

    function XtNwindowGroup : String;
      begin
        XtNwindowGroup:=String(@(XtShellStrings[80]));
      end;

    function XtCWindowGroup : String;
      begin
        XtCWindowGroup:=String(@(XtShellStrings[92]));
      end;

    function XtNvisual : String;
      begin
        XtNvisual:=String(@(XtShellStrings[104]));
      end;

    function XtCVisual : String;
      begin
        XtCVisual:=String(@(XtShellStrings[111]));
      end;

    function XtNtitleEncoding : String;
      begin
        XtNtitleEncoding:=String(@(XtShellStrings[118]));
      end;

    function XtCTitleEncoding : String;
      begin
        XtCTitleEncoding:=String(@(XtShellStrings[132]));
      end;

    function XtNsaveUnder : String;
      begin
        XtNsaveUnder:=String(@(XtShellStrings[146]));
      end;

    function XtCSaveUnder : String;
      begin
        XtCSaveUnder:=String(@(XtShellStrings[156]));
      end;

    function XtNtransient : String;
      begin
        XtNtransient:=String(@(XtShellStrings[166]));
      end;

    function XtCTransient : String;
      begin
        XtCTransient:=String(@(XtShellStrings[176]));
      end;

    function XtNoverrideRedirect : String;
      begin
        XtNoverrideRedirect:=String(@(XtShellStrings[186]));
      end;

    function XtCOverrideRedirect : String;
      begin
        XtCOverrideRedirect:=String(@(XtShellStrings[203]));
      end;

    function XtNtransientFor : String;
      begin
        XtNtransientFor:=String(@(XtShellStrings[220]));
      end;

    function XtCTransientFor : String;
      begin
        XtCTransientFor:=String(@(XtShellStrings[233]));
      end;

    function XtNiconNameEncoding : String;
      begin
        XtNiconNameEncoding:=String(@(XtShellStrings[246]));
      end;

    function XtCIconNameEncoding : String;
      begin
        XtCIconNameEncoding:=String(@(XtShellStrings[263]));
      end;

    function XtNallowShellResize : String;
      begin
        XtNallowShellResize:=String(@(XtShellStrings[280]));
      end;

    function XtCAllowShellResize : String;
      begin
        XtCAllowShellResize:=String(@(XtShellStrings[297]));
      end;

    function XtNcreatePopupChildProc : String;
      begin
        XtNcreatePopupChildProc:=String(@(XtShellStrings[314]));
      end;

    function XtCCreatePopupChildProc : String;
      begin
        XtCCreatePopupChildProc:=String(@(XtShellStrings[335]));
      end;

    function XtNtitle : String;
      begin
        XtNtitle:=String(@(XtShellStrings[356]));
      end;

    function XtCTitle : String;
      begin
        XtCTitle:=String(@(XtShellStrings[362]));
      end;

    function XtRAtom : String;
      begin
        XtRAtom:=String(@(XtShellStrings[368]));
      end;

    function XtNargc : String;
      begin
        XtNargc:=String(@(XtShellStrings[373]));
      end;

    function XtCArgc : String;
      begin
        XtCArgc:=String(@(XtShellStrings[378]));
      end;

    function XtNargv : String;
      begin
        XtNargv:=String(@(XtShellStrings[383]));
      end;

    function XtCArgv : String;
      begin
        XtCArgv:=String(@(XtShellStrings[388]));
      end;

    function XtNiconX : String;
      begin
        XtNiconX:=String(@(XtShellStrings[393]));
      end;

    function XtCIconX : String;
      begin
        XtCIconX:=String(@(XtShellStrings[399]));
      end;

    function XtNiconY : String;
      begin
        XtNiconY:=String(@(XtShellStrings[405]));
      end;

    function XtCIconY : String;
      begin
        XtCIconY:=String(@(XtShellStrings[411]));
      end;

    function XtNinput : String;
      begin
        XtNinput:=String(@(XtShellStrings[417]));
      end;

    function XtCInput : String;
      begin
        XtCInput:=String(@(XtShellStrings[423]));
      end;

    function XtNiconic : String;
      begin
        XtNiconic:=String(@(XtShellStrings[429]));
      end;

    function XtCIconic : String;
      begin
        XtCIconic:=String(@(XtShellStrings[436]));
      end;

    function XtNinitialState : String;
      begin
        XtNinitialState:=String(@(XtShellStrings[443]));
      end;

    function XtCInitialState : String;
      begin
        XtCInitialState:=String(@(XtShellStrings[456]));
      end;

    function XtNgeometry : String;
      begin
        XtNgeometry:=String(@(XtShellStrings[469]));
      end;

    function XtCGeometry : String;
      begin
        XtCGeometry:=String(@(XtShellStrings[478]));
      end;

    function XtNbaseWidth : String;
      begin
        XtNbaseWidth:=String(@(XtShellStrings[487]));
      end;

    function XtCBaseWidth : String;
      begin
        XtCBaseWidth:=String(@(XtShellStrings[497]));
      end;

    function XtNbaseHeight : String;
      begin
        XtNbaseHeight:=String(@(XtShellStrings[507]));
      end;

    function XtCBaseHeight : String;
      begin
        XtCBaseHeight:=String(@(XtShellStrings[518]));
      end;

    function XtNwinGravity : String;
      begin
        XtNwinGravity:=String(@(XtShellStrings[529]));
      end;

    function XtCWinGravity : String;
      begin
        XtCWinGravity:=String(@(XtShellStrings[540]));
      end;

    function XtNminWidth : String;
      begin
        XtNminWidth:=String(@(XtShellStrings[551]));
      end;

    function XtCMinWidth : String;
      begin
        XtCMinWidth:=String(@(XtShellStrings[560]));
      end;

    function XtNminHeight : String;
      begin
        XtNminHeight:=String(@(XtShellStrings[569]));
      end;

    function XtCMinHeight : String;
      begin
        XtCMinHeight:=String(@(XtShellStrings[579]));
      end;

    function XtNmaxWidth : String;
      begin
        XtNmaxWidth:=String(@(XtShellStrings[589]));
      end;

    function XtCMaxWidth : String;
      begin
        XtCMaxWidth:=String(@(XtShellStrings[598]));
      end;

    function XtNmaxHeight : String;
      begin
        XtNmaxHeight:=String(@(XtShellStrings[607]));
      end;

    function XtCMaxHeight : String;
      begin
        XtCMaxHeight:=String(@(XtShellStrings[617]));
      end;

    function XtNwidthInc : String;
      begin
        XtNwidthInc:=String(@(XtShellStrings[627]));
      end;

    function XtCWidthInc : String;
      begin
        XtCWidthInc:=String(@(XtShellStrings[636]));
      end;

    function XtNheightInc : String;
      begin
        XtNheightInc:=String(@(XtShellStrings[645]));
      end;

    function XtCHeightInc : String;
      begin
        XtCHeightInc:=String(@(XtShellStrings[655]));
      end;

    function XtNminAspectY : String;
      begin
        XtNminAspectY:=String(@(XtShellStrings[665]));
      end;

    function XtCMinAspectY : String;
      begin
        XtCMinAspectY:=String(@(XtShellStrings[676]));
      end;

    function XtNmaxAspectY : String;
      begin
        XtNmaxAspectY:=String(@(XtShellStrings[687]));
      end;

    function XtCMaxAspectY : String;
      begin
        XtCMaxAspectY:=String(@(XtShellStrings[698]));
      end;

    function XtNminAspectX : String;
      begin
        XtNminAspectX:=String(@(XtShellStrings[709]));
      end;

    function XtCMinAspectX : String;
      begin
        XtCMinAspectX:=String(@(XtShellStrings[720]));
      end;

    function XtNmaxAspectX : String;
      begin
        XtNmaxAspectX:=String(@(XtShellStrings[731]));
      end;

    function XtCMaxAspectX : String;
      begin
        XtCMaxAspectX:=String(@(XtShellStrings[742]));
      end;

    function XtNwmTimeout : String;
      begin
        XtNwmTimeout:=String(@(XtShellStrings[753]));
      end;

    function XtCWmTimeout : String;
      begin
        XtCWmTimeout:=String(@(XtShellStrings[763]));
      end;

    function XtNwaitForWm : String;
      begin
        XtNwaitForWm:=String(@(XtShellStrings[773]));
      end;

    function XtCWaitForWm : String;
      begin
        XtCWaitForWm:=String(@(XtShellStrings[783]));
      end;

    function XtNwaitforwm : String;
      begin
        XtNwaitforwm:=String(@(XtShellStrings[793]));
      end;

    function XtCWaitforwm : String;
      begin
        XtCWaitforwm:=String(@(XtShellStrings[803]));
      end;

    function XtNclientLeader : String;
      begin
        XtNclientLeader:=String(@(XtShellStrings[813]));
      end;

    function XtCClientLeader : String;
      begin
        XtCClientLeader:=String(@(XtShellStrings[826]));
      end;

    function XtNwindowRole : String;
      begin
        XtNwindowRole:=String(@(XtShellStrings[839]));
      end;

    function XtCWindowRole : String;
      begin
        XtCWindowRole:=String(@(XtShellStrings[850]));
      end;

    function XtNurgency : String;
      begin
        XtNurgency:=String(@(XtShellStrings[861]));
      end;

    function XtCUrgency : String;
      begin
        XtCUrgency:=String(@(XtShellStrings[869]));
      end;

    function XtNcancelCallback : String;
      begin
        XtNcancelCallback:=String(@(XtShellStrings[877]));
      end;

    function XtNcloneCommand : String;
      begin
        XtNcloneCommand:=String(@(XtShellStrings[892]));
      end;

    function XtCCloneCommand : String;
      begin
        XtCCloneCommand:=String(@(XtShellStrings[905]));
      end;

    function XtNconnection : String;
      begin
        XtNconnection:=String(@(XtShellStrings[918]));
      end;

    function XtCConnection : String;
      begin
        XtCConnection:=String(@(XtShellStrings[929]));
      end;

    function XtNcurrentDirectory : String;
      begin
        XtNcurrentDirectory:=String(@(XtShellStrings[940]));
      end;

    function XtCCurrentDirectory : String;
      begin
        XtCCurrentDirectory:=String(@(XtShellStrings[957]));
      end;

    function XtNdieCallback : String;
      begin
        XtNdieCallback:=String(@(XtShellStrings[974]));
      end;

    function XtNdiscardCommand : String;
      begin
        XtNdiscardCommand:=String(@(XtShellStrings[986]));
      end;

    function XtCDiscardCommand : String;
      begin
        XtCDiscardCommand:=String(@(XtShellStrings[1001]));
      end;

    function XtNenvironment : String;
      begin
        XtNenvironment:=String(@(XtShellStrings[1016]));
      end;

    function XtCEnvironment : String;
      begin
        XtCEnvironment:=String(@(XtShellStrings[1028]));
      end;

    function XtNinteractCallback : String;
      begin
        XtNinteractCallback:=String(@(XtShellStrings[1040]));
      end;

    function XtNjoinSession : String;
      begin
        XtNjoinSession:=String(@(XtShellStrings[1057]));
      end;

    function XtCJoinSession : String;
      begin
        XtCJoinSession:=String(@(XtShellStrings[1069]));
      end;

    function XtNprogramPath : String;
      begin
        XtNprogramPath:=String(@(XtShellStrings[1081]));
      end;

    function XtCProgramPath : String;
      begin
        XtCProgramPath:=String(@(XtShellStrings[1093]));
      end;

    function XtNresignCommand : String;
      begin
        XtNresignCommand:=String(@(XtShellStrings[1105]));
      end;

    function XtCResignCommand : String;
      begin
        XtCResignCommand:=String(@(XtShellStrings[1119]));
      end;

    function XtNrestartCommand : String;
      begin
        XtNrestartCommand:=String(@(XtShellStrings[1133]));
      end;

    function XtCRestartCommand : String;
      begin
        XtCRestartCommand:=String(@(XtShellStrings[1148]));
      end;

    function XtNrestartStyle : String;
      begin
        XtNrestartStyle:=String(@(XtShellStrings[1163]));
      end;

    function XtCRestartStyle : String;
      begin
        XtCRestartStyle:=String(@(XtShellStrings[1176]));
      end;

    function XtNsaveCallback : String;
      begin
        XtNsaveCallback:=String(@(XtShellStrings[1189]));
      end;

    function XtNsaveCompleteCallback : String;
      begin
        XtNsaveCompleteCallback:=String(@(XtShellStrings[1202]));
      end;

    function XtNsessionID : String;
      begin
        XtNsessionID:=String(@(XtShellStrings[1223]));
      end;

    function XtCSessionID : String;
      begin
        XtCSessionID:=String(@(XtShellStrings[1233]));
      end;

    function XtNshutdownCommand : String;
      begin
        XtNshutdownCommand:=String(@(XtShellStrings[1243]));
      end;

    function XtCShutdownCommand : String;
      begin
        XtCShutdownCommand:=String(@(XtShellStrings[1259]));
      end;

    function XtNerrorCallback : String;
      begin
        XtNerrorCallback:=String(@(XtShellStrings[1275]));
      end;


end.
