.class Lcom/android/systemui/recents/RecentsMultiStackDialog$10;
.super Ljava/lang/Object;
.source "RecentsMultiStackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsMultiStackDialog;->createResizeStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$10;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog$10;->this$0:Lcom/android/systemui/recents/RecentsMultiStackDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->dismiss()V

    return-void
.end method
