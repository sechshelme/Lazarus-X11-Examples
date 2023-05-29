#include <forms.h>
#include <flimage.h>

int main(int argc, char *argv[])
{
    FL_FORM *form;
    FL_OBJECT *yes,
              *no,
              *help,
              *but;

              printf("%d\n", buttonFontSize);



    fl_initialize(&argc, argv, "FormDemo", 0, 0);
    form = fl_bgn_form(FL_UP_BOX, 320, 140);

    fl_add_box(FL_NO_BOX, 160, 40, 0, 0, "Do you want to Quit?");
    yes = fl_add_button(FL_NORMAL_BUTTON, 20, 70, 75, 25, "Yes");
    no = fl_add_button(FL_NORMAL_BUTTON, 120, 70, 75, 25, "No");
    help = fl_add_button(FL_NORMAL_BUTTON, 220, 70, 75, 25, "Help");

    fl_end_form();

    fl_show_form(form, FL_PLACE_MOUSE, FL_TRANSIENT, "Question");
    while (1)
    {
        if (fl_do_forms() == yes)
        {
            printf("Yes is pushed\n");
            break;
        }
        else
            printf("No is pushed\n");
    }
    fl_finish();
    return 0;
}
