.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KPI-ORT-3"

    const-string v1, "PhoneWindowManager.onProposedRotationChanged start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KPI-ORT-7"

    const-string v1, "PhoneWindowManager.onProposedRotationChanged complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
