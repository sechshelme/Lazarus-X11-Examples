unit awMenu;

interface

uses
  xlib,
  x,
  X11StringDefs,
  X11Intrinsic,
  XawMenuButton,
  XawSme,
  XawSmeBSB,
  XawSmeLine,
  XawForm,
  XawBox,
  XawSimpleMenu;

procedure CreateMenu(Parent:TWidget);

implementation

// https://cpp.hotexamples.com/examples/-/-/XtVaCreateWidget/cpp-xtvacreatewidget-function-examples.html

procedure CreateMenu(Parent: TWidget);
var
  DateiMenu, BearbeitenMenu, HilfeMenu, box, form, MenuSeperator,
    menu1, entry, button, menu2: TWidget;
begin
    form := XtVaCreateManagedWidget('form', formWidgetClass, Parent, XtNborderColor, $FF0000, XtNforeground, $8888FF, XtNbackground, $88FFFF, nil);

    DateiMenu := XtVaCreateManagedWidget('Datei', menuButtonWidgetClass, form,XtNmenuName,'menu1', nil);
    menu1:=XtCreatePopupShell('menu1', simpleMenuWidgetClass, DateiMenu,nil,0);

    entry:=XtVaCreateManagedWidget('Neu', smeBSBObjectClass,menu1, nil);
    entry:=XtVaCreateManagedWidget('seperator', smeLineObjectClass,menu1, nil);
    entry:=XtVaCreateManagedWidget('Datei oeffnen...', smeBSBObjectClass,menu1, nil);
    entry:=XtVaCreateManagedWidget('Speichern', smeBSBObjectClass,menu1, nil);
    entry:=XtVaCreateManagedWidget('Speichern unter...', smeBSBObjectClass,menu1, nil);
    entry:=XtVaCreateManagedWidget('Submenu -->', smeBSBObjectClass,menu1, nil);

    //button := XtViaCreateManagedWidget('submenu', menuButtonWidgetClass, entry,XtNmenuName,'submenu1', nil);
    //menu2:=XtCreatePopupShell('submenu1', simpleMenuWidgetClass, button,nil,0);
    //
    //entry:=XtVaCreateManagedWidget('Neu', smeBSBObjectClass,menu2, nil);
    //entry:=XtVaCreateManagedWidget('seperator', smeLineObjectClass,menu2, nil);
    //entry:=XtVaCreateManagedWidget('Datei oeffnen...', smeBSBObjectClass,menu2, nil);
    //entry:=XtVaCreateManagedWidget('Speichern', smeBSBObjectClass,menu2, nil);
    //entry:=XtVaCreateManagedWidget('Speichern unter...', smeBSBObjectClass,menu2, nil);


    BearbeitenMenu := XtVaCreateManagedWidget('Bearbeiten', menuButtonWidgetClass,form,XtNmenuName,'menu2',XtNfromHoriz,DateiMenu, nil);


    HilfeMenu := XtVaCreateManagedWidget('Hilfe', menuButtonWidgetClass,form,XtNmenuName,'menu3',XtNfromHoriz,BearbeitenMenu, nil);




end;

end.

//{void
//xaw_create_menu(struct button_info *item, Widget parent, int *ret_width)
//{
//    Dimension y_pos = resource.btn_top_spacing;
//    size_t i;
//
//    XtAppAddActions(XtWidgetToApplicationContext(globals.widgets.form_widget), menu_actions, XtNumber(menu_actions));
//
//    for (i = 0; item != NULL && i < item->size; i++) {
//        Widget button;
//        Dimension w, h;
//
//        if (item->elems[i].type == BT_SEP) { /* separator */
//            XDVI_ERROR((stderr, "Cannot have a separator on a toplevel Xaw menu (ignoring)"));
//            /* y_pos += resource.btn_between_extra; */
//            continue;
//        }
//        else if (item->elems[i].submenu != NULL) { /* menu button, create a pulldown menu */
//            Widget shell;
//
//            button = XtVaCreateWidget("button", menuButtonWidgetClass, parent,
//                                      XtNmenuName, item->elems[i].title,
//                                      XtNlabel, item->elems[i].title,
//                                      XtNx, resource.btn_side_spacing,
//                                      XtNy, y_pos,
//                                      XtNborderWidth, resource.btn_border_width,
//                                      NULL);
//            shell = XtCreatePopupShell(item->elems[i].title, simpleMenuWidgetClass, button, NULL, 0);
//
//            create_menu_entries(item->elems[i].submenu, shell);
//        }
//        else { /* command button */
//            command_call[0].closure = (XtPointer)item->elems[i].action;
//            button = XtVaCreateWidget(item->elems[i].title, commandWidgetClass, parent,
//                                      XtNlabel, item->elems[i].title,
//                                      XtNx, resource.btn_side_spacing,
//                                      XtNy, y_pos,
//                                      XtNborderWidth, resource.btn_border_width,
//                                      XtNcallback, (XtArgVal)command_call,
//                                      NULL);
//        }
//        XtVaGetValues(button, XtNwidth, &w, XtNheight, &h, NULL);
//        y_pos += h + resource.btn_between_spacing + 2 * resource.btn_border_width;
//        if (w > m_panel_width)
//            m_panel_width = w;
//        item->elems[i].widget = button;
//    }
//
//    /* adjust button sizes, and manage buttons (managing them earlier may result
//       in `parent has no geometry manager' error) */
//    for (i = 0; item != NULL && i < item->size; i++) {
//        XtVaSetValues(item->elems[i].widget, XtNwidth, m_panel_width, NULL);
//        XtManageChild(item->elems[i].widget);
//    }
//
//    m_y_pos = y_pos - resource.btn_between_spacing + resource.btn_top_spacing + 2 * resource.btn_border_width;
//    m_panel_width += 2 * resource.btn_side_spacing + resource.btn_border_width;
//    XtVaSetValues(panel_widget, XtNwidth, m_panel_width, NULL);
//    *ret_width = m_panel_width;
//}

