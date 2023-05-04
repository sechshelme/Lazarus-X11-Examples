#include <X11/Xlib.h>

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// https://twiserandom.com/unix/x11/what-is-an-atom-in-x11/index.html


int
        main
            (int argc , char* argv[ ] ){

    Display* display;
    char* connection_string = NULL;
    display = XOpenDisplay (connection_string  );
    if (display == NULL ){
        fprintf (stderr, "Error: XOpenDisplay (%s )\n", connection_string == NULL ? "NULL" :  connection_string );
        exit (EXIT_FAILURE );}

    char* string_life = "Leben ist sehr schön";
    Atom atom_life;
    atom_life = XInternAtom (display, string_life, false );
    printf ("atom_life is : %lu\n", atom_life );

    int num_string =3;
    char* strings [ ] = {"First string", "Second string", "Third string" };
    Atom atom [num_string ];
    int status = XInternAtoms (display, //The connection
                    strings, //The strings
                    num_string, // count of strings
                    false,  // only_if_exists
                    atom );
    if (status == 0 ){
        fprintf (stderr, "Error: XInternAtoms \n" );
        exit (EXIT_FAILURE );}

    for (int i = 0; i < num_string; i++ )
        printf ("atom [%d ] is %lu\n", i, atom [i ] );

     exit (EXIT_SUCCESS ); }
/* Output:
atom_life is : 343
atom [0 ] is 344
atom [1 ] is 345
atom [2 ] is 346
*/
