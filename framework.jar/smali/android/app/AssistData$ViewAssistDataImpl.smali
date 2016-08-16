.class final Landroid/app/AssistData$ViewAssistDataImpl;
.super Landroid/view/ViewAssistData;
.source "AssistData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AssistData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewAssistDataImpl"
.end annotation


# instance fields
.field mHint:Ljava/lang/CharSequence;

.field mText:Ljava/lang/CharSequence;

.field mTextSelectionEnd:I

.field mTextSelectionStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/view/ViewAssistData;-><init>()V

    iput v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionStart:I

    iput v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionEnd:I

    return-void
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionStart:I

    return v0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionEnd:I

    iput v0, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionStart:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .prologue
    iput-object p1, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionStart:I

    iput p3, p0, Landroid/app/AssistData$ViewAssistDataImpl;->mTextSelectionEnd:I

    return-void
.end method
