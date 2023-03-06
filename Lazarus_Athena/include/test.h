
#define tt "sdfsdafsdfsfdasffsdf"

#define ch *("abc","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","def","ghi","jkl","Ich bin ein sehr langer Text",0)

typedef struct _WidgetClassRec *CoreWidgetClass;
typedef struct _WidgetRec *CoreWidget;
extern WidgetClass coreWidgetClass;

#ifndef VMS
extern WidgetClass widgetClass;

#endif

#endif /* _XtCore_h */
/* DON'T ADD STUFF AFTER THIS #endif */
