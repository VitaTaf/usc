.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "DismissView.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDismissAllInProgress:Z

.field private mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/DismissView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0106

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0f0105

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isButtonVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->isButtonStatic()Z

    move-result v0

    return v0
.end method

.method public isOnEmptySpace(FF)Z
    .locals 2
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    const v0, 0x7f0f0105

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissAllInProgress:Z

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showClearButton()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->showButton()V

    return-void
.end method
