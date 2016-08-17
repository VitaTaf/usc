.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DAY_OF_WEEK_FORMAT:Ljava/lang/String; = "EEEEE"

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_TITLE_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final ITEM_ID_NEXT:I = 0x100

.field private static final ITEM_ID_PREV:I = 0x101

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCellWidth:I

.field private final mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

.field private final mDayOfWeekHeight:I

.field private final mDayOfWeekLabelCalendar:Ljava/util/Calendar;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private final mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mMonth:I

.field private final mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private final mNextContentDesc:Ljava/lang/CharSequence;

.field private final mNextDrawable:Landroid/graphics/drawable/Drawable;

.field private mNextEnabled:Z

.field private final mNextHitArea:Landroid/graphics/Rect;

.field private mNumWeeks:I

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private final mPrevContentDesc:Ljava/lang/CharSequence;

.field private final mPrevDrawable:Landroid/graphics/drawable/Drawable;

.field private mPrevEnabled:Z

.field private final mPrevHitArea:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/CharSequence;

.field private final mTitleFormatter:Ljava/text/SimpleDateFormat;

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mTouchedItem:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    iput v6, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v6, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iput v5, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    iput v5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 v3, 0x1f

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    const/4 v3, 0x6

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumWeeks:I

    iput v6, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050111

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    const v3, 0x1050112

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    const v3, 0x1050113

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const v3, 0x1050114

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const v3, 0x1050115

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    const v3, 0x1080571

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x10805c3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mPrevHitArea:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v4, p0, Landroid/widget/SimpleMonthView;->mNextHitArea:Landroid/graphics/Rect;

    const v3, 0x104004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mPrevContentDesc:Ljava/lang/CharSequence;

    const v3, 0x104004b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mNextContentDesc:Ljava/lang/CharSequence;

    new-instance v3, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v3, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v3}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v5}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, "locale":Ljava/util/Locale;
    const-string v3, "MMMMy"

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "titleFormat":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEEE"

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v5}, Landroid/widget/SimpleMonthView;->setClickable(Z)V

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void

    .end local v0    # "locale":Ljava/util/Locale;
    .end local v2    # "titleFormat":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthView;II)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getItemAtLocation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mNextEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/SimpleMonthView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mPrevContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SimpleMonthView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SimpleMonthView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mPrevEnabled:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleMonthView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForItem(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/SimpleMonthView;IZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->onItemClicked(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SimpleMonthView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthView;

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mNextContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v5, v6, v7, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "enabledColor":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .end local v0    # "enabledColor":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method

.method private calculateNumRows()I
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    .local v1, "offset":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v1

    div-int/lit8 v0, v3, 0x7

    .local v0, "dividend":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v1

    rem-int/lit8 v2, v3, 0x7

    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawButtons(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mPrevEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mNextEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .local v14, "p":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    move/from16 v20, v0

    add-int v11, v19, v20

    .local v11, "headerHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v16, v0

    .local v16, "rowHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v19, v0

    div-int/lit8 v7, v19, 0x7

    .local v7, "colWidth":I
    invoke-virtual {v14}, Landroid/text/TextPaint;->ascent()F

    move-result v19

    invoke-virtual {v14}, Landroid/text/TextPaint;->descent()F

    move-result v20

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v10, v19, v20

    .local v10, "halfLineHeight":F
    div-int/lit8 v19, v16, 0x2

    add-int v15, v11, v19

    .local v15, "rowCenter":I
    const/4 v8, 0x1

    .local v8, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v5

    .local v5, "col":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v8, v0, :cond_7

    mul-int v19, v7, v5

    div-int/lit8 v20, v7, 0x2

    add-int v6, v19, v20

    .local v6, "colCenter":I
    const/16 v17, 0x0

    .local v17, "stateMask":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v8, v0, :cond_0

    or-int/lit8 v17, v17, 0x8

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_3

    const/4 v12, 0x1

    .local v12, "isDayActivated":Z
    :goto_1
    if-eqz v12, :cond_4

    or-int/lit8 v17, v17, 0x20

    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_5

    const/4 v13, 0x1

    .local v13, "isDayToday":Z
    :goto_3
    if-eqz v13, :cond_6

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .local v9, "dayTextColor":I
    :goto_4
    invoke-virtual {v14, v9}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    int-to-float v0, v6

    move/from16 v20, v0

    int-to-float v0, v15

    move/from16 v21, v0

    sub-float v21, v21, v10

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v5, v0, :cond_2

    const/4 v5, 0x0

    add-int v15, v15, v16

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v9    # "dayTextColor":I
    .end local v12    # "isDayActivated":Z
    .end local v13    # "isDayToday":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .restart local v12    # "isDayActivated":Z
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_1

    or-int/lit8 v17, v17, 0x10

    int-to-float v0, v6

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .restart local v13    # "isDayToday":Z
    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/util/StateSet;->get(I)[I

    move-result-object v18

    .local v18, "stateSet":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .restart local v9    # "dayTextColor":I
    goto :goto_4

    .end local v6    # "colCenter":I
    .end local v9    # "dayTextColor":I
    .end local v12    # "isDayActivated":Z
    .end local v13    # "isDayToday":Z
    .end local v17    # "stateMask":I
    .end local v18    # "stateSet":[I
    :cond_7
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .local v7, "p":Landroid/text/TextPaint;
    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .local v5, "headerHeight":I
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .local v9, "rowHeight":I
    iget v10, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v2, v10, 0x7

    .local v2, "colWidth":I
    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    .local v4, "halfLineHeight":F
    div-int/lit8 v10, v9, 0x2

    add-int v8, v5, v10

    .local v8, "rowCenter":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    const/4 v10, 0x7

    if-ge v0, v10, :cond_0

    mul-int v10, v2, v0

    div-int/lit8 v11, v2, 0x2

    add-int v1, v10, v11

    .local v1, "colCenter":I
    iget v10, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v10, v0

    rem-int/lit8 v3, v10, 0x7

    .local v3, "dayOfWeek":I
    invoke-direct {p0, v3}, Landroid/widget/SimpleMonthView;->getDayOfWeekLabel(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "label":Ljava/lang/String;
    int-to-float v10, v1

    int-to-float v11, v8

    sub-float/2addr v11, v4

    invoke-virtual {p1, v6, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "colCenter":I
    .end local v3    # "dayOfWeek":I
    .end local v6    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v3, v3

    div-float v1, v3, v5

    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    add-float v0, v3, v4

    .local v0, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float v2, v3, v5

    .local v2, "y":F
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private findDayOffset()I
    .locals 3

    .prologue
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v0, v1, v2

    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x7

    .end local v0    # "offset":I
    :cond_0
    return v0
.end method

.method private getBoundsForItem(ILandroid/graphics/Rect;)Z
    .locals 11
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    iget-boolean v9, p0, Landroid/widget/SimpleMonthView;->mNextEnabled:Z

    if-eqz v9, :cond_0

    const/16 v9, 0x100

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mNextHitArea:Landroid/graphics/Rect;

    invoke-virtual {p2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return v8

    :cond_0
    iget-boolean v9, p0, Landroid/widget/SimpleMonthView;->mPrevEnabled:Z

    if-eqz v9, :cond_1

    const/16 v9, 0x101

    if-ne p1, v9, :cond_1

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mPrevHitArea:Landroid/graphics/Rect;

    invoke-virtual {p2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    if-lt p1, v8, :cond_2

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le p1, v9, :cond_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v9, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v10

    add-int v3, v9, v10

    .local v3, "index":I
    rem-int/lit8 v0, v3, 0x7

    .local v0, "col":I
    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v1, v9, 0x7

    .local v1, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v9

    mul-int v10, v0, v1

    add-int v4, v9, v10

    .local v4, "left":I
    div-int/lit8 v5, v3, 0x7

    .local v5, "row":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .local v6, "rowHeight":I
    iget v9, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v9, v10

    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v2

    mul-int v10, v5, v6

    add-int v7, v9, v10

    .local v7, "top":I
    add-int v9, v4, v1

    add-int v10, v7, v6

    invoke-virtual {p2, v4, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDayOfWeekLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "dayOfWeek"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1f

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getItemAtLocation(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, -0x1

    iget-boolean v8, p0, Landroid/widget/SimpleMonthView;->mNextEnabled:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mNextHitArea:Landroid/graphics/Rect;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v1, 0x100

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v8, p0, Landroid/widget/SimpleMonthView;->mPrevEnabled:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mPrevHitArea:Landroid/graphics/Rect;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v1, 0x101

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v8

    sub-int v4, p1, v8

    .local v4, "paddedX":I
    if-ltz v4, :cond_3

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v4, v8, :cond_4

    :cond_3
    move v1, v7

    goto :goto_0

    :cond_4
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v8

    sub-int v5, p2, v8

    .local v5, "paddedY":I
    if-lt v5, v2, :cond_5

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v5, v8, :cond_6

    :cond_5
    move v1, v7

    goto :goto_0

    :cond_6
    sub-int v8, v5, v2

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int v6, v8, v9

    .local v6, "row":I
    mul-int/lit8 v8, v4, 0x7

    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int v0, v8, v9

    .local v0, "col":I
    mul-int/lit8 v8, v6, 0x7

    add-int v3, v0, v8

    .local v3, "index":I
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int v1, v8, v9

    .local v1, "day":I
    const/4 v8, 0x1

    if-lt v1, v8, :cond_7

    iget v8, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v1, v8, :cond_0

    :cond_7
    move v1, v7

    goto :goto_0
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const v6, 0x104004c

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "monthTypeface":Ljava/lang/String;
    const v6, 0x104004d

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v6, 0x104004e

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "dayTypeface":Ljava/lang/String;
    const v6, 0x105010a

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "monthTextSize":I
    const v6, 0x105010f

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "dayOfWeekTextSize":I
    const v6, 0x1050110

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .prologue
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDayClicked(I)Z
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "date":Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v2, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V

    .end local v0    # "date":Ljava/util/Calendar;
    :cond_2
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method

.method private onItemClicked(IZ)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->onNavigationClicked(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNavigationClicked(IZ)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x100

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "direction":I
    :goto_0
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v2, p0, v0, p2}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onNavigationClick(Landroid/widget/SimpleMonthView;IZ)V

    :cond_0
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .end local v0    # "direction":I
    :goto_1
    return v1

    :cond_1
    const/16 v2, 0x101

    if-ne p1, v2, :cond_2

    const/4 v0, -0x1

    .restart local v0    # "direction":I
    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3
    .param p1, "day"    # I
    .param p2, "today"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawButtons(Landroid/graphics/Canvas;)V

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    iget v5, p0, Landroid/widget/SimpleMonthView;->mNumWeeks:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v5

    add-int v0, v4, v5

    .local v0, "preferredHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    mul-int/lit8 v4, v4, 0x7

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v5

    add-int v1, v4, v5

    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .local v3, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .local v2, "resolvedHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 23
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v14

    .local v14, "paddedLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v16

    .local v16, "paddedTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v18

    sub-int v15, p1, v18

    .local v15, "paddedRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v18

    sub-int v13, p2, v18

    .local v13, "paddedBottom":I
    sub-int v18, v15, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v18, v13, v16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .local v11, "monthHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    div-int/lit8 v5, v18, 0x7

    .local v5, "cellWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .local v17, "prevDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .local v7, "dW":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .local v6, "dH":I
    sub-int v18, v11, v6

    div-int/lit8 v10, v18, 0x2

    .local v10, "iconTop":I
    sub-int v18, v5, v7

    div-int/lit8 v8, v18, 0x2

    .local v8, "iconLeft":I
    add-int v18, v8, v7

    add-int v19, v10, v6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v10, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mPrevHitArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    add-int v21, v14, v5

    add-int v22, v16, v11

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Rect;->set(IIII)V

    .end local v6    # "dH":I
    .end local v7    # "dW":I
    .end local v8    # "iconLeft":I
    .end local v10    # "iconTop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    .local v12, "nextDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .restart local v7    # "dW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .restart local v6    # "dH":I
    sub-int v18, v11, v6

    div-int/lit8 v10, v18, 0x2

    .restart local v10    # "iconTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    sub-int v19, v5, v7

    div-int/lit8 v19, v19, 0x2

    sub-int v9, v18, v19

    .local v9, "iconRight":I
    sub-int v18, v9, v7

    add-int v19, v10, v6

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v10, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mNextHitArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    sub-int v19, v15, v5

    const/16 v20, 0x0

    add-int v21, v16, v11

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .end local v6    # "dH":I
    .end local v7    # "dW":I
    .end local v9    # "iconRight":I
    .end local v10    # "iconTop":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v2, v4

    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v3, v4

    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    invoke-direct {p0, v2, v3}, Landroid/widget/SimpleMonthView;->getItemAtLocation(II)I

    move-result v1

    .local v1, "touchedItem":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    if-eq v4, v1, :cond_0

    iput v1, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    .end local v1    # "touchedItem":I
    :pswitch_1
    invoke-direct {p0, v2, v3}, Landroid/widget/SimpleMonthView;->getItemAtLocation(II)I

    move-result v0

    .local v0, "clickedItem":I
    invoke-direct {p0, v0, v6}, Landroid/widget/SimpleMonthView;->onItemClicked(IZ)Z

    .end local v0    # "clickedItem":I
    :pswitch_2
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reuse()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/SimpleMonthView;->mNumWeeks:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    return-void
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    const/16 v1, 0x18

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .prologue
    const/16 v1, 0x28

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .prologue
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0
.end method

.method setMonthParams(IIIIII)V
    .locals 8
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    :goto_0
    if-lez p5, :cond_1

    if-ge p6, v7, :cond_1

    iput p5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    :cond_1
    if-lez p6, :cond_2

    if-ge p6, v7, :cond_2

    if-lt p6, p5, :cond_2

    iput p6, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "today":Ljava/util/Calendar;
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_5

    add-int/lit8 v0, v1, 0x1

    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "day":I
    .end local v1    # "i":I
    .end local v2    # "today":Ljava/util/Calendar;
    :cond_4
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "today":Ljava/util/Calendar;
    :cond_5
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mNumWeeks:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "monthColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mPrevDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mNextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/SimpleMonthView;->mNextEnabled:Z

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .prologue
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setPrevEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/SimpleMonthView;->mPrevEnabled:Z

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-void
.end method
