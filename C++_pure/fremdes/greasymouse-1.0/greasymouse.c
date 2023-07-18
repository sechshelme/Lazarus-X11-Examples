/*******************************************************************************
	Greasy mouse	1.00	11/1/2002

This is a silly little program that greases the mouse - when the user moves the
mouse, it carries sliding in teh same direction. Pointless, but fun to run on
an unsuspecting friends X server.

This is the first X program I wrote unaided. Hope you enjoy it.

License: GPL

-Ed

Edward Rosten 
*******************************************************************************/




#include <math.h>
#include <X11/Xlib.h>

#include <stdio.h>
#include <stdlib.h>
#include <sys/times.h>



#define sgn(X) ((X==0)?0:((X<0)?-1:1))
#define absl(X) (X * sgn(X))

#define CPS 100	/*this seems to be right...*/

Display *display;
int screen_num;

static char *progname;

void move_pointer(Display* display, Window win, int, int, float);

int main(int argc, char** argv)
{
    int 			x, y;
    unsigned int	border_width, display_width, display_height;
    char			*display_name = NULL;
    struct tms		temp_time_struct;
	clock_t			a_time;
    float			grease_factor;

    border_width = 4;
    x = 0;
    y = 0;
    progname = argv[0];

    if ( argc > 2 || (argc == 2 && strcmp(argv[1], "--help") == 0))
    	{
	fprintf(stderr, "%s [grease factor]\n%s --help\nThis program greases the"
	" mouse, or maybe the surface of your screen. After using a greasy mouse, "
	"normal mice seem nasty and jerky, so you'll never want a non greasy mouse"
	" again. This program can be very easily ported to any system; all that is"
	" needed is a smooth desk and an oil can. \nMy personal preference is a "
	"grease factor of about 0.999.\nThe default grease factor is 1.031\n", 
			progname, progname);

		exit(1);
		}

    grease_factor = 1.031;		/* this is just a random magic number		*/

    if ( argc == 2 )
    	grease_factor = atof(argv[1]);

    
    /* Connect to the X server					*/
    if((display = XOpenDisplay(display_name)) == NULL)
		{
		fprintf(stderr, "Cannot connect to X server. Sorry.\n");
		exit(1);
		}
    screen_num = DefaultScreen(display);
    
    /*Get display dimensions					*/
    display_width = DisplayWidth(display, screen_num);
    display_height = DisplayHeight(display, screen_num);

    a_time = times(&temp_time_struct);

    for(;;)
		{
		if((times(&temp_time_struct)-a_time)*100 > (CPS) )
			{
			move_pointer(display, XRootWindow(display, screen_num), 
						 display_width-1, display_height-1, grease_factor);

			a_time = times(&temp_time_struct);
			}
		}
}


void move_pointer(Display* display, Window win, int width, int height, 
				  float grease_factor)
{
  static float  xmov = 0;
  static float  ymov = 0;

  static int first_time = 1;
  int oxm = 0;
  int oym = 0;

  static float  ox;
  static float  oy;

  Window	wtmp;
  int		itmp, x, y;


  XQueryPointer(display, win, &wtmp, &wtmp, &x, &y, &itmp, &itmp, &itmp);

  /* check if the mouse is at the edge of the screen. If it is, then it probably
     won't have moved as far as it should, so it will appear that the user has
     moved the mouse, which will alter the mouse speed. If this happens, then
     the mouse sometimes slows when it hits the edge of the screen. The edge is
     checked for, so that the mouse speed is not changed */

  if(x >= width || x <= 0)
    oxm = 1;

  if(y >= height || y <= 0)
    oym = 1;

  if(first_time == 1)
    {
    ox = x;
    oy = y;
    first_time = 0;
    }
  else
    {
    if(oxm == 0 && x - ox - (int)(xmov+sgn(xmov)*.5) != 0)
      xmov = x - ox;
    
    if(oym == 0 && y - oy - (int)(ymov+sgn(ymov)*.5) != 0)
      ymov = y - oy;

    xmov = xmov / grease_factor;
    ymov = ymov / grease_factor;
    oxm = 0;
    oym = 0;
    }
 
  if(x >= width || x <= 0)
    xmov = -xmov;

  if(y >= height || y <= 0)
    ymov = -ymov;
  

  ox = x;
  oy = y;
  XWarpPointer(display, None, None, 0, 0, width, height, 
  	(int)(xmov+sgn(xmov)*.5), (int)(ymov+sgn(ymov)*.5));

}


