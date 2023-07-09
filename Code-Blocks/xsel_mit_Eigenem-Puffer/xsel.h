
#define MIN(a,b) ((a)<(b)?(a):(b))

typedef struct _MultTrack MultTrack;

struct _MultTrack {
  MultTrack * mparent;
  Display * display;
  Window requestor;
  Atom property;
  Atom selection;
  Time time;
  Atom * atoms;
  unsigned long length;
  unsigned long index;
  unsigned char * sel;
};

/* Selection serving states */
typedef enum {
  S_NULL=0,
  S_INCR_1,
  S_INCR_2
} IncrState;

/* An instance of a selection being served */
typedef struct _IncrTrack IncrTrack;

struct _IncrTrack {
  MultTrack * mparent;
  IncrTrack * prev, * next;
  IncrState state;
  Display * display;
  Window requestor;
  Atom property;
  Atom selection;
  Time time;
  Atom target;
  int format;
  unsigned char * data;
  int nelements; /* total */
  int offset, chunk, max_elements; /* all in terms of nelements */
};

/* Status of request handling */
typedef int HandleResult;
#define HANDLE_OK         0
#define HANDLE_ERR        (1<<0)
#define HANDLE_INCOMPLETE (1<<1)
#define DID_DELETE        (1<<2)
