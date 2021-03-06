.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    const/16 v0, 0xf

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    return-void
.end method

.method private adjustPicker(I)V
    .locals 7
    .param p1, "step"    # I

    .prologue
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v4, 0x1e

    .local v4, "stepSize":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v6

    rem-int/lit8 v1, v6, 0xc

    .local v1, "initialValue":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x17

    .local v2, "maxValue":I
    const/4 v3, 0x0

    .local v3, "minValue":I
    :goto_0
    mul-int v6, v1, v4

    # invokes: Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I
    invoke-static {v6, p1}, Landroid/widget/RadialTimePickerView;->access$300(II)I

    move-result v6

    div-int v5, v6, v4

    .local v5, "steppedValue":I
    invoke-static {v5, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .local v0, "clampedValue":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    :goto_1
    return-void

    .end local v0    # "clampedValue":I
    .end local v2    # "maxValue":I
    .end local v3    # "minValue":I
    .end local v5    # "steppedValue":I
    :cond_0
    const/16 v2, 0xc

    .restart local v2    # "maxValue":I
    const/4 v3, 0x1

    .restart local v3    # "minValue":I
    goto :goto_0

    .end local v1    # "initialValue":I
    .end local v2    # "maxValue":I
    .end local v3    # "minValue":I
    .end local v4    # "stepSize":I
    :cond_1
    const/4 v4, 0x6

    .restart local v4    # "stepSize":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    .restart local v1    # "initialValue":I
    const/16 v2, 0x37

    .restart local v2    # "maxValue":I
    const/4 v3, 0x0

    .restart local v3    # "minValue":I
    goto :goto_0

    .restart local v0    # "clampedValue":I
    .restart local v5    # "steppedValue":I
    :cond_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_1
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 16
    .param p1, "virtualViewId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v8

    .local v8, "type":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v9

    .local v9, "value":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-lez v9, :cond_0

    const/16 v12, 0xc

    if-gt v9, v12, :cond_0

    const/4 v4, 0x1

    .local v4, "innerCircle":Z
    :goto_0
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .local v2, "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .local v5, "radius":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I
    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .end local v4    # "innerCircle":Z
    .local v3, "degrees":F
    :goto_2
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .local v6, "radians":D
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mXCenter:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1400(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    add-float v10, v12, v13

    .local v10, "xCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mYCenter:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1500(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    sub-float v11, v12, v13

    .local v11, "yCenter":F
    sub-float v12, v10, v5

    float-to-int v12, v12

    sub-float v13, v11, v5

    float-to-int v13, v13

    add-float v14, v10, v5

    float-to-int v14, v14

    add-float v15, v11, v5

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    .end local v6    # "radians":D
    .end local v10    # "xCenter":F
    .end local v11    # "yCenter":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "innerCircle":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto :goto_1

    .end local v2    # "centerRadius":F
    .end local v4    # "innerCircle":Z
    .end local v5    # "radius":F
    :cond_2
    const/4 v12, 0x2

    if-ne v8, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mCircleRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mTextInset:[I
    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .restart local v2    # "centerRadius":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I
    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->access$1300(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    .restart local v3    # "degrees":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mSelectorRadius:I
    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    .restart local v5    # "radius":F
    goto/16 :goto_2

    .end local v2    # "centerRadius":F
    .end local v3    # "degrees":F
    .end local v5    # "radius":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "centerRadius":F
    const/4 v3, 0x0

    .restart local v3    # "degrees":F
    const/4 v5, 0x0

    .restart local v5    # "radius":F
    goto/16 :goto_2
.end method

.method private getTypeFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "description":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .end local v0    # "description":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "description":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    add-int/lit8 v2, p2, 0x1

    .local v2, "nextValue":I
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0x17

    .local v1, "max":I
    :goto_0
    if-gt v2, v1, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    .end local v1    # "max":I
    .end local v2    # "nextValue":I
    :goto_1
    return v4

    .restart local v2    # "nextValue":I
    :cond_0
    const/16 v1, 0xc

    goto :goto_0

    .end local v2    # "nextValue":I
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .local v0, "current":I
    rem-int/lit8 v4, p2, 0x5

    sub-int v3, p2, v4

    .local v3, "snapValue":I
    add-int/lit8 v2, v3, 0x5

    .restart local v2    # "nextValue":I
    if-ge p2, v0, :cond_2

    if-le v2, v0, :cond_2

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    goto :goto_1

    .end local v0    # "current":I
    .end local v2    # "nextValue":I
    .end local v3    # "snapValue":I
    :cond_3
    const/high16 v4, -0x80000000

    goto :goto_1
.end method

.method private hour12To24(II)I
    .locals 2
    .param p1, "hour12"    # I
    .param p2, "amOrPm"    # I

    .prologue
    move v0, p1

    .local v0, "hour24":I
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private hour24To12(I)I
    .locals 1
    .param p1, "hour24"    # I

    .prologue
    const/16 v0, 0xc

    if-nez p1, :cond_1

    move p1, v0

    .end local p1    # "hour24":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "hour24":I
    :cond_1
    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xc

    goto :goto_0
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_0

    .local v0, "selected":Z
    :goto_0
    return v0

    .end local v0    # "selected":Z
    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_2

    .restart local v0    # "selected":Z
    :goto_1
    goto :goto_0

    .end local v0    # "selected":Z
    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "selected":Z
    goto :goto_0
.end method

.method private makeId(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x1

    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z
    invoke-static {v11}, Landroid/widget/RadialTimePickerView;->access$400(Landroid/widget/RadialTimePickerView;)Z

    move-result v10

    .local v10, "wasOnInnerCircle":Z
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I
    invoke-static {v11, p1, p2, v12}, Landroid/widget/RadialTimePickerView;->access$500(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v1

    .local v1, "degrees":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z
    invoke-static {v11}, Landroid/widget/RadialTimePickerView;->access$400(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    .local v5, "isOnInnerCircle":Z
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # setter for: Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z
    invoke-static {v11, v10}, Landroid/widget/RadialTimePickerView;->access$402(Landroid/widget/RadialTimePickerView;Z)Z

    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    const/4 v11, 0x0

    # invokes: Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I
    invoke-static {v1, v11}, Landroid/widget/RadialTimePickerView;->access$300(II)I

    move-result v11

    rem-int/lit16 v7, v11, 0x168

    .local v7, "snapDegrees":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v11}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I
    invoke-static {v11, v7, v5}, Landroid/widget/RadialTimePickerView;->access$600(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v3

    .local v3, "hour24":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v11}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v2, v3

    .local v2, "hour":I
    :goto_0
    invoke-direct {p0, v12, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    .end local v2    # "hour":I
    .end local v3    # "hour24":I
    .end local v7    # "snapDegrees":I
    .local v4, "id":I
    :goto_1
    return v4

    .end local v4    # "id":I
    .restart local v3    # "hour24":I
    .restart local v7    # "snapDegrees":I
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    goto :goto_0

    .end local v3    # "hour24":I
    :cond_1
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v11}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .local v0, "current":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I
    invoke-static {v11, v1}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v9

    .local v9, "touched":I
    iget-object v11, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # invokes: Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I
    invoke-static {v11, v7}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v8

    .local v8, "snapped":I
    sub-int v11, v0, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v12, v8, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v11, v12, :cond_2

    move v6, v0

    .local v6, "minute":I
    :goto_2
    const/4 v11, 0x2

    invoke-direct {p0, v11, v6}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    .restart local v4    # "id":I
    goto :goto_1

    .end local v4    # "id":I
    .end local v6    # "minute":I
    :cond_2
    move v6, v8

    .restart local v6    # "minute":I
    goto :goto_2

    .end local v0    # "current":I
    .end local v6    # "minute":I
    .end local v7    # "snapDegrees":I
    .end local v8    # "snapped":I
    .end local v9    # "touched":I
    :cond_3
    const/high16 v4, -0x80000000

    .restart local v4    # "id":I
    goto :goto_1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 7
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mShowHours:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    .local v3, "min":I
    :goto_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v2, 0x17

    .local v2, "max":I
    :goto_1
    move v1, v3

    .local v1, "i":I
    :goto_2
    if-gt v1, v2, :cond_4

    invoke-direct {p0, v4, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    :cond_0
    move v3, v4

    goto :goto_0

    .restart local v3    # "min":I
    :cond_1
    const/16 v2, 0xc

    goto :goto_1

    .end local v3    # "min":I
    :cond_2
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .local v0, "current":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_4

    invoke-direct {p0, v6, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    if-le v0, v1, :cond_3

    add-int/lit8 v4, v1, 0x5

    if-ge v0, v4, :cond_3

    invoke-direct {p0, v6, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    .end local v0    # "current":I
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x10

    if-ne p2, v4, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    .local v1, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    .local v2, "value":I
    if-ne v1, v3, :cond_1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .local v0, "hour":I
    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .end local v0    # "hour":I
    .end local v1    # "type":I
    .end local v2    # "value":I
    :goto_1
    return v3

    .restart local v1    # "type":I
    .restart local v2    # "value":I
    :cond_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    # getter for: Landroid/widget/RadialTimePickerView;->mAmOrPm:I
    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$800(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_1

    .end local v1    # "type":I
    .end local v2    # "value":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    .local v1, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    .local v2, "value":I
    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v3

    .local v3, "type":I
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v4

    .local v4, "value":I
    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "description":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v2

    .local v2, "selected":Z
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v1

    .local v1, "nextId":I
    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    goto :goto_0

    :sswitch_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
