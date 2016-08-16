.class final Landroid/app/AssistData$ViewNodeImpl;
.super Ljava/lang/Object;
.source "AssistData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AssistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeImpl"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field static final FLAGS_ACTIVATED:I = 0x40000000

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_LONG_CLICKABLE:I = 0x200000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc


# instance fields
.field final mChildren:[Landroid/app/AssistData$ViewNodeImpl;

.field final mClassName:Ljava/lang/String;

.field final mContentDescription:Ljava/lang/String;

.field final mExtras:Landroid/os/Bundle;

.field final mFlags:I

.field final mHeight:I

.field final mScrollX:I

.field final mScrollY:I

.field final mText:Landroid/app/AssistData$ViewNodeTextImpl;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method constructor <init>(Landroid/app/AssistData;Landroid/view/View;)V
    .locals 6
    .param p1, "assistData"    # Landroid/app/AssistData;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/AssistData$ViewNodeImpl;-><init>(Landroid/app/AssistData;Landroid/view/View;IILjava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Landroid/app/AssistData;Landroid/view/View;IILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "assistData"    # Landroid/app/AssistData;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/app/AssistData$ViewNodeImpl;->mX:I

    iput p4, p0, Landroid/app/AssistData$ViewNodeImpl;->mY:I

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    iput v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollX:I

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v6

    iput v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollY:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .local v2, "flags":I
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-nez v6, :cond_1

    or-int/lit16 v2, v2, 0x4000

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-nez v6, :cond_2

    or-int/lit8 v2, v2, 0x10

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_3

    or-int/lit8 v2, v2, 0x20

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-nez v6, :cond_4

    const/high16 v6, 0x4000000

    or-int/2addr v2, v6

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-nez v6, :cond_5

    or-int/lit8 v2, v2, 0x40

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v2, v6

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    if-nez v6, :cond_7

    const/high16 v6, 0x200000

    or-int/2addr v2, v6

    :cond_7
    instance-of v6, p2, Landroid/widget/Checkable;

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0x100

    move-object v6, p2

    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit16 v2, v2, 0x200

    :cond_8
    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mClassName:Ljava/lang/String;

    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mContentDescription:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/AssistData;->mTmpViewAssistDataImpl:Landroid/app/AssistData$ViewAssistDataImpl;

    .local v5, "viewData":Landroid/app/AssistData$ViewAssistDataImpl;
    iget-object v1, p1, Landroid/app/AssistData;->mTmpExtras:Landroid/os/Bundle;

    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p2, v5, v1}, Landroid/view/View;->onProvideAssistData(Landroid/view/ViewAssistData;Landroid/os/Bundle;)V

    iget-object v6, v5, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    if-nez v6, :cond_9

    iget-object v6, v5, Landroid/app/AssistData$ViewAssistDataImpl;->mHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_b

    :cond_9
    new-instance v6, Landroid/app/AssistData$ViewNodeTextImpl;

    invoke-direct {v6, v5}, Landroid/app/AssistData$ViewNodeTextImpl;-><init>(Landroid/app/AssistData$ViewAssistDataImpl;)V

    iput-object v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    new-instance v6, Landroid/app/AssistData$ViewAssistDataImpl;

    invoke-direct {v6}, Landroid/app/AssistData$ViewAssistDataImpl;-><init>()V

    iput-object v6, p1, Landroid/app/AssistData;->mTmpViewAssistDataImpl:Landroid/app/AssistData$ViewAssistDataImpl;

    :goto_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iput-object v1, p0, Landroid/app/AssistData$ViewNodeImpl;->mExtras:Landroid/os/Bundle;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p1, Landroid/app/AssistData;->mTmpExtras:Landroid/os/Bundle;

    :goto_2
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_f

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "NCHILDREN":I
    if-lez v0, :cond_d

    new-array v6, v0, [Landroid/app/AssistData$ViewNodeImpl;

    iput-object v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_e

    iget-object v6, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    new-instance v7, Landroid/app/AssistData$ViewNodeImpl;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/app/AssistData$ViewNodeImpl;-><init>(Landroid/app/AssistData;Landroid/view/View;)V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "NCHILDREN":I
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    .end local v5    # "viewData":Landroid/app/AssistData$ViewAssistDataImpl;
    :cond_a
    move-object v6, v7

    goto :goto_0

    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v5    # "viewData":Landroid/app/AssistData$ViewAssistDataImpl;
    :cond_b
    iput-object v7, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    goto :goto_1

    :cond_c
    iput-object v7, p0, Landroid/app/AssistData$ViewNodeImpl;->mExtras:Landroid/os/Bundle;

    goto :goto_2

    .restart local v0    # "NCHILDREN":I
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_d
    iput-object v7, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    .end local v0    # "NCHILDREN":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_e
    :goto_4
    return-void

    :cond_f
    iput-object v7, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    goto :goto_4
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/AssistData$ViewNodeTextImpl;

    invoke-direct {v2, p1}, Landroid/app/AssistData$ViewNodeTextImpl;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "NCHILDREN":I
    if-lez v0, :cond_1

    new-array v2, v0, [Landroid/app/AssistData$ViewNodeImpl;

    iput-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    new-instance v3, Landroid/app/AssistData$ViewNodeImpl;

    invoke-direct {v3, p1}, Landroid/app/AssistData$ViewNodeImpl;-><init>(Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "NCHILDREN":I
    .end local v1    # "i":I
    :cond_0
    iput-object v3, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    goto :goto_0

    .restart local v0    # "NCHILDREN":I
    :cond_1
    iput-object v3, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    :cond_2
    return-void
.end method


# virtual methods
.method writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mX:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mY:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollX:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mScrollY:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mWidth:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mHeight:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mText:Landroid/app/AssistData$ViewNodeTextImpl;

    invoke-virtual {v2, p1}, Landroid/app/AssistData$ViewNodeTextImpl;->writeToParcel(Landroid/os/Parcel;)V

    :goto_0
    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    array-length v0, v2

    .local v0, "NCHILDREN":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/AssistData$ViewNodeImpl;->mChildren:[Landroid/app/AssistData$ViewNodeImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/app/AssistData$ViewNodeImpl;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "NCHILDREN":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
