.class Lcom/android/systemui/volume/VolumePanel$11;
.super Landroid/media/session/MediaController$Callback;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    return-void
.end method
