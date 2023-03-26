 /* simple_sb.c -- demonstrate the Scrollbar resource values from
    * a ScrolledText object.  This is used as an introductory examination
    * of the resources used by Scrollbars.
    */
   #include <Xm/ScrolledW.h>
   #include <Xm/RowColumn.h>
   #include <Xm/Container.h>
   #include <Xm/PushBG.h>
   #include <Xm/Text.h>

   /* print the "interesting" resource values of a scrollbar */
   void
   get_sb(widget, client_data, call_data)
   Widget widget;
   XtPointer client_data;
   XtPointer call_data;
   {
       Widget scrollbar = (Widget) client_data;
       int increment=0, maximum=0, minimum=0;
       int page_incr=0, slider_size=0, value=0;


   }

   main(argc, argv)
   int argc;
   char *argv[];
   {
       Widget        toplevel, rowcol, text_w, pb, sb;
       XtAppContext  app;
       Arg           args[10];
       int           n = 0;

       XtSetLanguageProc (NULL, NULL, NULL);

       toplevel = XtVaAppInitialize (&app, "Demos",
           NULL, 0, &argc, argv, NULL, NULL);

       /* RowColumn contains ScrolledText and PushButton */
       rowcol = XtVaCreateWidget ("rowcol",
           xmRowColumnWidgetClass, toplevel, NULL);

       XtSetArg (args[n], XmNrows,      10); n++;
       XtSetArg (args[n], XmNcolumns,   80); n++;
       XtSetArg (args[n], XtNwidth,   280); n++;
       XtSetArg (args[n], XtNheight,   280); n++;
       XtSetArg (args[n], XtNinternalHeight,   180); n++;
       XtSetArg (args[n], XtNinternalWidth,   180); n++;
  //     XtSetArg (args[n], XmNeditMode,  XmMULTI_LINE_EDIT); n++;
       XtSetArg (args[n], XmNscrollHorizontal,  True); n++;
   //    XtSetArg (args[n], XmNwordWrap,  True); n++;
       text_w = XmCreateContainer(rowcol, "text_w", args, n);
  XtManageChild (text_w);
          XtManageChild (rowcol);

       /* get the scrollbar from ScrolledWindow associated with Text widget */
       XtVaGetValues (XtParent (text_w), XmNverticalScrollBar, &sb, NULL);

       /* provide a pushbutton to obtain the scrollbar's resource values */
       pb = XtVaCreateManagedWidget ("Print ScrollBar Values",
           xmPushButtonGadgetClass, rowcol, NULL);
       XtAddCallback (pb, XmNactivateCallback, get_sb, sb);

       XtManageChild (rowcol);

       XtRealizeWidget (toplevel);
       XtAppMainLoop (app);
   }
