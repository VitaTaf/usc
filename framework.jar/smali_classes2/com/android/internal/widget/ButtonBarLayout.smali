.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private final mAllowStacked:Z

.field private final mSpacer:Landroid/view/View;

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacked:Z

    const v0, 0x10203e7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mSpacer:Landroid/view/View;

    return-void
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2

    const/4 v2, 0x5

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mSpacer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ButtonBarLayout;->mSpacer:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x50

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mStacked:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacked:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    .local v0, "measuredWidth":I
    const/high16 v2, -0x1000000

    and-int v1, v0, v2

    .local v1, "measuredWidthState":I
    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .end local v0    # "measuredWidth":I
    .end local v1    # "measuredWidthState":I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    if-le p1, p3, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mStacked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    return-void
.end method
