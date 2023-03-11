unit XTCoreP;

interface

uses
  x, xlib,
X11Xresource,
  X11IntrinsicP,
  X11Intrinsic;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

  var
    _XtInheritTranslations : longint;cvar;external libX11;

//{ was #define dname def_expr }
//function XtInheritTranslations : TString;  

//{ was #define dname def_expr }
//function XtInheritRealize : TXtRealizeProc;  
//
//{ was #define dname def_expr }
//function XtInheritResize : TXtWidgetProc;  
//
//{ was #define dname def_expr }
//function XtInheritExpose : TXtExposeProc;  
//
//{ was #define dname def_expr }
//function XtInheritSetValuesAlmost : TXtAlmostProc;  
//
//{ was #define dname def_expr }
//function XtInheritAcceptFocus : TXtAcceptFocusProc;  
//
//{ was #define dname def_expr }
//function XtInheritQueryGeometry : TXtGeometryHandler;  
//
//{ was #define dname def_expr }
//function XtInheritDisplayAccelerator : TXtStringProc;  

{**************************************************************
 * Widget Core Data Structures
 *
 *
 ************************************************************* }
{ pointer to widget itself	      }
{ pointer to Widget's ClassRec	      }
{ parent widget	  	      }
{ widget resource name quarkified    }
{ marked for destroy		      }
{ who to call when widget destroyed  }
{ constraint record                  }
{ window position		      }
{ window dimensions		      }
{ window border width		      }
{ is widget geometry managed?        }
{ is widget sensitive to user events }
{ are all ancestors sensitive?       }
{ private to event dispatcher        }
{ translation management             }
{ accelerator translations           }
{ window border pixel		      }
{ window border pixmap or NULL       }
{ list of popups                     }
{ how many popups                    }
{ widget resource name		      }
{ window's screen		      }
{ colormap                           }
{ window ID			      }
{ number of planes in window         }
{ window background pixel	      }
{ window background pixmap or NULL   }
{ is window mapped and not occluded? }
{ map window if it's managed?        }
type
  PCorePart = ^TCorePart;
  TCorePart = record
      self : TWidget;
      widget_class : TWidgetClass;
      parent : TWidget;
      xrm_name : TXrmName;
      being_destroyed : TBoolean;
      destroy_callbacks : TXtCallbackList;
      constraints : TXtPointer;
      x : TPosition;
      y : TPosition;
      width : TDimension;
      height : TDimension;
      border_width : TDimension;
      managed : TBoolean;
      sensitive : TBoolean;
      ancestor_sensitive : TBoolean;
      event_table : TXtEventTable;
//      tm : TXtTMRec;
      tm : Pointer;
      accelerators : TXtTranslations;
      border_pixel : TPixel;
      border_pixmap : TPixmap;
      popup_list : TWidgetList;
      num_popups : TCardinal;
      name : TString;
      screen : PScreen;
      colormap : TColormap;
      window : TWindow;
      depth : TCardinal;
      background_pixel : TPixel;
      background_pixmap : TPixmap;
      visible : TBoolean;
      mapped_when_managed : TBoolean;
    end;

  PWidgetRec = ^TWidgetRec;
  TWidgetRec = record
      core : TCorePart;
    end;
  TCoreRec = TWidgetRec;
  PCoreRec = ^TCoreRec;
{*****************************************************************
 *
 * Core Class Structure. Widgets, regardless of their class, will have
 * these fields.  All widgets of a given class will have the same values
 * for these fields.  Widgets of a given class may also have additional
 * common fields.  These additional fields are included in incremental
 * class structures, such as CommandClass.
 *
 * The fields that are specific to this subclass, as opposed to fields that
 * are part of the superclass, are called "subclass fields" below.  Many
 * procedures are responsible only for the subclass fields, and not for
 * any superclass fields.
 *
 ******************************************************************* }
{ pointer to superclass ClassRec    }
{ widget resource class name        }
{ size in bytes of widget record    }
{ class initialization proc	     }
{ dynamic initialization	     }
{ has class been initialized?       }
{ initialize subclass fields        }
{ notify that initialize called     }
{ XCreateWindow for widget	     }
{ widget semantics name to proc map  }
{ number of entries in actions      }
{ resources for subclass fields     }
{ number of entries in resources    }
{ resource class quarkified	     }
{ compress MotionNotify for widget  }
{ compress Expose events for widget }
{ compress enter and leave events   }
{ select for VisibilityNotify       }
{ free data for subclass pointers   }
{ geom manager changed widget size  }
{ rediplay window		     }
{ set subclass resource values      }
{ notify that set_values called     }
{ set_values got "Almost" geo reply  }
{ notify that get_values called     }
{ assign input focus to widget      }
{ version of intrinsics used	     }
{ list of callback offsets        }
{ state machine                     }
{ return preferred geometry         }
{ display your accelerator	     }
{ pointer to extension record       }

  PCoreClassPart = ^TCoreClassPart;
  TCoreClassPart = record
      superclass : TWidgetClass;
      class_name : TString;
      widget_size : TCardinal;
      class_initialize : TXtProc;
      class_part_initialize : TXtWidgetClassProc;
      class_inited : TXtEnum;
      initialize : TXtInitProc;
      initialize_hook : TXtArgsProc;
      realize : TXtRealizeProc;
      actions : TXtActionList;
      num_actions : TCardinal;
      resources : TXtResourceList;
      num_resources : TCardinal;
      xrm_class : TXrmClass;
      compress_motion : TBoolean;
      compress_exposure : TXtEnum;
      compress_enterleave : TBoolean;
      visible_interest : TBoolean;
      destroy : TXtWidgetProc;
      resize : TXtWidgetProc;
      expose : TXtExposeProc;
      set_values : TXtSetValuesFunc;
      set_values_hook : TXtArgsFunc;
      set_values_almost : TXtAlmostProc;
      get_values_hook : TXtArgsProc;
      accept_focus : TXtAcceptFocusProc;
      version : TXtVersionType;
      callback_private : TXtPointer;
      tm_table : TString;
      query_geometry : TXtGeometryHandler;
      display_accelerator : TXtStringProc;
      extension : TXtPointer;
    end;

  PWidgetClassRec = ^TWidgetClassRec;
  TWidgetClassRec = record
      core_class : TCoreClassPart;
    end;
  TCoreClassRec = TWidgetClassRec;
  PCoreClassRec = ^TCoreClassRec;
  var
    widgetClassRec : TWidgetClassRec;cvar;external;

//const
//  coreClassRec : TWidgetClassRec = widgetClassRec;  
{ _XtCoreP_h  }
{ DON'T ADD STUFF AFTER THIS #endif  }

implementation
//
//{ was #define dname def_expr }
//function XtInheritTranslations : TString;
//  begin
//    XtInheritTranslations:=TString(@(_XtInheritTranslations));
//  end;
//
{ was #define dname def_expr }
//function XtInheritRealize : TXtRealizeProc;
//  begin
//    XtInheritRealize:=TXtRealizeProc(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritResize : TXtWidgetProc;
//  begin
//    XtInheritResize:=TXtWidgetProc(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritExpose : TXtExposeProc;
//  begin
//    XtInheritExpose:=TXtExposeProc(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritSetValuesAlmost : TXtAlmostProc;
//  begin
//    XtInheritSetValuesAlmost:=TXtAlmostProc(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritAcceptFocus : TXtAcceptFocusProc;
//  begin
//    XtInheritAcceptFocus:=TXtAcceptFocusProc(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritQueryGeometry : TXtGeometryHandler;
//  begin
//    XtInheritQueryGeometry:=TXtGeometryHandler(_XtInherit);
//  end;
//
//{ was #define dname def_expr }
//function XtInheritDisplayAccelerator : TXtStringProc;
//  begin
//    XtInheritDisplayAccelerator:=TXtStringProc(_XtInherit);
//  end;


end.
