.class Landroid/graphics/drawable/AnimatedVectorDrawable$2;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    # getter for: Landroid/graphics/drawable/AnimatedVectorDrawable;->mUpdateAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    # getter for: Landroid/graphics/drawable/AnimatedVectorDrawable;->mUpdateAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->access$100(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
