.class public final Landroid/app/AssistData;
.super Ljava/lang/Object;
.source "AssistData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AssistData$ViewNode;,
        Landroid/app/AssistData$ViewNodeImpl;,
        Landroid/app/AssistData$ViewNodeTextImpl;,
        Landroid/app/AssistData$ViewAssistDataImpl;
    }
.end annotation


# static fields
.field public static final ASSIST_KEY:Ljava/lang/String; = "android:assist"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AssistData;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "AssistData"


# instance fields
.field final mActivityComponent:Landroid/content/ComponentName;

.field final mRootViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AssistData$ViewNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field mTmpExtras:Landroid/os/Bundle;

.field mTmpViewAssistDataImpl:Landroid/app/AssistData$ViewAssistDataImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/AssistData$1;

    invoke-direct {v0}, Landroid/app/AssistData$1;-><init>()V

    sput-object v0, Landroid/app/AssistData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/AssistData$ViewAssistDataImpl;

    invoke-direct {v0}, Landroid/app/AssistData$ViewAssistDataImpl;-><init>()V

    iput-object v0, p0, Landroid/app/AssistData;->mTmpViewAssistDataImpl:Landroid/app/AssistData$ViewAssistDataImpl;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/AssistData;->mTmpExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AssistData;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    .local v8, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v7}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "title":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/app/AssistData$ViewNodeImpl;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_0

    move-object v5, v9

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AssistData$ViewNodeImpl;-><init>(Landroid/app/AssistData;Landroid/view/View;IILjava/lang/CharSequence;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    .end local v2    # "view":Landroid/view/View;
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "root":Landroid/view/ViewRootImpl;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/AssistData$ViewAssistDataImpl;

    invoke-direct {v2}, Landroid/app/AssistData$ViewAssistDataImpl;-><init>()V

    iput-object v2, p0, Landroid/app/AssistData;->mTmpViewAssistDataImpl:Landroid/app/AssistData$ViewAssistDataImpl;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/app/AssistData;->mTmpExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/app/AssistData;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/AssistData$ViewNodeImpl;

    invoke-direct {v3, p1}, Landroid/app/AssistData$ViewNodeImpl;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAssistData(Landroid/os/Bundle;)Landroid/app/AssistData;
    .locals 1
    .param p0, "assistBundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "android:assist"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AssistData;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 6

    .prologue
    const-string v3, "AssistData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AssistData;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/AssistData$ViewNode;

    invoke-direct {v2}, Landroid/app/AssistData$ViewNode;-><init>()V

    .local v2, "node":Landroid/app/AssistData$ViewNode;
    invoke-virtual {p0}, Landroid/app/AssistData;->getWindowCount()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    const-string v3, "AssistData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v2}, Landroid/app/AssistData;->getWindowAt(ILandroid/app/AssistData$ViewNode;)V

    const-string v3, "  "

    invoke-virtual {p0, v3, v2}, Landroid/app/AssistData;->dump(Ljava/lang/String;Landroid/app/AssistData$ViewNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dump(Ljava/lang/String;Landroid/app/AssistData$ViewNode;)V
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/app/AssistData$ViewNode;

    .prologue
    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "View ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getLeft()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getTop()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getScrollX()I

    move-result v7

    .local v7, "scrollX":I
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getScrollY()I

    move-result v8

    .local v8, "scrollY":I
    if-nez v7, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Scroll: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    .local v2, "contentDescription":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Content description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getText()Ljava/lang/String;

    move-result-object v9

    .local v9, "text":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Text (sel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getTextSelectionStart()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getTextSelectionEnd()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getHint()Ljava/lang/String;

    move-result-object v5

    .local v5, "hint":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Hint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_5

    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Extras: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p2}, Landroid/app/AssistData$ViewNode;->getChildCount()I

    move-result v0

    .local v0, "NCHILDREN":I
    if-lez v0, :cond_6

    const-string v10, "AssistData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  Children:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "cprefix":Ljava/lang/String;
    new-instance v1, Landroid/app/AssistData$ViewNode;

    invoke-direct {v1}, Landroid/app/AssistData$ViewNode;-><init>()V

    .local v1, "cnode":Landroid/app/AssistData$ViewNode;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_6

    invoke-virtual {p2, v6, v1}, Landroid/app/AssistData$ViewNode;->getChildAt(ILandroid/app/AssistData$ViewNode;)V

    invoke-virtual {p0, v3, v1}, Landroid/app/AssistData;->dump(Ljava/lang/String;Landroid/app/AssistData$ViewNode;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "cnode":Landroid/app/AssistData$ViewNode;
    .end local v3    # "cprefix":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getWindowAt(ILandroid/app/AssistData$ViewNode;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "outNode"    # Landroid/app/AssistData$ViewNode;

    .prologue
    iget-object v0, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AssistData$ViewNodeImpl;

    iput-object v0, p2, Landroid/app/AssistData$ViewNode;->mImpl:Landroid/app/AssistData$ViewNodeImpl;

    return-void
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .local v2, "start":I
    iget-object v3, p0, Landroid/app/AssistData;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v3, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v3, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/app/AssistData;->mRootViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AssistData$ViewNodeImpl;

    invoke-virtual {v3, p1}, Landroid/app/AssistData$ViewNodeImpl;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "AssistData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flattened assist data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
