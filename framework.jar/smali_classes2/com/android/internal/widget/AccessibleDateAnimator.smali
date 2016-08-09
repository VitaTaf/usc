.class public Lcom/android/internal/widget/AccessibleDateAnimator;
.super Landroid/widget/ViewAnimator;
.source "AccessibleDateAnimator.java"


# instance fields
.field private mDateMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v1, 0x16

    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/android/internal/widget/AccessibleDateAnimator;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/AccessibleDateAnimator;->mDateMillis:J

    invoke-static {v2, v4, v5, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "flags":I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setDateMillis(J)V
    .locals 1
    .param p1, "dateMillis"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/widget/AccessibleDateAnimator;->mDateMillis:J

    return-void
.end method
