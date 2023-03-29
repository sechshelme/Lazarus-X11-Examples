unit XmMwmUtil;

interface

uses
  unixtype,
  x;

// {$include <X11/X.h>	/* for Window typedefs */}
// {$include <X11/Xmd.h>	/* for protocol typedefs */}

type
  PMotifWmHints = ^TMotifWmHints;
  TMotifWmHints = record
      flags : longint;
      functions : longint;
      decorations : longint;
      input_mode : longint;
      status : longint;
    end;

  PMwmHints = ^TMwmHints;
  TMwmHints = TMotifWmHints;
{ bit definitions for MwmHints.flags  }

const
  MWM_HINTS_FUNCTIONS = 1 shl 0;  
  MWM_HINTS_DECORATIONS = 1 shl 1;  
  MWM_HINTS_INPUT_MODE = 1 shl 2;  
  MWM_HINTS_STATUS = 1 shl 3;  
{ bit definitions for MwmHints.functions  }
  MWM_FUNC_ALL = 1 shl 0;  
  MWM_FUNC_RESIZE = 1 shl 1;  
  MWM_FUNC_MOVE = 1 shl 2;  
  MWM_FUNC_MINIMIZE = 1 shl 3;  
  MWM_FUNC_MAXIMIZE = 1 shl 4;  
  MWM_FUNC_CLOSE = 1 shl 5;  
{ bit definitions for MwmHints.decorations  }
  MWM_DECOR_ALL = 1 shl 0;  
  MWM_DECOR_BORDER = 1 shl 1;  
  MWM_DECOR_RESIZEH = 1 shl 2;  
  MWM_DECOR_TITLE = 1 shl 3;  
  MWM_DECOR_MENU = 1 shl 4;  
  MWM_DECOR_MINIMIZE = 1 shl 5;  
  MWM_DECOR_MAXIMIZE = 1 shl 6;  
{ definitions for running automated tests  }
  WINDOW_MINIMIZE_INFO = 0;  
  WINDOW_MAXIMIZE_INFO = 1;  
  WINDOW_MOVE_INFO = 2;  
  WINDOW_RAISE_INFO = 3;  
  WINDOW_RESIZE_NORTH_INFO = 4;  
  WINDOW_RESIZE_SOUTH_INFO = 5;  
  WINDOW_RESIZE_EAST_INFO = 6;  
  WINDOW_RESIZE_WEST_INFO = 7;  
  WINDOW_RESIZE_NORTHEAST_INFO = 8;  
  WINDOW_RESIZE_NORTHWEST_INFO = 9;  
  WINDOW_RESIZE_SOUTHEAST_INFO = 10;  
  WINDOW_RESIZE_SOUTHWEST_INFO = 11;  
  WINDOW_MENU_ITEM_SELECT_INFO = 12;  
  WINDOW_DEICONIFY_INFO = 13;  
  WINDOW_MENU_POST_INFO = 14;  
  WINDOW_FOCUS_INFO = 15;  
  WINDOW_MENU_UNPOST_INFO = 16;  
  WINDOW_MENU_ITEM_CHECK_INFO = 17;  
  ICON_MOVE_INFO = 18;  
  ICON_MENU_POST_INFO = 19;  
  ICON_MENU_UNPOST_INFO = 20;  
  ICON_MENU_ITEM_SELECT_INFO = 21;  
  WM_NORTHWEST = 0;  
  WM_NORTH = 1;  
  WM_NORTHEAST = 2;  
  WM_WEST = 3;  
  WM_EAST = 4;  
  WM_SOUTHWEST = 5;  
  WM_SOUTH = 6;  
  WM_SOUTHEAST = 7;  
  INVALID = -(1);  
  MAX_MENU_ITEMS = 20;  
  MAX_NAME_LEN = 95;  
{ values for MwmHints.input_mode  }
  MWM_INPUT_MODELESS = 0;  
  MWM_INPUT_PRIMARY_APPLICATION_MODAL = 1;  
  MWM_INPUT_SYSTEM_MODAL = 2;  
  MWM_INPUT_FULL_APPLICATION_MODAL = 3;  
{ bit definitions for MwmHints.status  }
  MWM_TEAROFF_WINDOW = 1 shl 0;  
{
 * The following is for compatibility only. It use is deprecated.
  }
  MWM_INPUT_APPLICATION_MODAL = MWM_INPUT_PRIMARY_APPLICATION_MODAL;  
{
 * Contents of the _MWM_INFO property.
  }
type
  PMotifWmInfo = ^TMotifWmInfo;
  TMotifWmInfo = record
      flags : cslong;
      wm_window : TWindow;
    end;

  PMwmInfo = ^TMwmInfo;
  TMwmInfo = TMotifWmInfo;
{ bit definitions for MotifWmInfo .flags  }

const
  MWM_INFO_STARTUP_STANDARD = 1 shl 0;  
  MWM_INFO_STARTUP_CUSTOM = 1 shl 1;  
{
 * Definitions for the _MWM_HINTS property.
  }
{ 32-bit property items are stored as long on the client (whether
     * that means 32 bits or 64).  XChangeProperty handles the conversion
     * to the actual 32-bit quantities sent to the server.
      }
type
  PPropMotifWmHints = ^TPropMotifWmHints;
  TPropMotifWmHints = record
      flags : culong;
      functions : culong;
      decorations : culong;
      inputMode : cslong;
      status : culong;
    end;

  PPropMwmHints = ^TPropMwmHints;
  TPropMwmHints = TPropMotifWmHints;
{ number of elements of size 32 in _MWM_HINTS  }

const
  PROP_MOTIF_WM_HINTS_ELEMENTS = 5;  
  PROP_MWM_HINTS_ELEMENTS = PROP_MOTIF_WM_HINTS_ELEMENTS;  
{ atom name for _MWM_HINTS property  }
  _XA_MOTIF_WM_HINTS = '_MOTIF_WM_HINTS';  
  _XA_MWM_HINTS = _XA_MOTIF_WM_HINTS;  
{
 * Definitions for the _MWM_MESSAGES property.
  }
  _XA_MOTIF_WM_MESSAGES = '_MOTIF_WM_MESSAGES';  
  _XA_MWM_MESSAGES = _XA_MOTIF_WM_MESSAGES;  
{ atom that enables client frame offset messages  }
  _XA_MOTIF_WM_OFFSET = '_MOTIF_WM_OFFSET';  
{
 * Definitions for the _MWM_MENU property.
  }
{ atom name for _MWM_MENU property  }
  _XA_MOTIF_WM_MENU = '_MOTIF_WM_MENU';  
  _XA_MWM_MENU = _XA_MOTIF_WM_MENU;  
{
 * Definitions for the _MWM_INFO property.
  }
{ 32-bit property items are stored as long on the client (whether
   * that means 32 bits or 64).  XChangeProperty handles the conversion
   * to the actual 32-bit quantities sent to the server.
    }
type
  PPropMotifWmInfo = ^TPropMotifWmInfo;
  TPropMotifWmInfo = record
      flags : cslong;
      wmWindow : TWindow;
    end;

  PPropMwmInfo = ^TPropMwmInfo;
  TPropMwmInfo = TPropMotifWmInfo;
{ number of elements of size 32 in _MWM_INFO  }

const
  PROP_MOTIF_WM_INFO_ELEMENTS = 2;  
  PROP_MWM_INFO_ELEMENTS = PROP_MOTIF_WM_INFO_ELEMENTS;  
{ atom name for _MWM_INFO property  }
  _XA_MOTIF_WM_INFO = '_MOTIF_WM_INFO';  
  _XA_MWM_INFO = _XA_MOTIF_WM_INFO;  
{
 * Miscellaneous atom definitions
  }
  _XA_MOTIF_BINDINGS = '_MOTIF_BINDINGS';

implementation

end.
