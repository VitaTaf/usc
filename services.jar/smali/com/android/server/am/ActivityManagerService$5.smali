.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->showLaunchWarningLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$cur:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$next:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cur:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$next:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/am/LaunchWarningWindow;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cur:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$5;->val$next:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/am/LaunchWarningWindow;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .local v0, "d":Landroid/app/Dialog;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move-object v1, v0

    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$5$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/ActivityManagerService$5$1;-><init>(Lcom/android/server/am/ActivityManagerService$5;Landroid/app/Dialog;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .end local v0    # "d":Landroid/app/Dialog;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
