.class public final Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/QSTileView;
.source "SignalTileView.java"


# static fields
.field public static CHATTY:Z

.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mBaseIconWidth:I

.field private mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mDoubleWideIconWidth:I

.field private mIconFrame:Landroid/widget/FrameLayout;

.field private mIconHeight:I

.field private mInImageView:Landroid/widget/ImageView;

.field private mOutImageView:Landroid/widget/ImageView;

.field private mOverlayDoubleWideImageView:Landroid/widget/ImageView;

.field private mOverlayImageView:Landroid/widget/ImageView;

.field private mPhoneLabelView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mSignalImageView:Landroid/widget/ImageView;

.field private mSimStatusImageView:Landroid/widget/ImageView;

.field private mWideOverlayIconStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/SignalTileView;->CHATTY:Z

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    sget-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f020098

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mInImageView:Landroid/widget/ImageView;

    const v0, 0x7f02009b

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOutImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/qs/SignalTileView;->addPhoneLabelView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mPhoneLabelView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    return-void
.end method

.method private addPhoneLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, "label":Landroid/widget/TextView;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v1, Lcom/android/systemui/qs/SignalTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addTrafficView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "icon"    # I

    .prologue
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, "traffic":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private layoutIndicator(Landroid/view/View;)V
    .locals 5
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_0

    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "left":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    .end local v0    # "isRtl":Z
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isRtl":Z
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .restart local v1    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v2, v1, v3

    .restart local v2    # "right":I
    goto :goto_1
.end method

.method private layoutPhoneLabel(Landroid/view/View;)V
    .locals 5
    .param p1, "label"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_0

    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v2, v1, v3

    .local v2, "right":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    .end local v0    # "isRtl":Z
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isRtl":Z
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .restart local v2    # "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1    # "left":I
    goto :goto_1
.end method

.method private setVisibility(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "visible"    # Z

    .prologue
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "newAlpha":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    :goto_1
    return-void

    .end local v0    # "newAlpha":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "newAlpha":F
    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p3, :cond_2

    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x13

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    iget v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v0, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v1, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mBaseIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDoubleWideIconWidth:I

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .local v1, "s":Lcom/android/systemui/qs/QSTile$SignalState;
    sget-boolean v3, Lcom/android/systemui/qs/SignalTileView;->CHATTY:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr.SignalTileView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStateChanged: QSTile.SignalState={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile$SignalState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/SignalTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayImageView:Landroid/widget/ImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayWideIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->isShown()Z

    move-result v2

    .local v2, "shown":Z
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mInImageView:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOutImageView:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->simStatusIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->roamingIconId:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    :goto_5
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityIconId:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    :goto_6
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->dataActivityWideIconId:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    :goto_7
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mPhoneLabelView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shown":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlayDoubleWideImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_2

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_3

    .restart local v2    # "shown":Z
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSimStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mRoamingAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mDataActivityDoubleWideAnimatedImageView:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto :goto_7
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/QSTileView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mInImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOutImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mPhoneLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutPhoneLabel(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSTileView;->onMeasure(II)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "hs":I
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "ws":I
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mInImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/ImageView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/ImageView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "label_hs":I
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mPhoneLabelView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method
