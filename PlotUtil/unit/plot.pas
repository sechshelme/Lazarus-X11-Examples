unit plot;

interface

uses
ctypes;

const
  libPlot = 'libplot.so';


{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{ This file is part of the GNU plotutils package.  Copyright (C) 1995,
   1996, 1997, 1998, 1999, 2000, 2005, 2008, Free Software Foundation, Inc.

   The GNU plotutils package is free software.  You may redistribute it
   and/or modify it under the terms of the GNU General Public License as
   published by the Free Software foundation; either version 2, or (at your
   option) any later version.

   The GNU plotutils package is distributed in the hope that it will be
   useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License along
   with the GNU plotutils package; see the file COPYING.  If not, write to
   the Free Software Foundation, Inc., 51 Franklin St., Fifth Floor,
   Boston, MA 02110-1301, USA.  }
{ This is "plot.h", the public header file for GNU libplot, a shared
   library for 2-dimensional vector graphics.  It declares both the new C
   binding, which is thread-safe, and the old C binding, which is not.  }
{ stdio.h must be included before this file is included.  }

const
  _PLOT_H_ = 1;  
{********************************************************************* }
{ Version of GNU libplot/libplotter which this header file accompanies.
   This information is included beginning with version 4.0.

   The PL_LIBPLOT_VER_STRING macro is compiled into the library, as
   `pl_libplot_ver'.  The PL_LIBPLOT_VER macro is not compiled into it.
   Both are available to applications that include this header file.  }
  PL_LIBPLOT_VER_STRING = '4.5';  
//  PL_LIBPLOT_VER = 405;
  PL_LIBPLOT_VER_INTEGER = 405;
(* Const before type ignored *)
  var
    pl_libplot_ver : array[0..7] of char;cvar;external;
{ need room for 99.99aa  }
{********************************************************************* }
{ The functions in the C binding deal with `plPlotter' and
   `plPlotterParams' objects.  They are the same as the `Plotter' and
   `PlotterParams' objects of the C++ binding.  Internally, they are called
   `plPlotterStruct' and `plPlotterParamsStruct'.  In the context of this
   header file, they are opaque.  }


// ----------- Eigenes ------------
type
  PFILE=^TFILE;
  TFILE=Pointer;

  PplPlotter=^TplPlotter;
  TplPlotter=Pointer;

  PplPlotterParams=^TplPlotterParams;
  TplPlotterParams=Pointer;

const
  lib_stdio='c';

var
  stdin :TFILE;cvar;external lib_stdio;
  stdout :TFILE;cvar;external lib_stdio;
  stderr :TFILE;cvar;external lib_stdio;


//  TplPlotterStruct = TplPlotter;
//  TplPlotterParamsStruct = TplPlotterParams;
// --------------------------------



{ Support C++.  This file could be #included by a C++ compiler rather than
   a C compiler, in which case it needs to know that libplot functions have
   C linkage, not C++ linkage.   This is accomplished by wrapping all
   function declarations in __BEGIN_DECLS ... __END_DECLS.  }
{$ifdef ___BEGIN_DECLS}
{$undef ___BEGIN_DECLS}
{$endif}
{$ifdef ___END_DECLS}
{$undef ___END_DECLS}
{$endif}
{ empty  }
{$define ___BEGIN_DECLS}
{ empty  }
{$define ___END_DECLS}
{___BEGIN_DECLS }
{ THE C API  }
{ Constructor/destructor for the plPlotter type.  Parameter values are
   specified at creation time via a plPlotterParams instance.  There is no
   copy constructor.  }
(* Const before type ignored *)
(* Const before type ignored *)

function pl_newpl_r(_type:Pchar; infile:PFILE; outfile:PFILE; errfile:PFILE; plotter_params:PplPlotterParams):PplPlotter;cdecl;external libPlot;
function pl_deletepl_r(plotter:PplPlotter):longint;cdecl;external libPlot;
{ Constructor/destructor/copy constructor for the plPlotterParams type,
   any instance of which stores parameters that are used when creating a
   plPlotter.  }
function pl_newplparams:PplPlotterParams;cdecl;external libPlot;
function pl_deleteplparams(plotter_params:PplPlotterParams):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_copyplparams(plotter_params:PplPlotterParams):PplPlotterParams;cdecl;external libPlot;
{ A function for setting a single Plotter parameter in a plPlotterParams
   instance.   }
(* Const before type ignored *)
function pl_setplparam(plotter_params:PplPlotterParams; parameter:Pchar; value:pointer):longint;cdecl;external libPlot;
{ THE PLOTTER METHODS  }
{ 13 functions in traditional (pre-GNU) libplot  }
function pl_arc_r(plotter:PplPlotter; xc:longint; yc:longint; x0:longint; y0:longint; 
           x1:longint; y1:longint):longint;cdecl;external libPlot;
function pl_box_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
function pl_circle_r(plotter:PplPlotter; x:longint; y:longint; r:longint):longint;cdecl;external libPlot;
function pl_closepl_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_cont_r(plotter:PplPlotter; x:longint; y:longint):longint;cdecl;external libPlot;
function pl_erase_r(plotter:PplPlotter):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_label_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
function pl_line_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_linemod_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
function pl_move_r(plotter:PplPlotter; x:longint; y:longint):longint;cdecl;external libPlot;
function pl_openpl_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_point_r(plotter:PplPlotter; x:longint; y:longint):longint;cdecl;external libPlot;
function pl_space_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
{ 46 additional functions in GNU libplot, plus 1 obsolete function
   [pl_outfile_r].  }
function pl_outfile_r(plotter:PplPlotter; outfile:PFILE):PFILE;cdecl;external libPlot;
{ OBSOLETE  }
(* Const before type ignored *)
function pl_alabel_r(plotter:PplPlotter; x_justify:longint; y_justify:longint; s:Pchar):longint;cdecl;external libPlot;
function pl_arcrel_r(plotter:PplPlotter; dxc:longint; dyc:longint; dx0:longint; dy0:longint; 
           dx1:longint; dy1:longint):longint;cdecl;external libPlot;
function pl_bezier2_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint; 
           x2:longint; y2:longint):longint;cdecl;external libPlot;
function pl_bezier2rel_r(plotter:PplPlotter; dx0:longint; dy0:longint; dx1:longint; dy1:longint; 
           dx2:longint; dy2:longint):longint;cdecl;external libPlot;
function pl_bezier3_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint; 
           x2:longint; y2:longint; x3:longint; y3:longint):longint;cdecl;external libPlot;
function pl_bezier3rel_r(plotter:PplPlotter; dx0:longint; dy0:longint; dx1:longint; dy1:longint; 
           dx2:longint; dy2:longint; dx3:longint; dy3:longint):longint;cdecl;external libPlot;
function pl_bgcolor_r(plotter:PplPlotter; red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_bgcolorname_r(plotter:PplPlotter; name:Pchar):longint;cdecl;external libPlot;
function pl_boxrel_r(plotter:PplPlotter; dx0:longint; dy0:longint; dx1:longint; dy1:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_capmod_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
function pl_circlerel_r(plotter:PplPlotter; dx:longint; dy:longint; r:longint):longint;cdecl;external libPlot;
function pl_closepath_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_color_r(plotter:PplPlotter; red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_colorname_r(plotter:PplPlotter; name:Pchar):longint;cdecl;external libPlot;
function pl_contrel_r(plotter:PplPlotter; x:longint; y:longint):longint;cdecl;external libPlot;
function pl_ellarc_r(plotter:PplPlotter; xc:longint; yc:longint; x0:longint; y0:longint; 
           x1:longint; y1:longint):longint;cdecl;external libPlot;
function pl_ellarcrel_r(plotter:PplPlotter; dxc:longint; dyc:longint; dx0:longint; dy0:longint; 
           dx1:longint; dy1:longint):longint;cdecl;external libPlot;
function pl_ellipse_r(plotter:PplPlotter; x:longint; y:longint; rx:longint; ry:longint; 
           angle:longint):longint;cdecl;external libPlot;
function pl_ellipserel_r(plotter:PplPlotter; dx:longint; dy:longint; rx:longint; ry:longint; 
           angle:longint):longint;cdecl;external libPlot;
function pl_endpath_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_endsubpath_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_fillcolor_r(plotter:PplPlotter; red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fillcolorname_r(plotter:PplPlotter; name:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fillmod_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
function pl_filltype_r(plotter:PplPlotter; level:longint):longint;cdecl;external libPlot;
function pl_flushpl_r(plotter:PplPlotter):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fontname_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
function pl_fontsize_r(plotter:PplPlotter; size:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_havecap_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_joinmod_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_labelwidth_r(plotter:PplPlotter; s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_linedash_r(plotter:PplPlotter; n:longint; dashes:Plongint; offset:longint):longint;cdecl;external libPlot;
function pl_linerel_r(plotter:PplPlotter; dx0:longint; dy0:longint; dx1:longint; dy1:longint):longint;cdecl;external libPlot;
function pl_linewidth_r(plotter:PplPlotter; size:longint):longint;cdecl;external libPlot;
function pl_marker_r(plotter:PplPlotter; x:longint; y:longint; _type:longint; size:longint):longint;cdecl;external libPlot;
function pl_markerrel_r(plotter:PplPlotter; dx:longint; dy:longint; _type:longint; size:longint):longint;cdecl;external libPlot;
function pl_moverel_r(plotter:PplPlotter; x:longint; y:longint):longint;cdecl;external libPlot;
function pl_orientation_r(plotter:PplPlotter; direction:longint):longint;cdecl;external libPlot;
function pl_pencolor_r(plotter:PplPlotter; red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_pencolorname_r(plotter:PplPlotter; name:Pchar):longint;cdecl;external libPlot;
function pl_pentype_r(plotter:PplPlotter; level:longint):longint;cdecl;external libPlot;
function pl_pointrel_r(plotter:PplPlotter; dx:longint; dy:longint):longint;cdecl;external libPlot;
function pl_restorestate_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_savestate_r(plotter:PplPlotter):longint;cdecl;external libPlot;
function pl_space2_r(plotter:PplPlotter; x0:longint; y0:longint; x1:longint; y1:longint; 
           x2:longint; y2:longint):longint;cdecl;external libPlot;
function pl_textangle_r(plotter:PplPlotter; angle:longint):longint;cdecl;external libPlot;
{ 32 floating point counterparts to some of the above (all GNU additions)  }
(* Const before type ignored *)
function pl_ffontname_r(plotter:PplPlotter; s:Pchar):cdouble;cdecl;external libPlot;
function pl_ffontsize_r(plotter:PplPlotter; size:cdouble):cdouble;cdecl;external libPlot;
(* Const before type ignored *)
function pl_flabelwidth_r(plotter:PplPlotter; s:Pchar):cdouble;cdecl;external libPlot;
function pl_ftextangle_r(plotter:PplPlotter; angle:cdouble):cdouble;cdecl;external libPlot;
function pl_farc_r(plotter:PplPlotter; xc:cdouble; yc:cdouble; x0:cdouble; y0:cdouble; 
           x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_farcrel_r(plotter:PplPlotter; dxc:cdouble; dyc:cdouble; dx0:cdouble; dy0:cdouble; 
           dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_fbezier2_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; 
           x2:cdouble; y2:cdouble):longint;cdecl;external libPlot;
function pl_fbezier2rel_r(plotter:PplPlotter; dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble; 
           dx2:cdouble; dy2:cdouble):longint;cdecl;external libPlot;
function pl_fbezier3_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; 
           x2:cdouble; y2:cdouble; x3:cdouble; y3:cdouble):longint;cdecl;external libPlot;
function pl_fbezier3rel_r(plotter:PplPlotter; dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble; 
           dx2:cdouble; dy2:cdouble; dx3:cdouble; dy3:cdouble):longint;cdecl;external libPlot;
function pl_fbox_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_fboxrel_r(plotter:PplPlotter; dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_fcircle_r(plotter:PplPlotter; x:cdouble; y:cdouble; r:cdouble):longint;cdecl;external libPlot;
function pl_fcirclerel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble; r:cdouble):longint;cdecl;external libPlot;
function pl_fcont_r(plotter:PplPlotter; x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fcontrel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fellarc_r(plotter:PplPlotter; xc:cdouble; yc:cdouble; x0:cdouble; y0:cdouble; 
           x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_fellarcrel_r(plotter:PplPlotter; dxc:cdouble; dyc:cdouble; dx0:cdouble; dy0:cdouble; 
           dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_fellipse_r(plotter:PplPlotter; x:cdouble; y:cdouble; rx:cdouble; ry:cdouble; 
           angle:cdouble):longint;cdecl;external libPlot;
function pl_fellipserel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble; rx:cdouble; ry:cdouble; 
           angle:cdouble):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_flinedash_r(plotter:PplPlotter; n:longint; dashes:Pdouble; offset:cdouble):longint;cdecl;external libPlot;
function pl_fline_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_flinerel_r(plotter:PplPlotter; dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_flinewidth_r(plotter:PplPlotter; size:cdouble):longint;cdecl;external libPlot;
function pl_fmarker_r(plotter:PplPlotter; x:cdouble; y:cdouble; _type:longint; size:cdouble):longint;cdecl;external libPlot;
function pl_fmarkerrel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble; _type:longint; size:cdouble):longint;cdecl;external libPlot;
function pl_fmove_r(plotter:PplPlotter; x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fmoverel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fpoint_r(plotter:PplPlotter; x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fpointrel_r(plotter:PplPlotter; dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fspace_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_fspace2_r(plotter:PplPlotter; x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; 
           x2:cdouble; y2:cdouble):longint;cdecl;external libPlot;
{ 6 floating point operations with no integer counterpart (GNU additions)  }
function pl_fconcat_r(plotter:PplPlotter; m0:cdouble; m1:cdouble; m2:cdouble; m3:cdouble; 
           m4:cdouble; m5:cdouble):longint;cdecl;external libPlot;
function pl_fmiterlimit_r(plotter:PplPlotter; limit:cdouble):longint;cdecl;external libPlot;
function pl_frotate_r(plotter:PplPlotter; theta:cdouble):longint;cdecl;external libPlot;
function pl_fscale_r(plotter:PplPlotter; x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fsetmatrix_r(plotter:PplPlotter; m0:cdouble; m1:cdouble; m2:cdouble; m3:cdouble; 
           m4:cdouble; m5:cdouble):longint;cdecl;external libPlot;
function pl_ftranslate_r(plotter:PplPlotter; x:cdouble; y:cdouble):longint;cdecl;external libPlot;
{ THE OLD (non-thread-safe) C API  }
{ 3 functions specific to the old C API.  (For construction/destruction
   and selection of Plotters, and setting of Plotter parameters.  The fact
   that a single Plotter is globally `selected' makes the old API
   non-thread-safe.)  }
(* Const before type ignored *)
function pl_newpl(_type:Pchar; infile:PFILE; outfile:PFILE; errfile:PFILE):longint;cdecl;external libPlot;
function pl_selectpl(handle:longint):longint;cdecl;external libPlot;
function pl_deletepl(handle:longint):longint;cdecl;external libPlot;
{ A function for setting parameters of Plotters that will subsequently be
   created.  This also makes the old API non-thread-safe.  }
(* Const before type ignored *)
function pl_parampl(parameter:Pchar; value:pointer):longint;cdecl;external libPlot;
{ THE PLOTTER METHODS  }
{ In the old API, the Plotter to be acted on is specified by first calling 
   selectpl().  }
{ 13 functions in traditional (pre-GNU) libplot  }
function pl_arc(xc:longint; yc:longint; x0:longint; y0:longint; x1:longint; 
           y1:longint):longint;cdecl;external libPlot;
function pl_box(x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
function pl_circle(x:longint; y:longint; r:longint):longint;cdecl;external libPlot;
function pl_closepl:longint;cdecl;external libPlot;
function pl_cont(x:longint; y:longint):longint;cdecl;external libPlot;
function pl_erase:longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_label(s:Pchar):longint;cdecl;external libPlot;
function pl_line(x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_linemod(s:Pchar):longint;cdecl;external libPlot;
function pl_move(x:longint; y:longint):longint;cdecl;external libPlot;
function pl_openpl:longint;cdecl;external libPlot;
function pl_point(x:longint; y:longint):longint;cdecl;external libPlot;
function pl_space(x0:longint; y0:longint; x1:longint; y1:longint):longint;cdecl;external libPlot;
{ 46 additional functions in GNU libplot, plus 1 obsolete function
   [pl_outfile].  }
function pl_outfile(outfile:PFILE):PFILE;cdecl;external libPlot;
{ OBSOLETE  }
(* Const before type ignored *)
function pl_alabel(x_justify:longint; y_justify:longint; s:Pchar):longint;cdecl;external libPlot;
function pl_arcrel(dxc:longint; dyc:longint; dx0:longint; dy0:longint; dx1:longint; 
           dy1:longint):longint;cdecl;external libPlot;
function pl_bezier2(x0:longint; y0:longint; x1:longint; y1:longint; x2:longint; 
           y2:longint):longint;cdecl;external libPlot;
function pl_bezier2rel(dx0:longint; dy0:longint; dx1:longint; dy1:longint; dx2:longint; 
           dy2:longint):longint;cdecl;external libPlot;
function pl_bezier3(x0:longint; y0:longint; x1:longint; y1:longint; x2:longint; 
           y2:longint; x3:longint; y3:longint):longint;cdecl;external libPlot;
function pl_bezier3rel(dx0:longint; dy0:longint; dx1:longint; dy1:longint; dx2:longint; 
           dy2:longint; dx3:longint; dy3:longint):longint;cdecl;external libPlot;
function pl_bgcolor(red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_bgcolorname(name:Pchar):longint;cdecl;external libPlot;
function pl_boxrel(dx0:longint; dy0:longint; dx1:longint; dy1:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_capmod(s:Pchar):longint;cdecl;external libPlot;
function pl_circlerel(dx:longint; dy:longint; r:longint):longint;cdecl;external libPlot;
function pl_closepath:longint;cdecl;external libPlot;
function pl_color(red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_colorname(name:Pchar):longint;cdecl;external libPlot;
function pl_contrel(x:longint; y:longint):longint;cdecl;external libPlot;
function pl_ellarc(xc:longint; yc:longint; x0:longint; y0:longint; x1:longint; 
           y1:longint):longint;cdecl;external libPlot;
function pl_ellarcrel(dxc:longint; dyc:longint; dx0:longint; dy0:longint; dx1:longint; 
           dy1:longint):longint;cdecl;external libPlot;
function pl_ellipse(x:longint; y:longint; rx:longint; ry:longint; angle:longint):longint;cdecl;external libPlot;
function pl_ellipserel(dx:longint; dy:longint; rx:longint; ry:longint; angle:longint):longint;cdecl;external libPlot;
function pl_endpath:longint;cdecl;external libPlot;
function pl_endsubpath:longint;cdecl;external libPlot;
function pl_fillcolor(red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fillcolorname(name:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fillmod(s:Pchar):longint;cdecl;external libPlot;
function pl_filltype(level:longint):longint;cdecl;external libPlot;
function pl_flushpl:longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_fontname(s:Pchar):longint;cdecl;external libPlot;
function pl_fontsize(size:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_havecap(s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_joinmod(s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_labelwidth(s:Pchar):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_linedash(n:longint; dashes:Plongint; offset:longint):longint;cdecl;external libPlot;
function pl_linerel(dx0:longint; dy0:longint; dx1:longint; dy1:longint):longint;cdecl;external libPlot;
function pl_linewidth(size:longint):longint;cdecl;external libPlot;
function pl_marker(x:longint; y:longint; _type:longint; size:longint):longint;cdecl;external libPlot;
function pl_markerrel(dx:longint; dy:longint; _type:longint; size:longint):longint;cdecl;external libPlot;
function pl_moverel(x:longint; y:longint):longint;cdecl;external libPlot;
function pl_orientation(direction:longint):longint;cdecl;external libPlot;
function pl_pencolor(red:longint; green:longint; blue:longint):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_pencolorname(name:Pchar):longint;cdecl;external libPlot;
function pl_pentype(level:longint):longint;cdecl;external libPlot;
function pl_pointrel(dx:longint; dy:longint):longint;cdecl;external libPlot;
function pl_restorestate:longint;cdecl;external libPlot;
function pl_savestate:longint;cdecl;external libPlot;
function pl_space2(x0:longint; y0:longint; x1:longint; y1:longint; x2:longint; 
           y2:longint):longint;cdecl;external libPlot;
function pl_textangle(angle:longint):longint;cdecl;external libPlot;
{ 32 floating point counterparts to some of the above (all GNU additions)  }
(* Const before type ignored *)
function pl_ffontname(s:Pchar):cdouble;cdecl;external libPlot;
function pl_ffontsize(size:cdouble):cdouble;cdecl;external libPlot;
(* Const before type ignored *)
function pl_flabelwidth(s:Pchar):cdouble;cdecl;external libPlot;
function pl_ftextangle(angle:cdouble):cdouble;cdecl;external libPlot;
function pl_farc(xc:cdouble; yc:cdouble; x0:cdouble; y0:cdouble; x1:cdouble; 
           y1:cdouble):longint;cdecl;external libPlot;
function pl_farcrel(dxc:cdouble; dyc:cdouble; dx0:cdouble; dy0:cdouble; dx1:cdouble; 
           dy1:cdouble):longint;cdecl;external libPlot;
function pl_fbezier2(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; x2:cdouble; 
           y2:cdouble):longint;cdecl;external libPlot;
function pl_fbezier2rel(dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble; dx2:cdouble; 
           dy2:cdouble):longint;cdecl;external libPlot;
function pl_fbezier3(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; x2:cdouble; 
           y2:cdouble; x3:cdouble; y3:cdouble):longint;cdecl;external libPlot;
function pl_fbezier3rel(dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble; dx2:cdouble; 
           dy2:cdouble; dx3:cdouble; dy3:cdouble):longint;cdecl;external libPlot;
function pl_fbox(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_fboxrel(dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_fcircle(x:cdouble; y:cdouble; r:cdouble):longint;cdecl;external libPlot;
function pl_fcirclerel(dx:cdouble; dy:cdouble; r:cdouble):longint;cdecl;external libPlot;
function pl_fcont(x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fcontrel(dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fellarc(xc:cdouble; yc:cdouble; x0:cdouble; y0:cdouble; x1:cdouble; 
           y1:cdouble):longint;cdecl;external libPlot;
function pl_fellarcrel(dxc:cdouble; dyc:cdouble; dx0:cdouble; dy0:cdouble; dx1:cdouble; 
           dy1:cdouble):longint;cdecl;external libPlot;
function pl_fellipse(x:cdouble; y:cdouble; rx:cdouble; ry:cdouble; angle:cdouble):longint;cdecl;external libPlot;
function pl_fellipserel(dx:cdouble; dy:cdouble; rx:cdouble; ry:cdouble; angle:cdouble):longint;cdecl;external libPlot;
(* Const before type ignored *)
function pl_flinedash(n:longint; dashes:Pdouble; offset:cdouble):longint;cdecl;external libPlot;
function pl_fline(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_flinerel(dx0:cdouble; dy0:cdouble; dx1:cdouble; dy1:cdouble):longint;cdecl;external libPlot;
function pl_flinewidth(size:cdouble):longint;cdecl;external libPlot;
function pl_fmarker(x:cdouble; y:cdouble; _type:longint; size:cdouble):longint;cdecl;external libPlot;
function pl_fmarkerrel(dx:cdouble; dy:cdouble; _type:longint; size:cdouble):longint;cdecl;external libPlot;
function pl_fmove(x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fmoverel(dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fpoint(x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fpointrel(dx:cdouble; dy:cdouble):longint;cdecl;external libPlot;
function pl_fspace(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble):longint;cdecl;external libPlot;
function pl_fspace2(x0:cdouble; y0:cdouble; x1:cdouble; y1:cdouble; x2:cdouble; 
           y2:cdouble):longint;cdecl;external libPlot;
{ 6 floating point operations with no integer counterpart (GNU additions)  }
function pl_fconcat(m0:cdouble; m1:cdouble; m2:cdouble; m3:cdouble; m4:cdouble; 
           m5:cdouble):longint;cdecl;external libPlot;
function pl_fmiterlimit(limit:cdouble):longint;cdecl;external libPlot;
function pl_frotate(theta:cdouble):longint;cdecl;external libPlot;
function pl_fscale(x:cdouble; y:cdouble):longint;cdecl;external libPlot;
function pl_fsetmatrix(m0:cdouble; m1:cdouble; m2:cdouble; m3:cdouble; m4:cdouble; 
           m5:cdouble):longint;cdecl;external libPlot;
function pl_ftranslate(x:cdouble; y:cdouble):longint;cdecl;external libPlot;
{ UNDOCUMENTED FONT API CALLS  }
{ These are used by the graphics programs in the plotutils package (e.g.,
   `graph') to access the font tables within libplot, so that the user can
   be given lists of font names.  }
function _pl_get_hershey_font_info(plotter:PplPlotter):pointer;cdecl;external libPlot;
function _pl_get_ps_font_info(plotter:PplPlotter):pointer;cdecl;external libPlot;
function _pl_get_pcl_font_info(plotter:PplPlotter):pointer;cdecl;external libPlot;
function _pl_get_stick_font_info(plotter:PplPlotter):pointer;cdecl;external libPlot;
{ ___END_DECLS }
{ THE GLOBAL VARIABLES IN GNU LIBPLOT  }
{ There are two: user-settable error handlers (not yet documented).  }
(* Const before type ignored *)
  var
    pl_libplot_warning_handler : function (msg:Pchar):longint;cvar;external libPlot;
(* Const before type ignored *)
    pl_libplot_error_handler : function (msg:Pchar):longint;cvar;external libPlot;
{$undef const}
{********************************************************************* }
{ Useful definitions, included in both plot.h and plotter.h.  }

const
  _PL_LIBPLOT_USEFUL_DEFS = 1;  
{ Symbol types for the marker() function, extending over the range 0..31.
   (1 through 5 are the same as in the GKS [Graphical Kernel System].)

   These are now defined as enums rather than ints.  Cast them to ints if
   necessary.  }
  Const
    M_NONE = 0;
    M_DOT = 1;
    M_PLUS = 2;
    M_ASTERISK = 3;
    M_CIRCLE = 4;
    M_CROSS = 5;
    M_SQUARE = 6;
    M_TRIANGLE = 7;
    M_DIAMOND = 8;
    M_STAR = 9;
    M_INVERTED_TRIANGLE = 10;
    M_STARBURST = 11;
    M_FANCY_PLUS = 12;
    M_FANCY_CROSS = 13;
    M_FANCY_SQUARE = 14;
    M_FANCY_DIAMOND = 15;
    M_FILLED_CIRCLE = 16;
    M_FILLED_SQUARE = 17;
    M_FILLED_TRIANGLE = 18;
    M_FILLED_DIAMOND = 19;
    M_FILLED_INVERTED_TRIANGLE = 20;
    M_FILLED_FANCY_SQUARE = 21;
    M_FILLED_FANCY_DIAMOND = 22;
    M_HALF_FILLED_CIRCLE = 23;
    M_HALF_FILLED_SQUARE = 24;
    M_HALF_FILLED_TRIANGLE = 25;
    M_HALF_FILLED_DIAMOND = 26;
    M_HALF_FILLED_INVERTED_TRIANGLE = 27;
    M_HALF_FILLED_FANCY_SQUARE = 28;
    M_HALF_FILLED_FANCY_DIAMOND = 29;
    M_OCTAGON = 30;
    M_FILLED_OCTAGON = 31;

    { ONE-BYTE OPERATION CODES FOR GNU METAFILE FORMAT. These are now defined
   as enums rather than ints.  Cast them to ints if necessary.

   There are 85 currently recognized op codes.  The first 10 date back to
   Unix plot(5) format.  }
{ 10 op codes for primitive graphics operations, as in Unix plot(5) format.  }
{ 42 op codes that are GNU extensions  }
{ not an op code in Unix plot(5)  }
{ not an op code in Unix plot(5)  }
{ not an op code in Unix plot(5)  }
{ 30 floating point counterparts to many of the above.  They are not even
   slightly mnemonic.  }
{ 3 op codes for floating point operations with no integer counterpart  }

  Const
    O_ARC = 'a'+'';
    O_CIRCLE = 'c'+'';
    O_CONT = 'n'+'';
    O_ERASE = 'e'+'';
    O_LABEL = 't'+'';
    O_LINEMOD = 'f'+'';
    O_LINE = 'l'+'';
    O_MOVE = 'm'+'';
    O_POINT = 'p'+'';
    O_SPACE = 's'+'';
    O_ALABEL = 'T'+'';
    O_ARCREL = 'A'+'';
    O_BEZIER2 = 'q'+'';
    O_BEZIER2REL = 'r'+'';
    O_BEZIER3 = 'y'+'';
    O_BEZIER3REL = 'z'+'';
    O_BGCOLOR = '~'+'';
    O_BOX = 'B'+'';
    O_BOXREL = 'H'+'';
    O_CAPMOD = 'K'+'';
    O_CIRCLEREL = 'G'+'';
    O_CLOSEPATH = 'k'+'';
    O_CLOSEPL = 'x'+'';
    O_COMMENT = '#'+'';
    O_CONTREL = 'N'+'';
    O_ELLARC = '?'+'';
    O_ELLARCREL = '/'+'';
    O_ELLIPSE = '+'+'';
    O_ELLIPSEREL = '='+'';
    O_ENDPATH = 'E'+'';
    O_ENDSUBPATH = ']'+'';
    O_FILLTYPE = 'L'+'';
    O_FILLCOLOR = 'D'+'';
    O_FILLMOD = 'g'+'';
    O_FONTNAME = 'F'+'';
    O_FONTSIZE = 'S'+'';
    O_JOINMOD = 'J'+'';
    O_LINEDASH = 'd'+'';
    O_LINEREL = 'I'+'';
    O_LINEWIDTH = 'W'+'';
    O_MARKER = 'Y'+'';
    O_MARKERREL = 'Z'+'';
    O_MOVEREL = 'M'+'';
    O_OPENPL = 'o'+'';
    O_ORIENTATION = 'b'+'';
    O_PENCOLOR = '-'+'';
    O_PENTYPE = 'h'+'';
    O_POINTREL = 'P'+'';
    O_RESTORESTATE = 'O'+'';
    O_SAVESTATE = 'U'+'';
    O_SPACE2 = ':'+'';
    O_TEXTANGLE = 'R'+'';
    O_FARC = '1'+'';
    O_FARCREL = '2'+'';
    O_FBEZIER2 = '`'+'';
//    O_FBEZIER2REL = '\'+'';
    O_FBEZIER2REL = ''''+'';
    O_FBEZIER3 = ','+'';
    O_FBEZIER3REL = '.'+'';
    O_FBOX = '3'+'';
    O_FBOXREL = '4'+'';
    O_FCIRCLE = '5'+'';
    O_FCIRCLEREL = '6'+'';
    O_FCONT = ')'+'';
    O_FCONTREL = '_'+'';
    O_FELLARC = '}'+'';
    O_FELLARCREL = '|'+'';
    O_FELLIPSE = '{'+'';
    O_FELLIPSEREL = '['+'';
    O_FFONTSIZE = '7'+'';
    O_FLINE = '8'+'';
    O_FLINEDASH = 'w'+'';
    O_FLINEREL = '9'+'';
    O_FLINEWIDTH = '0'+'';
    O_FMARKER = '!'+'';
    O_FMARKERREL = '@'+'';
    O_FMOVE = '$'+'';
    O_FMOVEREL = '%'+'';
    O_FPOINT = '^'+'';
    O_FPOINTREL = '&'+'';
    O_FSPACE = '*'+'';
    O_FSPACE2 = ';'+'';
    O_FTEXTANGLE = '('+'';
//    O_FCONCAT = '\\'+'';
    O_FCONCAT = '\'+'';
    O_FMITERLIMIT = 'i'+'';
    O_FSETMATRIX = 'j'+'';

implementation

end.
