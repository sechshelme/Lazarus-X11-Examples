// http://euklid.mi.uni-koeln.de/c/mirror/www.cs.curtin.edu.au/units/cg351-551/notes/lect1ha1.html

#include <X11/Xlib.h>

    #include <Xm/Xm.h>

    #include <Xm/MenuShell.h>

    #include <Xm/PushBG.h>

    #include <Xm/CascadeBG.h>

    #include <Xm/RowColumn.h>


    static char * return_label(widget_cb)

    Widget  widget_cb;

    {

    XmString xm_label_string;

    char *label_string;


        XtVaGetValues(widget_cb,

                    XmNlabelString, &xm_label_string,

                    NULL);

        XmStringGetLtoR(xm_label_string,

    #ifdef AES

                            XmFONTLIST_DEFAULT_TAG,

    #else

                            XmSTRING_DEFAULT_CHARSET,

    #endif

                            &label_string);

        return(label_string);

    }


    static void Quit_cb (widget_cb, client_data, call_data)

    Widget      widget_cb;      /*  widget id           */

    XtPointer   client_data;    /*  data from application   */

    XtPointer   call_data;      /*  data from widget class  */

    {

    XtAppContext app_context = (XtAppContext)client_data;


        XtDestroyApplicationContext(app_context);

        exit(0);

    }


    static void Button_cb (widget_cb, client_data, call_data)

    Widget      widget_cb;      /*  widget id           */

    XtPointer   client_data;    /*  data from application   */

    XtPointer   call_data;      /*  data from widget class  */

    {

    char *string = (char *) client_data;


        printf ("Button %s selected - passed %s.\n",

                        return_label(widget_cb),string);

    }


    static void Popup_cb (widget_cb, client_data, call_data)

    Widget      widget_cb;              /*  widget id           */

    XtPointer   client_data;    /*  data from application   */

    XtPointer   call_data;      /*  data from widget class  */

    {

    char *string = (char *) client_data;


        printf ("Popup entry %s selected - passed %s.\n",

                        return_label(widget_cb),string);

    }

    static void Pulldown_cb (widget_cb, client_data, call_data)

    Widget      widget_cb;              /*  widget id           */

    XtPointer   client_data;    /*  data from application   */

    XtPointer   call_data;      /*  data from widget class  */

    {

    char *string = (char *) client_data;


        printf ("Menu Entry %s selected - passed %s.\n",

                return_label(widget_cb),string);

    }


    /************** Event Handler for Popup Menu ************************/


    static void PostMenu (widget_event, client_data, event, state)

    Widget widget_event;

    XtPointer client_data;

    XEvent * event;

    Boolean *state;

    {

    Widget popup= (Widget)client_data;

    XButtonEvent *button_event = (XButtonEvent *)event;


        if (button_event->button != Button3)

                return;


        XmMenuPosition(popup, event);

        XtManageChild(popup);

    }


    static Widget create_pulldown_menu(rc)

    Widget rc;

    {

    Widget  menubarBtn[6];

    Widget tmp;

    Widget pulldown;

    Arg args[5];

    int arg_count;

    XmString label_string;


    /* Create title for the menubutton */

        arg_count = 0;

        pulldown = XmCreatePulldownMenu(rc, "pulldown1", args, arg_count);


        label_string=XmStringCreateLtoR("File Selection", XmSTRING_DEFAULT_CHARSET);

        arg_count = 0;

        XtSetArg(args[arg_count], XmNlabelString, label_string);arg_count++;

        menubarBtn[0]=XmCreateLabelGadget(pulldown, "pd_menu", args, arg_count);

        XmStringFree(label_string);


    /* Create separator for the popup menu */

        menubarBtn[1]=XmCreateSeparatorGadget(pulldown, "separator", NULL, 0);


    /* Create menu entries for the popup menu */

        arg_count = 0;

        label_string = XmStringCreate("Open", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[arg_count], XmNlabelString, label_string);arg_count++;

        XtSetArg(args[arg_count], XmNmnemonic, 'O'); arg_count++;

        menubarBtn[2]=XmCreatePushButtonGadget(pulldown, "pd_menu", args, arg_count);

        XtAddCallback(menubarBtn[2], XmNactivateCallback, Pulldown_cb, "1");

        XmStringFree(label_string);


        arg_count = 0;

        label_string = XmStringCreate("Save", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[arg_count], XmNlabelString, label_string);arg_count++;

        XtSetArg(args[arg_count], XmNmnemonic, 'S'); arg_count++;

        menubarBtn[3]=XmCreatePushButtonGadget(pulldown, "pd_menu", args, arg_count);

        XtAddCallback(menubarBtn[3], XmNactivateCallback, Pulldown_cb, "2");

        XmStringFree(label_string);


        arg_count = 0;

        label_string = XmStringCreate("Save as...", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[arg_count], XmNlabelString, label_string);arg_count++;

        XtSetArg(args[arg_count], XmNmnemonic, 'a'); arg_count++;

        menubarBtn[4]=XmCreatePushButtonGadget(pulldown, "pd_menu", args, arg_count);

        XtAddCallback(menubarBtn[4], XmNactivateCallback, Pulldown_cb, "3");

        XmStringFree(label_string);


        arg_count = 0;

        label_string = XmStringCreate("Print", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[arg_count], XmNlabelString, label_string);arg_count++;

        XtSetArg(args[arg_count], XmNmnemonic, 'P'); arg_count++;

        menubarBtn[5]=XmCreatePushButtonGadget(pulldown, "pd_menu", args, arg_count);

        XtAddCallback(menubarBtn[5], XmNactivateCallback, Pulldown_cb, "4");

        XmStringFree(label_string);


    /* Create title for the popup menu */

        arg_count=0;

        label_string = XmStringCreate("File", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[arg_count], XmNlabelString, label_string); arg_count++;

        XtSetArg(args[arg_count], XmNsubMenuId, pulldown);      arg_count++;

        XtSetArg(args[arg_count], XmNmenuHistory, menubarBtn[2]);arg_count++;

        XtSetArg(args[arg_count], XmNpopupEnabled, True);       arg_count++;

        tmp = XmCreateOptionMenu(rc, "option_menu", args, arg_count);

        XmStringFree(label_string);


        XtManageChild(tmp);


        XtManageChildren (menubarBtn, 6);


        return(pulldown);

    }

    static Widget create_popup_menu(rc)

    Widget rc;

    {

    Arg args[5];

    int arg_count;

    XmString label_string;

    Widget popupshell, mshell1, mshell2;

    Widget popup, submenu1, submenu2;

    Widget popupBtn[2], sub1Btn[3], sub2Btn[2], sub3Btn[2];


        /* Create MenuShell for initial Popup MenuPane */

        arg_count=0;

        XtSetArg(args[arg_count], XmNheight, 100);arg_count++;

        XtSetArg(args[arg_count], XmNwidth, 100); arg_count++;

        popupshell = XmCreateMenuShell(rc, "popupshell", args, arg_count);


        /* Create RowColumn Widget configured as Popup MenuPane

           to hold first two menu entry widgets - a button and a submenu.*/

        arg_count=0;

        XtSetArg(args[arg_count], XmNrowColumnType, XmMENU_POPUP);arg_count++;

        popup = XmCreateRowColumn (popupshell, "popup", args, arg_count);


        /* Create MenuShell for second popup MenuPane created from first

           submenu. */

        XtSetArg(args[0], XmNheight, 100);

        XtSetArg(args[1], XmNwidth, 100);

        mshell1 = XmCreateMenuShell (popupshell, "mshell1", args, 2);


        XtSetArg(args[0], XmNrowColumnType, XmMENU_PULLDOWN);

        submenu1 = XmCreateRowColumn (mshell1, "submenu1", args, 1);


        /* Create a PushButton and a CascadeButtons in the Popup MenuPane */


        label_string = XmStringCreate("First menu item", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[0], XmNlabelString, label_string);

        popupBtn[0] = XmCreatePushButtonGadget(popup, "button1", args, 1);

        XmStringFree(label_string);

        XtAddCallback(popupBtn[0], XmNactivateCallback, Popup_cb, "1");


        label_string = XmStringCreate("First Submenu", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[0], XmNlabelString, label_string);

        XtSetArg(args[1], XmNsubMenuId, submenu1);

        popupBtn[1] = XmCreateCascadeButtonGadget(popup, "cbutton1", args, 2);

        XmStringFree(label_string);

        XtManageChildren (popupBtn, 2);


        /* Create pushbuttons in MenuPane submenu1 */


        sub2Btn[0] = XmCreatePushButtonGadget(submenu1, "button2a", NULL, 0);

        XtAddCallback(sub2Btn[0], XmNactivateCallback, Popup_cb, "2a");


        sub2Btn[1] = XmCreatePushButtonGadget(submenu1, "button2b", NULL, 0);

        XtAddCallback(sub2Btn[1], XmNactivateCallback, Popup_cb, "2b");

        XtManageChildren (sub2Btn, 2);


        /* Create a MenuShell for the submenu of submenu2 */


        XtSetArg(args[0], XmNheight, 100);

        XtSetArg(args[1], XmNwidth, 100);

        mshell2 = XmCreateMenuShell (mshell1, "mshell2", args, 2);


        /* Create the MenuPane for the submenu of submenu2 */


        XtSetArg(args[0], XmNrowColumnType, XmMENU_PULLDOWN);

        submenu2 = XmCreateRowColumn (mshell2, "submenu2", args, 1);


        /* Create the Cascade Button in submenu1 for accessing submenu2 */


        label_string = XmStringCreate("To Second Submenu", XmSTRING_DEFAULT_CHARSET);

        XtSetArg(args[0], XmNlabelString, label_string);

        XtSetArg(args[1], XmNsubMenuId, submenu2);

        sub1Btn[0] = XmCreateCascadeButtonGadget(submenu1, "cbutton2", args, 2);

        XmStringFree(label_string);

        XtManageChildren(sub1Btn, 1);


        /* Create pushbuttons in submenu */


        sub3Btn[0] = XmCreatePushButtonGadget(submenu2, "button3a", NULL, 0);

        XtAddCallback(sub3Btn[0], XmNactivateCallback, Popup_cb, "3a");


        sub3Btn[1] = XmCreatePushButtonGadget(submenu2, "button3b", NULL, 0);

        XtAddCallback(sub3Btn[1], XmNactivateCallback, Popup_cb, "3b");

        XtManageChildren (sub3Btn, 2);


        /* now whenever a button is pressed in the rc widget, PostMenu

           is invoked. But IT checks for button 3 only!!           */

        XtAddEventHandler(rc, ButtonPressMask, False, PostMenu, popup);


        return(popupshell);

    }

    void main (argc, argv)

    int argc;

    char **argv;

    {

    XtAppContext app_context;

    Widget toplevel, rc, button,pulldown,quit,popupshell;


        toplevel = XtVaAppInitialize( &app_context, "XMmenu", NULL, 0,

                                &argc, argv, NULL,

                                NULL);


        rc = XtVaCreateManagedWidget("rc",xmRowColumnWidgetClass,toplevel,

                        XmNresizeWidth, True,

                        XmNresizeHeight, True,

                        XmNorientation, XmHORIZONTAL,

                        XmNadjustLast, False,

                        NULL);


        button = XmCreatePushButtonGadget(rc, "button1", NULL, 0);

        XtAddCallback(button, XmNactivateCallback, Button_cb, "1");

        XtManageChild(button);


        pulldown=create_pulldown_menu(rc);


        quit = XmCreatePushButtonGadget(rc, "Quit", NULL, 0);

        XtAddCallback(quit, XmNactivateCallback, Quit_cb, (XtPointer)app_context);

        XtManageChild(quit);


        popupshell=create_popup_menu(rc);


        XtRealizeWidget(toplevel);

        XtAppMainLoop(app_context);

    }
