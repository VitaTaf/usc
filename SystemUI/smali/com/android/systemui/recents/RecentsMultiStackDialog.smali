.class public Lcom/android/systemui/recents/RecentsMultiStackDialog;
.super Landroid/app/DialogFragment;
.source "RecentsMultiStackDialog.java"


# instance fields
.field mAddStackDialogContent:Landroid/view/View;

.field mAddStackIntent:Landroid/content/Intent;

.field mAddStackRect:Landroid/graphics/Rect;

.field mCurrentDialogType:I

.field mFragmentManager:Landroid/app/FragmentManager;

.field mLauncherActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTargetStackIndex:Landroid/util/MutableInt;

.field mTaskToMove:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/view/View;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsMultiStackDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getDimensionFromEditText(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method private createAddStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const-string v1, "Add Stack - Enter new dimensions"

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f040062

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "windowRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0161

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0162

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0163

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0164

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Add Stack"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/RecentsMultiStackDialog$1;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/content/Context;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$2;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private createAddStackPickAppDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getLauncherApps()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mLauncherActivities:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "activityCount":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .local v1, "activityNames":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p4, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "Add Stack - Pick starting app"

    invoke-virtual {p3, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, -0x1

    new-instance v4, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$3;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Add Stack"

    new-instance v4, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;

    invoke-direct {v4, p0, p4}, Lcom/android/systemui/recents/RecentsMultiStackDialog$4;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {p3, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Skip"

    new-instance v4, Lcom/android/systemui/recents/RecentsMultiStackDialog$5;

    invoke-direct {v4, p0, p4}, Lcom/android/systemui/recents/RecentsMultiStackDialog$5;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {p3, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private createMoveTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAllStackInfos()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    const/4 v2, -0x1

    iput v2, v1, Landroid/util/MutableInt;->value:I

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTaskToMove:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getAllStacksDescriptions(Landroid/util/SparseArray;ILandroid/util/MutableInt;)[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "stackNames":[Ljava/lang/CharSequence;
    const-string v1, "Move Task to Stack"

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v1, v1, Landroid/util/MutableInt;->value:I

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$11;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Move Task"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/RecentsMultiStackDialog$12;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$13;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private createResizeStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const-string v1, "Resize Stack - Enter new dimensions"

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    .local v0, "stack":Landroid/app/ActivityManager$StackInfo;
    const v1, 0x7f040062

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0161

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0162

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0163

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    const v2, 0x7f0f0164

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->setDimensionInEditText(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mAddStackDialogContent:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Resize Stack"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$9;

    invoke-direct {v2, p0, p1, p4, v0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$9;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityManager$StackInfo;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$10;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private createResizeStackPickStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAllStackInfos()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iput v3, v1, Landroid/util/MutableInt;->value:I

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mStacks:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getAllStacksDescriptions(Landroid/util/SparseArray;ILandroid/util/MutableInt;)[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "stackNames":[Ljava/lang/CharSequence;
    const-string v1, "Resize Stack - Pick stack"

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTargetStackIndex:Landroid/util/MutableInt;

    iget v1, v1, Landroid/util/MutableInt;->value:I

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$6;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Resize Stack"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$7;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/android/systemui/recents/RecentsMultiStackDialog$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog$8;-><init>(Lcom/android/systemui/recents/RecentsMultiStackDialog;)V

    invoke-virtual {p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private getAllStacksDescriptions(Landroid/util/SparseArray;ILandroid/util/MutableInt;)[Ljava/lang/CharSequence;
    .locals 8
    .param p2, "targetStackId"    # I
    .param p3, "indexOfTargetStackId"    # Landroid/util/MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;I",
            "Landroid/util/MutableInt;",
            ")[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, "stacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "stackCount":I
    new-array v5, v4, [Ljava/lang/CharSequence;

    .local v5, "stackNames":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    .local v3, "stack":Landroid/app/ActivityManager$StackInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    .local v0, "b":Landroid/graphics/Rect;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tasks\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")-("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "desc":Ljava/lang/String;
    aput-object v1, v5, v2

    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    iget v6, v3, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v6, p2, :cond_0

    iput v2, p3, Landroid/util/MutableInt;->value:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v1    # "desc":Ljava/lang/String;
    :cond_1
    const-string v6, "No"

    goto :goto_1

    .end local v0    # "b":Landroid/graphics/Rect;
    .end local v3    # "stack":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    return-object v5
.end method

.method private getDimensionFromEditText(Landroid/view/View;I)I
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDimensionInEditText(Landroid/view/View;II)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "value"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v4, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_1
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->createAddStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->createAddStackPickAppDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->createMoveTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->createResizeStackPickStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->createResizeStackDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method showAddStackDialog()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsMultiStackDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method showMoveTaskDialog(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mTaskToMove:Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsMultiStackDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method showResizeStackDialog()V
    .locals 2

    .prologue
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mCurrentDialogType:I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsMultiStackDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsMultiStackDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsMultiStackDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
