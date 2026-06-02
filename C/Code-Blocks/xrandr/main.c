#include <stdio.h>
#include <X11/Xlib.h>
#include <X11/Xlibint.h>
#include <X11/Xproto.h>
#include <X11/extensions/Xrandr.h>
#include <X11/extensions/Xrender.h>	/* we share subpixel information */
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdarg.h>
#include <math.h>

static Display	*dpy;
static Window	root;
static int	screen = -1;

typedef enum _changes
{
    changes_none = 0,
    changes_crtc = (1 << 0),
    changes_mode = (1 << 1),
    changes_relation = (1 << 2),
    changes_position = (1 << 3),
    changes_rotation = (1 << 4),
    changes_reflection = (1 << 5),
    changes_automatic = (1 << 6),
    changes_refresh = (1 << 7),
    changes_property = (1 << 8),
    changes_transform = (1 << 9),
    changes_panning = (1 << 10),
    changes_gamma = (1 << 11),
    changes_primary = (1 << 12),
    changes_filter = (1 << 13),
} changes_t;

typedef enum _name_kind
{
    name_none = 0,
    name_string = (1 << 0),
    name_xid = (1 << 1),
    name_index = (1 << 2),
    name_preferred = (1 << 3),
} name_kind_t;

typedef struct
{
    name_kind_t	    kind;
    char    	    *string;
    XID	    	    xid;
    int		    index;
} name_t;

typedef struct _crtc crtc_t;
typedef struct _output	output_t;

struct _crtc
{
    name_t	    crtc;
    XRRCrtcInfo	    *crtc_info;

    XRRModeInfo	    *mode_info;
    output_t	    **outputs;
};

struct _output
{
    struct _output   *next;

    changes_t	    changes;


    name_t	    output;
    XRROutputInfo   *output_info;

    name_t	    crtc;
    crtc_t	    *crtc_info;
    crtc_t	    *current_crtc_info;

    name_t	    mode;
    XRRModeInfo	    *mode_info;

    int		    x, y;
    Bool	    primary;
    Bool	    found;
};


static const char *connection[3] =
{
    "connected",
    "disconnected",
    "unknown connection"
};

static output_t	*all_outputs = NULL;
static output_t	**all_outputs_tail = &all_outputs;
static crtc_t	*crtcs;
static int	num_crtcs;
static XRRScreenResources  *res;
static int	minWidth, maxWidth, minHeight, maxHeight;

static double
mode_refresh (const XRRModeInfo *mode_info)
{
    return 0;

    double rate;
    double vTotal = mode_info->vTotal;

    if (mode_info->modeFlags & RR_DoubleScan)
    {
        /* doublescan doubles the number of lines */
        vTotal *= 2;
    }

    if (mode_info->modeFlags & RR_Interlace)
    {
        /* interlace splits the frame into two fields */
        /* the field rate is what is typically reported by monitors */
        vTotal /= 2;
    }

    if (mode_info->hTotal && vTotal)
        rate = ((double) mode_info->dotClock /
                ((double) mode_info->hTotal * (double) vTotal));
    else
        rate = 0;
    return rate;
}

static void
init_name (name_t *name)
{
    memset(name, 0, sizeof(*name));
    name->kind = name_none;
}

static void
set_name_string (name_t *name, char *string)
{
    name->kind |= name_string;
    name->string = string;
}

static void
set_name_xid (name_t *name, XID xid)
{
    name->kind |= name_xid;
    name->xid = xid;
}

static void
set_name_index (name_t *name, int idx)
{
    name->kind |= name_index;
    name->index = idx;
}

static output_t *
add_output (void)
{
    output_t *output = calloc (1, sizeof (output_t));

    if (!output) exit(0);
    output->next = NULL;
    output->found = False;
    *all_outputs_tail = output;
    all_outputs_tail = &output->next;
    return output;
}

static output_t *
find_output (name_t *name)
{
    output_t *output;

    for (output = all_outputs; output; output = output->next)
    {
        name_kind_t common = name->kind & output->output.kind;

        if ((common & name_xid) && name->xid == output->output.xid)
            break;
        if ((common & name_string) && !strcmp (name->string, output->output.string))
            break;
        if ((common & name_index) && name->index == output->output.index)
            break;
    }
    return output;
}

static crtc_t *
find_crtc (name_t *name)
{
    crtc_t  *crtc = NULL;

    for (int c = 0; c < num_crtcs; c++)
    {
        name_kind_t common;

        crtc = &crtcs[c];
        common = name->kind & crtc->crtc.kind;

        if ((common & name_xid) && name->xid == crtc->crtc.xid)
            break;
        if ((common & name_string) && !strcmp (name->string, crtc->crtc.string))
            break;
        if ((common & name_index) && name->index == crtc->crtc.index)
            break;
        crtc = NULL;
    }
    return crtc;
}

static crtc_t *
find_crtc_by_xid (RRCrtc crtc)
{
    name_t  crtc_name;

    init_name (&crtc_name);
    set_name_xid (&crtc_name, crtc);
    return find_crtc (&crtc_name);
}

static XRRModeInfo *
find_mode (name_t *name, double refresh)
{
    XRRModeInfo	*best = NULL;
    double	bestDist = 0;

    for (int m = 0; m < res->nmode; m++)
    {
        XRRModeInfo *mode = &res->modes[m];
        if ((name->kind & name_xid) && name->xid == mode->id)
        {
            best = mode;
            break;
        }
        if ((name->kind & name_string) && !strcmp (name->string, mode->name))
        {
            double   dist;

            if (refresh)
                dist = fabs (mode_refresh (mode) - refresh);
            else
                dist = 0;
            if (!best || dist < bestDist)
            {
                bestDist = dist;
                best = mode;
            }
        }
    }
    return best;
}

static XRRModeInfo *
find_mode_by_xid (RRMode mode)
{
    name_t  mode_name;

    init_name (&mode_name);
    set_name_xid (&mode_name, mode);
    return find_mode (&mode_name, 0);
}

static Bool
output_can_use_crtc (output_t *output, crtc_t *crtc)
{
    XRROutputInfo   *output_info = output->output_info;

    for (int c = 0; c < output_info->ncrtc; c++)
        if (output_info->crtcs[c] == crtc->crtc.xid)
            return True;
    return False;
}

static Bool
output_is_primary(output_t *output)
{
    return XRRGetOutputPrimary(dpy, root) == output->output.xid;
}


static void
set_output_info (output_t *output, RROutput xid, XRROutputInfo *output_info)
{

    /* sanity check output info */
    if (output_info->connection != RR_Disconnected && !output_info->nmode) exit(0);

    /* set output name and info */
    if (!(output->output.kind & name_xid))
        set_name_xid (&output->output, xid);
    if (!(output->output.kind & name_string))
        set_name_string (&output->output, output_info->name);
    output->output_info = output_info;

    /* set crtc name and info */
    if (!(output->changes & changes_crtc))
        set_name_xid (&output->crtc, output_info->crtc);

    if (output->crtc.kind == name_xid && output->crtc.xid == None)
        output->crtc_info = NULL;
    else
    {
        output->crtc_info = find_crtc (&output->crtc);
        if (!output->crtc_info)
        {
            if (output->crtc.kind & name_xid)exit(0);
            if (output->crtc.kind & name_index)exit(0);
        }
        if (!output_can_use_crtc (output, output->crtc_info))exit(0);
    }

    /* set mode name and info */
    if (!(output->changes & changes_mode))
    {
        crtc_t	*crtc = NULL;

        if (output_info->crtc)
            crtc = find_crtc_by_xid(output_info->crtc);
        if (crtc && crtc->crtc_info)
            set_name_xid (&output->mode, crtc->crtc_info->mode);
        else if (output->crtc_info)
            set_name_xid (&output->mode, output->crtc_info->crtc_info->mode);
        else
            set_name_xid (&output->mode, None);
        if (output->mode.xid)
        {
            output->mode_info = find_mode_by_xid (output->mode.xid);
            if (!output->mode_info)exit(0);
        }
        else
            output->mode_info = NULL;
    }
    else if (output->mode.kind == name_xid && output->mode.xid == None)
        output->mode_info = NULL;
    else
    {
        output->mode_info = 0;
        if (!output->mode_info)
        {
            if (output->mode.kind & name_preferred)exit(0);
            if (output->mode.kind & name_string)exit(0);
            if (output->mode.kind & name_xid)exit(0);
        }
    }

    /* set position */
    if (!(output->changes & changes_position))
    {
        if (output->crtc_info)
        {
            output->x = output->crtc_info->crtc_info->x;
            output->y = output->crtc_info->crtc_info->y;
        }
        else
        {
            output->x = 0;
            output->y = 0;
        }
    }

    if (!(output->changes & changes_primary))
        output->primary = output_is_primary(output);
}

static void
get_screen ()
{
    if (res)
        return;

    XRRGetScreenSizeRange (dpy, root, &minWidth, &minHeight,                           &maxWidth, &maxHeight);

    res = XRRGetScreenResources (dpy, root);
}

static void
get_crtcs (void)
{
    num_crtcs = res->ncrtc;
    crtcs = calloc (num_crtcs, sizeof (crtc_t));
    if (!crtcs) exit(0);

    for (int c = 0; c < res->ncrtc; c++)
    {
        XRRCrtcInfo *crtc_info = XRRGetCrtcInfo (dpy, res, res->crtcs[c]);

        set_name_xid (&crtcs[c].crtc, res->crtcs[c]);
        set_name_index (&crtcs[c].crtc, c);
        if (!crtc_info) exit(0);
        crtcs[c].crtc_info = crtc_info;
        if (crtc_info->mode == None)
        {
            crtcs[c].mode_info = NULL;
        }
    }
}


static void
get_outputs (void)
{
    for (int o = 0; o < res->noutput; o++)
    {
        XRROutputInfo	*output_info = XRRGetOutputInfo (dpy, res, res->outputs[o]);
        output_t	*output;
        name_t		output_name;
        if (!output_info) exit(0);
        init_name(&output_name);
        set_name_xid (&output_name, res->outputs[o]);
        set_name_index (&output_name, o);
        set_name_string (&output_name, output_info->name);
        output = find_output (&output_name);
        output = add_output ();
        output->found = True;

        set_output_info (output, res->outputs[o], output_info);
    }
    for (output_t *q = all_outputs; q; q = q->next)
    {
        if (!q->found)
        {
            fprintf(stderr, "warning: output %s not found; ignoring\n",
                    q->output.string);
        }
    }
}


int
main (int argc, char **argv)
{
    int		event_base, error_base;
    int		major, minor;

    dpy = XOpenDisplay (0);

    if (screen < 0)
        screen = DefaultScreen (dpy);

    root = RootWindow (dpy, screen);

    if (!XRRQueryExtension (dpy, &event_base, &error_base) ||
            !XRRQueryVersion (dpy, &major, &minor))
    {
        fprintf (stderr, "RandR extension missing\n");
        exit (1);
    }

#define ModeShown   0x80000000

    get_screen ();
    get_crtcs ();
    get_outputs ();

    printf ("Screen %d: minimum %d x %d, current %d x %d, maximum %d x %d\n",
            screen, minWidth, minHeight,
            DisplayWidth (dpy, screen), DisplayHeight(dpy, screen),
            maxWidth, maxHeight);

    for (output_t *output = all_outputs; output; output = output->next)
    {
        XRROutputInfo   *output_info = output->output_info;
        crtc_t	    *cur_crtc = output->crtc_info;
        XRRCrtcInfo	    *crtc_info = cur_crtc ? cur_crtc->crtc_info : NULL;
        XRRModeInfo	    *cur_mode = output->mode_info;

        printf ("%s %s", output_info->name, connection[output_info->connection]);
        if (output->primary)
        {
            printf(" primary");
        }
        if (cur_mode)
        {
            if (crtc_info)
            {
                printf (" %dx%d+%d+%d",
                        crtc_info->width, crtc_info->height,
                        crtc_info->x, crtc_info->y);
            }
            else
            {
                printf (" %dx%d+%d+%d",
                        cur_mode->width, cur_mode->height, output->x,
                        output->y);
            }
        }

        printf ("\n");

        Bool *mode_shown = calloc (output_info->nmode, sizeof (Bool));
        for (int j = 0; j < output_info->nmode; j++)
        {
            XRRModeInfo *jmode, *kmode;

            if (mode_shown[j]) continue;

            jmode = find_mode_by_xid (output_info->modes[j]);
            if (!jmode)
            {
                printf ("   [Unknown mode ID 0x%x]\n",
                        (int)output_info->modes[j]);
                continue;
            }
            printf (" ");
            printf ("  %-12s", jmode->name);
            for (int k = j; k < output_info->nmode; k++)
            {
                if (mode_shown[k]) continue;
                kmode = find_mode_by_xid (output_info->modes[k]);
                if (!kmode) continue;
                if (strcmp (jmode->name, kmode->name) != 0) continue;
                mode_shown[k] = True;
                kmode->modeFlags |= ModeShown;
                printf (" %6.2f", mode_refresh (kmode));
                if (kmode == output->mode_info)
                    printf ("*");
                else
                    printf (" ");
                if (k < output_info->npreferred)
                    printf ("+");
                else
                    printf (" ");
            }
            printf ("\n");
        }
        free (mode_shown);
    }
    exit (0);
}
