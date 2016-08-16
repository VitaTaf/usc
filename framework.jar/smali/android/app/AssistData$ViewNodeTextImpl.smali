.class final Landroid/app/AssistData$ViewNodeTextImpl;
.super Ljava/lang/Object;
.source "AssistData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AssistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeTextImpl"
.end annotation


# instance fields
.field final mHint:Ljava/lang/String;

.field final mText:Ljava/lang/String;

.field final mTextSelectionEnd:I

.field final mTextSelectionStart:I


# direct methods
.method constructor <init>(Landroid/app/AssistData$ViewAssistDataImpl;)V
    .locals 2
    .param p1, "data"    # Landroid/app/AssistData$ViewAssistDataImpl;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mText:Ljava/lang/String;

    iget v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionStart:I

    iput v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionStart:I

    iget v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionEnd:I

    iput v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionEnd:I

    iget-object v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/AssistData$ViewAssistDataImpl;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mHint:Ljava/lang/String;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mHint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mTextSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AssistData$ViewNodeTextImpl;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
