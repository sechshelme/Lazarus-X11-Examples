#ifndef FL_GLCANVAS_H
#define FL_GLCANVAS_H

//#if defined( __cplusplus )
//extern "C"
//{
//#endif

//#include <GL/glx.h>


/* OpenGL canvases */

extern FL_OBJECT * fl_create_glcanvas( int          type,
										  FL_Coord     x,
										  FL_Coord     y,
										  FL_Coord     w,
										  FL_Coord     h,
										  const char * label );

extern FL_OBJECT * fl_add_glcanvas( int          type,
									   FL_Coord     x,
									   FL_Coord     y,
									   FL_Coord     w,
									   FL_Coord     h,
									   const char * label );

extern void fl_set_glcanvas_defaults( const int * config );

extern void fl_get_glcanvas_defaults( int * cconfig );

extern void fl_set_glcanvas_attributes( FL_OBJECT * ob,
										   const int * config );

extern void fl_get_glcanvas_attributes( FL_OBJECT * ob,
										   int       * attributes );

extern void fl_set_glcanvas_direct( FL_OBJECT * ob,
									   int         direct );

extern void fl_activate_glcanvas( FL_OBJECT * ob );

extern XVisualInfo * fl_get_glcanvas_xvisualinfo( FL_OBJECT * ob );

extern GLXContext fl_get_glcanvas_context( FL_OBJECT * ob );

extern Window fl_glwincreate( int        * config,
								 GLXContext * context,
								 int          w,
								 int          h );

extern Window fl_glwinopen( int        * config,
							   GLXContext * context,
							   int          w,
							   int          h );

//#if defined( __cplusplus )
//}
//#endif

#endif /* NOT FL_GLCANVAS_H */
