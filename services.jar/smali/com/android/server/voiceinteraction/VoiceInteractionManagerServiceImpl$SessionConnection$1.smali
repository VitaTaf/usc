.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "VoiceInteractionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;->mHaveAssistData:Z

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    iput-object p2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;->mAssistData:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$SessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, p2}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
