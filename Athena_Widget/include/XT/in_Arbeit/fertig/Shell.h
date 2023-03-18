/***********************************************************

Copyright 1987, 1988, 1994, 1998  The Open Group

Permission to use, copy, modify, distribute, and sell this software and its
documentation for any purpose is hereby granted without fee, provided that
the above copyright notice appear in all copies and that both that
copyright notice and this permission notice appear in supporting
documentation.

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of The Open Group shall not be
used in advertising or otherwise to promote the sale, use or other dealings
in this Software without prior written authorization from The Open Group.


Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts.

                        All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Digital not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
SOFTWARE.

******************************************************************/

#ifndef _XtShell_h
#define _XtShell_h

#include <X11/SM/SMlib.h>
#include <X11/Intrinsic.h>

/***********************************************************************
 *
 * Shell Widget
 *
 ***********************************************************************/
/*
 * Shell-specific resources names, classes, and a representation type.
 */

//#ifndef XTSTRINGDEFINES
//#define _XtShell_h_Const const
//#endif

/* $Xorg: makestrs.c,v 1.6 2001/02/09 02:03:17 xorgcvs Exp $ */
/* This file is automatically generated. */
/* Default ABI version -- Do not edit */
#ifdef XTSTRINGDEFINES
#define XtNiconName "iconName"
#define XtCIconName "IconName"
#define XtNiconPixmap "iconPixmap"
#define XtCIconPixmap "IconPixmap"
#define XtNiconWindow "iconWindow"
#define XtCIconWindow "IconWindow"
#define XtNiconMask "iconMask"
#define XtCIconMask "IconMask"
#define XtNwindowGroup "windowGroup"
#define XtCWindowGroup "WindowGroup"
#define XtNvisual "visual"
#define XtCVisual "Visual"
#define XtNtitleEncoding "titleEncoding"
#define XtCTitleEncoding "TitleEncoding"
#define XtNsaveUnder "saveUnder"
#define XtCSaveUnder "SaveUnder"
#define XtNtransient "transient"
#define XtCTransient "Transient"
#define XtNoverrideRedirect "overrideRedirect"
#define XtCOverrideRedirect "OverrideRedirect"
#define XtNtransientFor "transientFor"
#define XtCTransientFor "TransientFor"
#define XtNiconNameEncoding "iconNameEncoding"
#define XtCIconNameEncoding "IconNameEncoding"
#define XtNallowShellResize "allowShellResize"
#define XtCAllowShellResize "AllowShellResize"
#define XtNcreatePopupChildProc "createPopupChildProc"
#define XtCCreatePopupChildProc "CreatePopupChildProc"
#define XtNtitle "title"
#define XtCTitle "Title"
#ifndef XtRAtom
#define XtRAtom "Atom"
#endif
#define XtNargc "argc"
#define XtCArgc "Argc"
#define XtNargv "argv"
#define XtCArgv "Argv"
#define XtNiconX "iconX"
#define XtCIconX "IconX"
#define XtNiconY "iconY"
#define XtCIconY "IconY"
#define XtNinput "input"
#define XtCInput "Input"
#define XtNiconic "iconic"
#define XtCIconic "Iconic"
#define XtNinitialState "initialState"
#define XtCInitialState "InitialState"
#define XtNgeometry "geometry"
#define XtCGeometry "Geometry"
#define XtNbaseWidth "baseWidth"
#define XtCBaseWidth "BaseWidth"
#define XtNbaseHeight "baseHeight"
#define XtCBaseHeight "BaseHeight"
#define XtNwinGravity "winGravity"
#define XtCWinGravity "WinGravity"
#define XtNminWidth "minWidth"
#define XtCMinWidth "MinWidth"
#define XtNminHeight "minHeight"
#define XtCMinHeight "MinHeight"
#define XtNmaxWidth "maxWidth"
#define XtCMaxWidth "MaxWidth"
#define XtNmaxHeight "maxHeight"
#define XtCMaxHeight "MaxHeight"
#define XtNwidthInc "widthInc"
#define XtCWidthInc "WidthInc"
#define XtNheightInc "heightInc"
#define XtCHeightInc "HeightInc"
#define XtNminAspectY "minAspectY"
#define XtCMinAspectY "MinAspectY"
#define XtNmaxAspectY "maxAspectY"
#define XtCMaxAspectY "MaxAspectY"
#define XtNminAspectX "minAspectX"
#define XtCMinAspectX "MinAspectX"
#define XtNmaxAspectX "maxAspectX"
#define XtCMaxAspectX "MaxAspectX"
#define XtNwmTimeout "wmTimeout"
#define XtCWmTimeout "WmTimeout"
#define XtNwaitForWm "waitforwm"
#define XtCWaitForWm "Waitforwm"
#define XtNwaitforwm "waitforwm"
#define XtCWaitforwm "Waitforwm"
#define XtNclientLeader "clientLeader"
#define XtCClientLeader "ClientLeader"
#define XtNwindowRole "windowRole"
#define XtCWindowRole "WindowRole"
#define XtNurgency "urgency"
#define XtCUrgency "Urgency"
#define XtNcancelCallback "cancelCallback"
#define XtNcloneCommand "cloneCommand"
#define XtCCloneCommand "CloneCommand"
#define XtNconnection "connection"
#define XtCConnection "Connection"
#define XtNcurrentDirectory "currentDirectory"
#define XtCCurrentDirectory "CurrentDirectory"
#define XtNdieCallback "dieCallback"
#define XtNdiscardCommand "discardCommand"
#define XtCDiscardCommand "DiscardCommand"
#define XtNenvironment "environment"
#define XtCEnvironment "Environment"
#define XtNinteractCallback "interactCallback"
#define XtNjoinSession "joinSession"
#define XtCJoinSession "JoinSession"
#define XtNprogramPath "programPath"
#define XtCProgramPath "ProgramPath"
#define XtNresignCommand "resignCommand"
#define XtCResignCommand "ResignCommand"
#define XtNrestartCommand "restartCommand"
#define XtCRestartCommand "RestartCommand"
#define XtNrestartStyle "restartStyle"
#define XtCRestartStyle "RestartStyle"
#define XtNsaveCallback "saveCallback"
#define XtNsaveCompleteCallback "saveCompleteCallback"
#define XtNsessionID "sessionID"
#define XtCSessionID "SessionID"
#define XtNshutdownCommand "shutdownCommand"
#define XtCShutdownCommand "ShutdownCommand"
#define XtNerrorCallback "errorCallback"
#else
extern const char XtShellStrings[];
#ifndef XtNiconName
#define XtNiconName ((String)&XtShellStrings[0])
#endif
#ifndef XtCIconName
#define XtCIconName ((String)&XtShellStrings[9])
#endif
#ifndef XtNiconPixmap
#define XtNiconPixmap ((String)&XtShellStrings[18])
#endif
#ifndef XtCIconPixmap
#define XtCIconPixmap ((String)&XtShellStrings[29])
#endif
#ifndef XtNiconWindow
#define XtNiconWindow ((String)&XtShellStrings[40])
#endif
#ifndef XtCIconWindow
#define XtCIconWindow ((String)&XtShellStrings[51])
#endif
#ifndef XtNiconMask
#define XtNiconMask ((String)&XtShellStrings[62])
#endif
#ifndef XtCIconMask
#define XtCIconMask ((String)&XtShellStrings[71])
#endif
#ifndef XtNwindowGroup
#define XtNwindowGroup ((String)&XtShellStrings[80])
#endif
#ifndef XtCWindowGroup
#define XtCWindowGroup ((String)&XtShellStrings[92])
#endif
#ifndef XtNvisual
#define XtNvisual ((String)&XtShellStrings[104])
#endif
#ifndef XtCVisual
#define XtCVisual ((String)&XtShellStrings[111])
#endif
#ifndef XtNtitleEncoding
#define XtNtitleEncoding ((String)&XtShellStrings[118])
#endif
#ifndef XtCTitleEncoding
#define XtCTitleEncoding ((String)&XtShellStrings[132])
#endif
#ifndef XtNsaveUnder
#define XtNsaveUnder ((String)&XtShellStrings[146])
#endif
#ifndef XtCSaveUnder
#define XtCSaveUnder ((String)&XtShellStrings[156])
#endif
#ifndef XtNtransient
#define XtNtransient ((String)&XtShellStrings[166])
#endif
#ifndef XtCTransient
#define XtCTransient ((String)&XtShellStrings[176])
#endif
#ifndef XtNoverrideRedirect
#define XtNoverrideRedirect ((String)&XtShellStrings[186])
#endif
#ifndef XtCOverrideRedirect
#define XtCOverrideRedirect ((String)&XtShellStrings[203])
#endif
#ifndef XtNtransientFor
#define XtNtransientFor ((String)&XtShellStrings[220])
#endif
#ifndef XtCTransientFor
#define XtCTransientFor ((String)&XtShellStrings[233])
#endif
#ifndef XtNiconNameEncoding
#define XtNiconNameEncoding ((String)&XtShellStrings[246])
#endif
#ifndef XtCIconNameEncoding
#define XtCIconNameEncoding ((String)&XtShellStrings[263])
#endif
#ifndef XtNallowShellResize
#define XtNallowShellResize ((String)&XtShellStrings[280])
#endif
#ifndef XtCAllowShellResize
#define XtCAllowShellResize ((String)&XtShellStrings[297])
#endif
#ifndef XtNcreatePopupChildProc
#define XtNcreatePopupChildProc ((String)&XtShellStrings[314])
#endif
#ifndef XtCCreatePopupChildProc
#define XtCCreatePopupChildProc ((String)&XtShellStrings[335])
#endif
#ifndef XtNtitle
#define XtNtitle ((String)&XtShellStrings[356])
#endif
#ifndef XtCTitle
#define XtCTitle ((String)&XtShellStrings[362])
#endif
#ifndef XtRAtom
#define XtRAtom ((String)&XtShellStrings[368])
#endif
#ifndef XtNargc
#define XtNargc ((String)&XtShellStrings[373])
#endif
#ifndef XtCArgc
#define XtCArgc ((String)&XtShellStrings[378])
#endif
#ifndef XtNargv
#define XtNargv ((String)&XtShellStrings[383])
#endif
#ifndef XtCArgv
#define XtCArgv ((String)&XtShellStrings[388])
#endif
#ifndef XtNiconX
#define XtNiconX ((String)&XtShellStrings[393])
#endif
#ifndef XtCIconX
#define XtCIconX ((String)&XtShellStrings[399])
#endif
#ifndef XtNiconY
#define XtNiconY ((String)&XtShellStrings[405])
#endif
#ifndef XtCIconY
#define XtCIconY ((String)&XtShellStrings[411])
#endif
#ifndef XtNinput
#define XtNinput ((String)&XtShellStrings[417])
#endif
#ifndef XtCInput
#define XtCInput ((String)&XtShellStrings[423])
#endif
#ifndef XtNiconic
#define XtNiconic ((String)&XtShellStrings[429])
#endif
#ifndef XtCIconic
#define XtCIconic ((String)&XtShellStrings[436])
#endif
#ifndef XtNinitialState
#define XtNinitialState ((String)&XtShellStrings[443])
#endif
#ifndef XtCInitialState
#define XtCInitialState ((String)&XtShellStrings[456])
#endif
#ifndef XtNgeometry
#define XtNgeometry ((String)&XtShellStrings[469])
#endif
#ifndef XtCGeometry
#define XtCGeometry ((String)&XtShellStrings[478])
#endif
#ifndef XtNbaseWidth
#define XtNbaseWidth ((String)&XtShellStrings[487])
#endif
#ifndef XtCBaseWidth
#define XtCBaseWidth ((String)&XtShellStrings[497])
#endif
#ifndef XtNbaseHeight
#define XtNbaseHeight ((String)&XtShellStrings[507])
#endif
#ifndef XtCBaseHeight
#define XtCBaseHeight ((String)&XtShellStrings[518])
#endif
#ifndef XtNwinGravity
#define XtNwinGravity ((String)&XtShellStrings[529])
#endif
#ifndef XtCWinGravity
#define XtCWinGravity ((String)&XtShellStrings[540])
#endif
#ifndef XtNminWidth
#define XtNminWidth ((String)&XtShellStrings[551])
#endif
#ifndef XtCMinWidth
#define XtCMinWidth ((String)&XtShellStrings[560])
#endif
#ifndef XtNminHeight
#define XtNminHeight ((String)&XtShellStrings[569])
#endif
#ifndef XtCMinHeight
#define XtCMinHeight ((String)&XtShellStrings[579])
#endif
#ifndef XtNmaxWidth
#define XtNmaxWidth ((String)&XtShellStrings[589])
#endif
#ifndef XtCMaxWidth
#define XtCMaxWidth ((String)&XtShellStrings[598])
#endif
#ifndef XtNmaxHeight
#define XtNmaxHeight ((String)&XtShellStrings[607])
#endif
#ifndef XtCMaxHeight
#define XtCMaxHeight ((String)&XtShellStrings[617])
#endif
#ifndef XtNwidthInc
#define XtNwidthInc ((String)&XtShellStrings[627])
#endif
#ifndef XtCWidthInc
#define XtCWidthInc ((String)&XtShellStrings[636])
#endif
#ifndef XtNheightInc
#define XtNheightInc ((String)&XtShellStrings[645])
#endif
#ifndef XtCHeightInc
#define XtCHeightInc ((String)&XtShellStrings[655])
#endif
#ifndef XtNminAspectY
#define XtNminAspectY ((String)&XtShellStrings[665])
#endif
#ifndef XtCMinAspectY
#define XtCMinAspectY ((String)&XtShellStrings[676])
#endif
#ifndef XtNmaxAspectY
#define XtNmaxAspectY ((String)&XtShellStrings[687])
#endif
#ifndef XtCMaxAspectY
#define XtCMaxAspectY ((String)&XtShellStrings[698])
#endif
#ifndef XtNminAspectX
#define XtNminAspectX ((String)&XtShellStrings[709])
#endif
#ifndef XtCMinAspectX
#define XtCMinAspectX ((String)&XtShellStrings[720])
#endif
#ifndef XtNmaxAspectX
#define XtNmaxAspectX ((String)&XtShellStrings[731])
#endif
#ifndef XtCMaxAspectX
#define XtCMaxAspectX ((String)&XtShellStrings[742])
#endif
#ifndef XtNwmTimeout
#define XtNwmTimeout ((String)&XtShellStrings[753])
#endif
#ifndef XtCWmTimeout
#define XtCWmTimeout ((String)&XtShellStrings[763])
#endif
#ifndef XtNwaitForWm
#define XtNwaitForWm ((String)&XtShellStrings[773])
#endif
#ifndef XtCWaitForWm
#define XtCWaitForWm ((String)&XtShellStrings[783])
#endif
#ifndef XtNwaitforwm
#define XtNwaitforwm ((String)&XtShellStrings[793])
#endif
#ifndef XtCWaitforwm
#define XtCWaitforwm ((String)&XtShellStrings[803])
#endif
#ifndef XtNclientLeader
#define XtNclientLeader ((String)&XtShellStrings[813])
#endif
#ifndef XtCClientLeader
#define XtCClientLeader ((String)&XtShellStrings[826])
#endif
#ifndef XtNwindowRole
#define XtNwindowRole ((String)&XtShellStrings[839])
#endif
#ifndef XtCWindowRole
#define XtCWindowRole ((String)&XtShellStrings[850])
#endif
#ifndef XtNurgency
#define XtNurgency ((String)&XtShellStrings[861])
#endif
#ifndef XtCUrgency
#define XtCUrgency ((String)&XtShellStrings[869])
#endif
#ifndef XtNcancelCallback
#define XtNcancelCallback ((String)&XtShellStrings[877])
#endif
#ifndef XtNcloneCommand
#define XtNcloneCommand ((String)&XtShellStrings[892])
#endif
#ifndef XtCCloneCommand
#define XtCCloneCommand ((String)&XtShellStrings[905])
#endif
#ifndef XtNconnection
#define XtNconnection ((String)&XtShellStrings[918])
#endif
#ifndef XtCConnection
#define XtCConnection ((String)&XtShellStrings[929])
#endif
#ifndef XtNcurrentDirectory
#define XtNcurrentDirectory ((String)&XtShellStrings[940])
#endif
#ifndef XtCCurrentDirectory
#define XtCCurrentDirectory ((String)&XtShellStrings[957])
#endif
#ifndef XtNdieCallback
#define XtNdieCallback ((String)&XtShellStrings[974])
#endif
#ifndef XtNdiscardCommand
#define XtNdiscardCommand ((String)&XtShellStrings[986])
#endif
#ifndef XtCDiscardCommand
#define XtCDiscardCommand ((String)&XtShellStrings[1001])
#endif
#ifndef XtNenvironment
#define XtNenvironment ((String)&XtShellStrings[1016])
#endif
#ifndef XtCEnvironment
#define XtCEnvironment ((String)&XtShellStrings[1028])
#endif
#ifndef XtNinteractCallback
#define XtNinteractCallback ((String)&XtShellStrings[1040])
#endif
#ifndef XtNjoinSession
#define XtNjoinSession ((String)&XtShellStrings[1057])
#endif
#ifndef XtCJoinSession
#define XtCJoinSession ((String)&XtShellStrings[1069])
#endif
#ifndef XtNprogramPath
#define XtNprogramPath ((String)&XtShellStrings[1081])
#endif
#ifndef XtCProgramPath
#define XtCProgramPath ((String)&XtShellStrings[1093])
#endif
#ifndef XtNresignCommand
#define XtNresignCommand ((String)&XtShellStrings[1105])
#endif
#ifndef XtCResignCommand
#define XtCResignCommand ((String)&XtShellStrings[1119])
#endif
#ifndef XtNrestartCommand
#define XtNrestartCommand ((String)&XtShellStrings[1133])
#endif
#ifndef XtCRestartCommand
#define XtCRestartCommand ((String)&XtShellStrings[1148])
#endif
#ifndef XtNrestartStyle
#define XtNrestartStyle ((String)&XtShellStrings[1163])
#endif
#ifndef XtCRestartStyle
#define XtCRestartStyle ((String)&XtShellStrings[1176])
#endif
#ifndef XtNsaveCallback
#define XtNsaveCallback ((String)&XtShellStrings[1189])
#endif
#ifndef XtNsaveCompleteCallback
#define XtNsaveCompleteCallback ((String)&XtShellStrings[1202])
#endif
#ifndef XtNsessionID
#define XtNsessionID ((String)&XtShellStrings[1223])
#endif
#ifndef XtCSessionID
#define XtCSessionID ((String)&XtShellStrings[1233])
#endif
#ifndef XtNshutdownCommand
#define XtNshutdownCommand ((String)&XtShellStrings[1243])
#endif
#ifndef XtCShutdownCommand
#define XtCShutdownCommand ((String)&XtShellStrings[1259])
#endif
#ifndef XtNerrorCallback
#define XtNerrorCallback ((String)&XtShellStrings[1275])
#endif
#endif /* XTSTRINGDEFINES */

#ifndef XTSTRINGDEFINES
#undef _XtShell_h_Const
#endif

/* Class record constants */

typedef struct _ShellClassRec *ShellWidgetClass;
typedef struct _OverrideShellClassRec *OverrideShellWidgetClass;
typedef struct _WMShellClassRec *WMShellWidgetClass;
typedef struct _TransientShellClassRec *TransientShellWidgetClass;
typedef struct _TopLevelShellClassRec *TopLevelShellWidgetClass;
typedef struct _ApplicationShellClassRec *ApplicationShellWidgetClass;
typedef struct _SessionShellClassRec *SessionShellWidgetClass;

#ifndef SHELL
extern WidgetClass shellWidgetClass;
extern WidgetClass overrideShellWidgetClass;
extern WidgetClass wmShellWidgetClass;
extern WidgetClass transientShellWidgetClass;
extern WidgetClass topLevelShellWidgetClass;
extern WidgetClass applicationShellWidgetClass;
extern WidgetClass sessionShellWidgetClass;
#endif

#endif /* _XtShell_h */
/* DON'T ADD STUFF AFTER THIS #endif */