.class Landroid/graphics/drawable/AnimatedVectorDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
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
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    return-void
.end method
