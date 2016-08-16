.class public Landroid/app/AssistData$ViewNode;
.super Ljava/lang/Object;
.source "AssistData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AssistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# instance fields
.field mImpl:Landroid/app/AssistData$ViewNodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(ILandroid/app/AssistData$ViewNode;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "outNode"    # Landroid/app/AssistData$ViewNode;

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    return-void
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeTextImpl;->mHint:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mX:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeTextImpl;->mText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget-object v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mY:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    iget v0, v0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
