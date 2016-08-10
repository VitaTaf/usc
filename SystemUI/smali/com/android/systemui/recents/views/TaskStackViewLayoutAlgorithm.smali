.class public Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# static fields
.field static px:[F

.field static xp:[F


# instance fields
.field mBetweenAffiliationOffset:I

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialScrollP:F

.field mMaxScrollP:F

.field mMinScrollP:F

.field mStackRect:Landroid/graphics/Rect;

.field mStackVisibleRect:Landroid/graphics/Rect;

.field mTaskProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mTaskRect:Landroid/graphics/Rect;

.field mViewRect:Landroid/graphics/Rect;

.field mWithinAffiliationOffset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    return-void
.end method

.method public static initializeCurve()V
    .locals 16

    .prologue
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    if-eqz v9, :cond_1

    .local v0, "dx":[F
    .local v2, "fx":[F
    .local v3, "p":F
    .local v4, "pLength":F
    .local v5, "pStep":I
    .local v6, "step":F
    .local v7, "x":F
    .local v8, "xStep":I
    :cond_0
    return-void

    .end local v0    # "dx":[F
    .end local v2    # "fx":[F
    .end local v3    # "p":F
    .end local v4    # "pLength":F
    .end local v5    # "pStep":I
    .end local v6    # "step":F
    .end local v7    # "x":F
    .end local v8    # "xStep":I
    :cond_1
    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/16 v9, 0xfb

    new-array v2, v9, [F

    .restart local v2    # "fx":[F
    const v6, 0x3b83126f    # 0.004f

    .restart local v6    # "step":F
    const/4 v7, 0x0

    .restart local v7    # "x":F
    const/4 v8, 0x0

    .restart local v8    # "xStep":I
    :goto_0
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_2

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v9

    aput v9, v2, v8

    add-float/2addr v7, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "pLength":F
    const/16 v9, 0xfb

    new-array v0, v9, [F

    .restart local v0    # "dx":[F
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v0, v9

    const/4 v8, 0x1

    :goto_1
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_3

    aget v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    aget v10, v2, v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    aput v9, v0, v8

    aget v9, v0, v8

    add-float/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "p":F
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v8, 0x1

    :goto_2
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_4

    aget v9, v0, v8

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v9

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aput v3, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    const/4 v3, 0x0

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v5, 0x0

    .restart local v5    # "pStep":I
    :goto_3
    const/16 v9, 0xfa

    if-ge v5, v9, :cond_0

    :goto_4
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_5

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v9, v9, v8

    cmpl-float v9, v9, v3

    if-lez v9, :cond_6

    :cond_5
    if-nez v8, :cond_7

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    aput v10, v9, v5

    :goto_5
    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    sub-float v9, v3, v9

    sget-object v10, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v10, v10, v8

    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    div-float v1, v9, v10

    .local v1, "fraction":F
    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    add-float/2addr v9, v1

    mul-float v7, v9, v6

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aput v7, v9, v5

    goto :goto_5
.end method

.method static logFunc(F)F
    .locals 6
    .param p0, "x"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->reverse(F)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x453b8000    # 3000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method static reverse(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    neg-float v0, p0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 21
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v17

    .local v17, "taskHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v4

    .local v4, "pAtBottomOfStackRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v12

    .local v12, "pWithinAffiliateTop":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v13

    .local v13, "scale":F
    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .local v14, "scaleYOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v18, v18, v14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v12

    sub-float v11, v4, v12

    .local v11, "pWithinAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v6, v4, v18

    .local v6, "pBetweenAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v10, v4, v18

    .local v10, "pTaskHeightOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v8, v4, v18

    .local v8, "pNavBarOffset":F
    const/4 v7, 0x0

    .local v7, "pDismissAllButtonOffset":F
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "pAtBackMostCardTop":F
    move v5, v3

    .local v5, "pAtFrontMostCardTop":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v2, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v18

    if-eqz v18, :cond_2

    move v9, v6

    .local v9, "pPeek":F
    :goto_2
    add-float/2addr v5, v9

    .end local v9    # "pPeek":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-float v18, v5, v7

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v10

    sub-float v19, v19, v8

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    :cond_5
    const v18, 0x3f533333    # 0.825f

    sub-float v18, v5, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .local v4, "widthPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .local v0, "heightPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .local v2, "size":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .local v1, "left":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v7, v1, v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "visibleTaskPct":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    new-instance v17, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    :goto_0
    return-object v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v16

    .local v16, "taskHeight":I
    const/4 v8, 0x1

    .local v8, "numVisibleTasks":I
    const/4 v9, 0x1

    .local v9, "numVisibleThumbnails":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .local v11, "progress":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v10

    .local v10, "prevScreenY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-gez v17, :cond_2

    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    new-instance v17, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    goto :goto_0

    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v6

    .local v6, "isFrontMostTaskInGroup":Z
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v12

    .local v12, "scaleAtP":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .local v13, "scaleYOffsetAtP":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v17

    add-int v14, v17, v13

    .local v14, "screenY":I
    sub-int v17, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/4 v4, 0x1

    .local v4, "hasVisibleThumbnail":Z
    :goto_2
    if-eqz v4, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v10, v14

    .end local v4    # "hasVisibleThumbnail":Z
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .restart local v12    # "scaleAtP":F
    .restart local v13    # "scaleYOffsetAtP":I
    .restart local v14    # "screenY":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .restart local v4    # "hasVisibleThumbnail":Z
    :cond_5
    move v7, v5

    .local v7, "j":I
    :goto_4
    if-ltz v7, :cond_1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-ltz v17, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .end local v4    # "hasVisibleThumbnail":Z
    .end local v7    # "j":I
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_6
    if-nez v6, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method curveProgressToScale(F)F
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const v1, 0x3e4ccccc    # 0.19999999f

    .local v1, "scaleRange":F
    mul-float v2, p1, v1

    add-float/2addr v0, v2

    .local v0, "scale":F
    goto :goto_0
.end method

.method curveProgressToScreenY(F)I
    .locals 8
    .param p1, "p"    # F

    .prologue
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    :goto_0
    return v6

    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v3, p1, v6

    .local v3, "pIndex":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .local v1, "pFloorIndex":I
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .local v0, "pCeilIndex":I
    const/4 v5, 0x0

    .local v5, "xFraction":F
    const/16 v6, 0xfa

    if-ge v1, v6, :cond_2

    if-eq v0, v1, :cond_2

    int-to-float v6, v1

    sub-float v6, v3, v6

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float v2, v6, v7

    .local v2, "pFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v0

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float v5, v6, v2

    .end local v2    # "pFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v1

    add-float v4, v6, v5

    .local v4, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_0
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    sub-float v3, p1, p2

    .local v3, "pTaskRelative":F
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .local v2, "pBounded":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-object p3

    :cond_0
    cmpg-float v6, v3, v7

    if-gez v6, :cond_1

    if-eqz p4, :cond_1

    iget v6, p4, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gtz v6, :cond_1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v4

    .local v4, "scale":F
    sub-float v6, v8, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v5, v6

    .local v5, "scaleYOffset":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .local v1, "minZ":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .local v0, "maxZ":I
    iput v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    iput v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v6, v1

    int-to-float v7, v1

    sub-int v8, v0, v1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    const/4 v6, 0x1

    iput-boolean v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .end local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    return-object p3

    .restart local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object p3

    goto :goto_0
.end method

.method public getUntransformedTaskViewSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "tvSize":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method screenYToCurveProgress(I)F
    .locals 8
    .param p1, "screenY"    # I

    .prologue
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .local v1, "x":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .end local v1    # "x":F
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "x":F
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v5, v1, v6

    .local v5, "xIndex":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .local v3, "xFloorIndex":I
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .local v2, "xCeilIndex":I
    const/4 v0, 0x0

    .local v0, "pFraction":F
    const/16 v6, 0xfa

    if-ge v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    int-to-float v6, v3

    sub-float v6, v5, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    div-float v4, v6, v7

    .local v4, "xFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    .end local v4    # "xFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0
.end method
