.class Landroid/widget/DayPickerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerAdapter.java"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerAdapter;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerAdapter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    # invokes: Landroid/widget/DayPickerAdapter;->isCalendarInRange(Ljava/util/Calendar;)Z
    invoke-static {v0, p2}, Landroid/widget/DayPickerAdapter;->access$000(Landroid/widget/DayPickerAdapter;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    # getter for: Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerAdapter;->access$100(Landroid/widget/DayPickerAdapter;)Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    # getter for: Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerAdapter;->access$100(Landroid/widget/DayPickerAdapter;)Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerAdapter;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method public onNavigationClick(Landroid/widget/SimpleMonthView;IZ)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "direction"    # I
    .param p3, "animate"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    # getter for: Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerAdapter;->access$100(Landroid/widget/DayPickerAdapter;)Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    # getter for: Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerAdapter;->access$100(Landroid/widget/DayPickerAdapter;)Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DayPickerAdapter$1;->this$0:Landroid/widget/DayPickerAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/DayPickerAdapter$OnDaySelectedListener;->onNavigationClick(Landroid/widget/DayPickerAdapter;IZ)V

    :cond_0
    return-void
.end method
