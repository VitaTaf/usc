.class Landroid/widget/DayPickerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/DayPickerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "calendarViewId"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    new-instance v1, Landroid/widget/DayPickerAdapter$1;

    invoke-direct {v1, p0}, Landroid/widget/DayPickerAdapter$1;-><init>(Landroid/widget/DayPickerAdapter;)V

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Landroid/widget/DayPickerAdapter;->mLayoutResId:I

    iput p3, p0, Landroid/widget/DayPickerAdapter;->mCalendarViewId:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101042c

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DayPickerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerAdapter;Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerAdapter;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DayPickerAdapter;->isCalendarInRange(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/DayPickerAdapter;)Landroid/widget/DayPickerAdapter$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DayPickerAdapter;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private getMonthForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    rem-int/lit8 v0, p1, 0xc

    iget-object v1, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .locals 6
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "yearOffset":I
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "monthOffset":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method private getYearForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    div-int/lit8 v0, p1, 0xc

    iget-object v1, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private isCalendarInRange(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "value"    # Ljava/util/Calendar;

    .prologue
    iget-object v0, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    move-object v0, p3

    check-cast v0, Landroid/widget/DayPickerAdapter$ViewHolder;

    .local v0, "holder":Landroid/widget/DayPickerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DayPickerAdapter;->mCount:I

    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DayPickerAdapter;->mDayOfWeekTextAppearance:I

    return v0
.end method

.method getDayTextAppearance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DayPickerAdapter;->mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/DayPickerAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerAdapter$ViewHolder;

    .local v0, "holder":Landroid/widget/DayPickerAdapter$ViewHolder;
    iget v1, v0, Landroid/widget/DayPickerAdapter$ViewHolder;->position:I

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerAdapter$ViewHolder;

    iget-object v0, v1, Landroid/widget/DayPickerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .local v0, "v":Landroid/widget/SimpleMonthView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Landroid/widget/DayPickerAdapter;->mLayoutResId:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .local v8, "itemView":Landroid/view/View;
    iget v4, p0, Landroid/widget/DayPickerAdapter;->mCalendarViewId:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleMonthView;

    .local v0, "v":Landroid/widget/SimpleMonthView;
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    iget v4, p0, Landroid/widget/DayPickerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    iget v4, p0, Landroid/widget/DayPickerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    iget v4, p0, Landroid/widget/DayPickerAdapter;->mDayTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/DayPickerAdapter;->getMonthForPosition(I)I

    move-result v2

    .local v2, "month":I
    invoke-direct {p0, p2}, Landroid/widget/DayPickerAdapter;->getYearForPosition(I)I

    move-result v3

    .local v3, "year":I
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "selectedDay":I
    :goto_0
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "enabledDayRangeStart":I
    :goto_1
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .local v6, "enabledDayRangeEnd":I
    :goto_2
    iget v4, p0, Landroid/widget/DayPickerAdapter;->mFirstDayOfWeek:I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    if-lez p2, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setPrevEnabled(Z)V

    iget v4, p0, Landroid/widget/DayPickerAdapter;->mCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge p2, v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setNextEnabled(Z)V

    new-instance v7, Landroid/widget/DayPickerAdapter$ViewHolder;

    invoke-direct {v7, p2, v8, v0}, Landroid/widget/DayPickerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    .local v7, "holder":Landroid/widget/DayPickerAdapter$ViewHolder;
    iget-object v4, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v7

    .end local v1    # "selectedDay":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    .end local v7    # "holder":Landroid/widget/DayPickerAdapter$ViewHolder;
    :cond_3
    const/4 v1, -0x1

    .restart local v1    # "selectedDay":I
    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_1

    :cond_5
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    check-cast v0, Landroid/widget/DayPickerAdapter$ViewHolder;

    .local v0, "holder":Landroid/widget/DayPickerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "calendarTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerAdapter;->mDayOfWeekTextAppearance:I

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "selectorColor"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerAdapter;->mDayTextAppearance:I

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 4
    .param p1, "weekStart"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerAdapter;->mFirstDayOfWeek:I

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerAdapter$ViewHolder;

    iget-object v2, v3, Landroid/widget/DayPickerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .local v2, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "monthView":Landroid/widget/SimpleMonthView;
    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Landroid/widget/DayPickerAdapter;->mMonthTextAppearance:I

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerAdapter$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/DayPickerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 8
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v2, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "diffYear":I
    iget-object v2, p0, Landroid/widget/DayPickerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DayPickerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "diffMonth":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/DayPickerAdapter;->mCount:I

    invoke-virtual {p0}, Landroid/widget/DayPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 8
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v5}, Landroid/widget/DayPickerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v4

    .local v4, "oldPosition":I
    invoke-direct {p0, p1}, Landroid/widget/DayPickerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v2

    .local v2, "newPosition":I
    if-eq v4, v2, :cond_0

    if-ltz v4, :cond_0

    iget-object v5, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerAdapter$ViewHolder;

    .local v3, "oldMonthView":Landroid/widget/DayPickerAdapter$ViewHolder;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/widget/DayPickerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .end local v3    # "oldMonthView":Landroid/widget/DayPickerAdapter$ViewHolder;
    :cond_0
    if-ltz v2, :cond_1

    iget-object v5, p0, Landroid/widget/DayPickerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerAdapter$ViewHolder;

    .local v1, "newMonthView":Landroid/widget/DayPickerAdapter$ViewHolder;
    if-eqz v1, :cond_1

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "dayOfMonth":I
    iget-object v5, v1, Landroid/widget/DayPickerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v5, v0}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .end local v0    # "dayOfMonth":I
    .end local v1    # "newMonthView":Landroid/widget/DayPickerAdapter$ViewHolder;
    :cond_1
    iput-object p1, p0, Landroid/widget/DayPickerAdapter;->mSelectedDay:Ljava/util/Calendar;

    return-void
.end method
