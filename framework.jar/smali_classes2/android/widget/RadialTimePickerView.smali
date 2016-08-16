.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$IntHolder;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final CENTER_RADIUS:I = 0x2

.field private static final COS_30:[F

.field private static final DEBUG:Z = false

.field private static final DEBUG_COLOR:I = 0x20ff0000

.field private static final DEBUG_STROKE_WIDTH:I = 0x2

.field private static final DEBUG_TEXT_COLOR:I = 0x60ff0000

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final FADE_IN_DURATION:I = 0x1f4

.field private static final FADE_OUT_DURATION:I = 0x1f4

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_NUMBERS:[I

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private final mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:F

.field private final mColorSelector:[[I

.field private mDisabledAlpha:I

.field private mHalfwayHypotenusePoint:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private final mLineLength:[I

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxHypotenuseForOuterNumber:I

.field private mMinHypotenuseForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mNumbersRadiusMultiplier:[F

.field private mNumbersTextColor:Landroid/content/res/ColorStateList;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private mOuterTextMinutes:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintDebug:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectionRadius:[I

.field private final mSelectionRadiusMultiplier:F

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mShowHours:Z

.field private final mTextSize:[F

.field private final mTextSizeMultiplier:[F

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:F

.field private mYCenter:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    sput-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v3, 0x169

    new-array v3, v3, [I

    sput-object v3, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .local v0, "angle":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    sget-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    sget-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v14, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v14, 0x2

    const/4 v15, 0x3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    const-class v15, Landroid/graphics/Paint;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v14, 0x2

    const/4 v15, 0x3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v14, 0x2

    const/4 v15, 0x3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    const-class v15, Landroid/widget/RadialTimePickerView$IntHolder;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Landroid/widget/RadialTimePickerView$IntHolder;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v14, 0x2

    const/16 v15, 0xc

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v14, 0x2

    const/16 v15, 0xc

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/16 v14, 0xc

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    const/16 v14, 0xc

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    const/4 v14, 0x3

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v14, 0x3

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .local v9, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x1010033

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v9, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v14, "sans-serif"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v14, v14

    if-ge v7, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    new-instance v15, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v16, 0xff

    invoke-direct/range {v15 .. v16}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v15, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    array-length v14, v14

    if-ge v7, v14, :cond_2

    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v14, v14, v7

    array-length v14, v14

    if-ge v8, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v14, v14, v7

    new-instance v15, Landroid/widget/RadialTimePickerView$IntHolder;

    const/16 v16, 0xff

    invoke-direct/range {v15 .. v16}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    aput-object v15, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v8    # "j":I
    :cond_2
    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mNumbersTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x0

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x1

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .local v12, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v14, 0x28

    invoke-static {v14}, Landroid/util/StateSet;->get(I)[I

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .local v11, "selectorActivatedColor":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mNumbersTextColor:Landroid/content/res/ColorStateList;

    const/16 v15, 0x28

    invoke-static {v15}, Landroid/util/StateSet;->get(I)[I

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v13

    .local v13, "textActivatedColor":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v11, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aput v13, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aput v11, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    aput v11, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x1

    aput v13, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x2

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    const/4 v15, 0x1

    aget-object v14, v14, v15

    const/4 v15, 0x2

    aput v11, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v15, 0x4

    const v16, 0x10600fb

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    new-instance v14, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    const v14, 0x105008f

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .local v4, "calendar":Ljava/util/Calendar;
    const/16 v14, 0xb

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "currentHour":I
    const/16 v14, 0xc

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .local v6, "currentMinute":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)[F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RadialTimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    return v0
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .prologue
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v8

    mul-float v3, v0, v2

    .local v3, "innerNumbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    iget v4, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v6, v0, v8

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .end local v3    # "innerNumbersRadius":F
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v7

    mul-float v1, v0, v2

    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    aget v4, v4, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float v19, v5, v10

    .local v19, "outerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float v17, v5, v10

    .local v17, "innerRadius":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v10, v1, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    sub-float v6, v5, v19

    .local v6, "left":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    sub-float v7, v5, v19

    .local v7, "top":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    add-float v8, v5, v19

    .local v8, "right":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    add-float v9, v5, v19

    .local v9, "bottom":F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    sub-float v6, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    sub-float v7, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    add-float v8, v5, v10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    add-float v9, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v5

    int-to-float v13, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v5

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mPaintDebug:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v5, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "selected":Ljava/lang/String;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v10, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v18, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v22, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .local v20, "paint":Landroid/graphics/Paint;
    const/high16 v5, 0x60ff0000

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v23

    .local v23, "width":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float v16, v5, v10

    .local v16, "height":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    div-int/lit8 v10, v23, 0x2

    int-to-float v10, v10

    sub-float v24, v5, v10

    .local v24, "x":F
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v10, v16

    add-float v25, v5, v10

    .local v25, "y":F
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "selectorPath"    # Landroid/graphics/Path;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .local v12, "selectionRadians":D
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v14, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v3, v14

    int-to-float v3, v3

    add-float v5, v2, v3

    .local v5, "pointX":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v3, v3, p2

    int-to-double v14, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v3, v14

    int-to-float v3, v3

    sub-float v6, v2, v3

    .local v6, "pointY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v9, v2, v3

    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    .local v8, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v7, v2, v3

    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, p2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, p2

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    .local v11, "shouldDrawDot":Z
    :goto_0
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v2, v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mLineLength:[I

    aget v2, v2, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v3, v3, p2

    sub-int v10, v2, v3

    .local v10, "lineLength":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    int-to-double v14, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v3, v14

    int-to-float v3, v3

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    int-to-double v14, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-int v3, v14

    int-to-float v3, v3

    sub-float v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mColorSelector:[[I

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    rem-int/lit8 v3, p2, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget-object v7, v2, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .end local v10    # "lineLength":I
    .end local v11    # "shouldDrawDot":Z
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textX"    # [F
    .param p6, "textY"    # [F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "alpha"    # I
    .param p9, "showActivated"    # Z
    .param p10, "activatedDegrees"    # I
    .param p11, "activatedOnly"    # Z

    .prologue
    move-object/from16 v0, p7

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p7

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, p10

    int-to-float v9, v0

    const/high16 v10, 0x41f00000    # 30.0f

    div-float v5, v9, v10

    .local v5, "activatedIndex":F
    float-to-int v4, v5

    .local v4, "activatedFloor":I
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    rem-int/lit8 v3, v9, 0xc

    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v9, 0xc

    if-ge v7, v9, :cond_4

    if-eq v4, v7, :cond_0

    if-ne v3, v7, :cond_1

    :cond_0
    const/4 v2, 0x1

    .local v2, "activated":Z
    :goto_1
    if-eqz p11, :cond_2

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v2    # "activated":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "activated":Z
    :cond_2
    if-eqz p9, :cond_3

    if-eqz v2, :cond_3

    const/16 v9, 0x20

    :goto_3
    or-int/lit8 v8, v9, 0x8

    .local v8, "stateMask":I
    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mNumbersTextColor:Landroid/content/res/ColorStateList;

    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .local v6, "color":I
    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p8

    invoke-direct {p0, v6, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v9

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v9, p4, v7

    aget v10, p5, v7

    aget v11, p6, v7

    move-object/from16 v0, p7

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v2    # "activated":Z
    :cond_4
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0

    :cond_1
    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .prologue
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    sub-float v10, p2, v10

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    sub-float v11, p2, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    sub-float v11, p1, v11

    iget v12, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    sub-float v12, p1, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .local v2, "hypotenuse":D
    if-eqz p3, :cond_0

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    float-to-double v10, v10

    cmpl-double v10, v2, v10

    if-lez v10, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_5

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    :cond_1
    :goto_1
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    sub-float v10, p2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, "opposite":F
    float-to-double v10, v7

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v0, v10

    .local v0, "degrees":I
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    cmpl-float v10, p1, v10

    if-lez v10, :cond_8

    const/4 v8, 0x1

    .local v8, "rightSide":Z
    :goto_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    cmpg-float v10, p2, v10

    if-gez v10, :cond_9

    const/4 v9, 0x1

    .local v9, "topSide":Z
    :goto_3
    if-eqz v8, :cond_b

    if-eqz v9, :cond_a

    rsub-int/lit8 v0, v0, 0x5a

    goto :goto_0

    .end local v0    # "degrees":I
    .end local v7    # "opposite":F
    .end local v8    # "rightSide":Z
    .end local v9    # "topSide":Z
    :cond_2
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    int-to-double v10, v10

    cmpg-double v10, v2, v10

    if-lez v10, :cond_3

    if-nez p3, :cond_4

    :cond_3
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_4

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v11, v11, v4

    mul-float v5, v10, v11

    .local v5, "length":F
    float-to-double v10, v5

    sub-double v10, v2, v10

    double-to-int v1, v10

    .local v1, "distanceToNumber":I
    iget v10, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v12, v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    .local v6, "maxAllowedDistance":I
    neg-int v10, v6

    if-lt v1, v10, :cond_6

    if-eqz p3, :cond_1

    if-le v1, v6, :cond_1

    :cond_6
    const/4 v0, -0x1

    goto :goto_0

    .end local v1    # "distanceToNumber":I
    .end local v4    # "index":I
    .end local v5    # "length":F
    .end local v6    # "maxAllowedDistance":I
    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    .restart local v0    # "degrees":I
    .restart local v7    # "opposite":F
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "rightSide":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "topSide":Z
    :cond_a
    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_0

    :cond_b
    if-eqz v9, :cond_c

    add-int/lit16 v0, v0, 0x10e

    goto/16 :goto_0

    :cond_c
    rsub-int v0, v0, 0x10e

    goto/16 :goto_0
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 15
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const/high16 v3, 0x3e800000    # 0.25f

    .local v3, "delayMultiplier":F
    const/high16 v11, 0x3f800000    # 1.0f

    .local v11, "transitionDurationMultiplier":F
    const/high16 v10, 0x3fa00000    # 1.25f

    .local v10, "totalDurationMultiplier":F
    const/16 v9, 0x271

    .local v9, "totalDuration":I
    const v4, 0x3e4ccccd    # 0.2f

    .local v4, "delayPoint":F
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    .local v6, "kf0":Landroid/animation/Keyframe;
    const v12, 0x3e4ccccd    # 0.2f

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    .local v7, "kf1":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v0, p2

    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .local v8, "kf2":Landroid/animation/Keyframe;
    const-string v12, "value"

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {p0, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x271

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    .prologue
    const-string v1, "value"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    const/16 v0, 0xc

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .local v6, "wasOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v7}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .local v0, "degrees":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .local v2, "selectionDegrees":[I
    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v9, :cond_8

    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .local v3, "snapDegrees":I
    aget v9, v2, v7

    if-ne v9, v3, :cond_2

    aget v9, v2, v10

    if-ne v9, v3, :cond_2

    iget-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v6, v9, :cond_7

    :cond_2
    move v5, v8

    .local v5, "valueChanged":Z
    :goto_1
    aput v3, v2, v7

    aput v3, v2, v10

    const/4 v4, 0x0

    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    .local v1, "newValue":I
    :goto_2
    if-nez v5, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_0

    :cond_3
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v7, v4, v1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    if-nez v5, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_6
    move v7, v8

    goto :goto_0

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_7
    move v5, v7

    goto :goto_1

    .end local v3    # "snapDegrees":I
    :cond_8
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v9

    rem-int/lit16 v3, v9, 0x168

    .restart local v3    # "snapDegrees":I
    aget v9, v2, v8

    if-eq v9, v3, :cond_9

    move v5, v8

    .restart local v5    # "valueChanged":Z
    :goto_3
    aput v3, v2, v8

    const/4 v4, 0x1

    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .restart local v1    # "newValue":I
    goto :goto_2

    .end local v1    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_9
    move v5, v7

    goto :goto_3
.end method

.method private initData()V
    .locals 10

    .prologue
    const v9, 0x10500a8

    const/16 v3, 0xff

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v6, 0x1050103

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v6, 0x1050106

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    const v6, 0x1050102

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v8

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v6, 0x1050105

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v8

    :goto_1
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v7

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v6, 0x1050104

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v7

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_2

    move v0, v3

    .local v0, "hoursAlpha":I
    :goto_2
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v5, v4

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v5, v4

    aget-object v5, v5, v7

    invoke-virtual {v5, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v5, v5, v4

    aget-object v5, v5, v8

    invoke-virtual {v5, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v5, :cond_3

    move v1, v4

    .local v1, "minutesAlpha":I
    :goto_3
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v3, v3, v7

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v3, v3, v7

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v3, v3, v7

    aget-object v3, v3, v8

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    return-void

    .end local v0    # "hoursAlpha":I
    .end local v1    # "minutesAlpha":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto/16 :goto_0

    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    const v6, 0x1050104

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    aput v6, v5, v4

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    .restart local v0    # "hoursAlpha":I
    :cond_3
    move v1, v3

    goto :goto_3
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .local v0, "count":I
    const/16 v2, 0x8

    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v3, v4, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x6

    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    const/4 v2, 0x7

    :goto_1
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 8
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/16 v7, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    rem-int/lit8 v5, p1, 0xc

    mul-int/lit8 v1, v5, 0x1e

    .local v1, "degrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v1, v5, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v6, 0x2

    aput v1, v5, v6

    if-eqz p1, :cond_0

    rem-int/lit8 v5, p1, 0x18

    if-ge v5, v7, :cond_4

    :cond_0
    move v0, v4

    .local v0, "amOrPm":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v5, :cond_5

    if-lt p1, v3, :cond_5

    if-gt p1, v7, :cond_5

    move v2, v3

    .local v2, "isOnInnerCircle":Z
    :goto_1
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v2, :cond_2

    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v3, v4, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_3
    return-void

    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    move v0, v3

    goto :goto_0

    .restart local v0    # "amOrPm":I
    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    const/16 v2, 0x1e

    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p0, v0

    :goto_0
    return p0

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1e

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v5

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlphaSelector:[[Landroid/widget/RadialTimePickerView$IntHolder;

    aget-object v1, v1, v3

    aget-object v1, v1, v6

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    aget v0, v1, v0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    :goto_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v10

    .local v10, "hoursAlpha":I
    if-lez v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v3, 0x0

    aget-object v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v3, 0x0

    aget-object v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v2, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    move-result v19

    .local v19, "minutesAlpha":I
    if-lez v19, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;)V

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v3, 0x1

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v3, 0x1

    aget-object v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v3, 0x1

    aget-object v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v3, 0x1

    aget-object v18, v2, v3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v22}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    const/4 v3, 0x1

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/RadialTimePickerView;->mOuterTextMinutes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v3, 0x1

    aget-object v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v3, 0x1

    aget-object v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v3, 0x1

    aget-object v18, v2, v3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v3, 0x1

    aget v21, v2, v3

    const/16 v22, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v22}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v10    # "hoursAlpha":I
    .end local v19    # "minutesAlpha":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0

    .restart local v10    # "hoursAlpha":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinHypotenuseForInnerNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxHypotenuseForOuterNumber:I

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v1, v1, v3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mNumbersRadiusMultiplier:[F

    aget v2, v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayHypotenusePoint:I

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    aput v1, v0, v5

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[F

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSizeMultiplier:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    aget v1, v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadius:[I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:F

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v2, 0x0

    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .local v1, "autoAdvance":Z
    if-nez v0, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_3
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_4
    if-ne v0, v6, :cond_3

    const/4 v1, 0x1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    rem-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    goto :goto_0
.end method
