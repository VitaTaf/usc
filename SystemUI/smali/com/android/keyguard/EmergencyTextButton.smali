.class public Lcom/android/keyguard/EmergencyTextButton;
.super Landroid/widget/Button;
.source "EmergencyTextButton.java"


# static fields
.field private static emergencySmsEnabled:I


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/EmergencyTextButton;->emergencySmsEnabled:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/EmergencyTextButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyTextButton$1;-><init>(Lcom/android/keyguard/EmergencyTextButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyTextButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/EmergencyTextButton;->emergencySmsEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyTextButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyTextButton;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyTextButton;->updateEmergencyTextButton(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyTextButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyTextButton;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyTextButton;->takeEmergencyTextAction()V

    return-void
.end method

.method private takeEmergencyTextAction()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "emergency_sms_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateEmergencyTextButton(Z)V
    .locals 5
    .param p1, "inService"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/keyguard/EmergencyTextButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    .local v1, "simLocked":Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/EmergencyTextButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .end local v1    # "simLocked":Z
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/EmergencyTextButton;->setTextSize(IF)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyTextButton;->setVisibility(I)V

    :goto_2
    return-void

    .restart local v1    # "simLocked":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/EmergencyTextButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .end local v1    # "simLocked":Z
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyTextButton;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    sget v0, Lcom/android/keyguard/EmergencyTextButton;->emergencySmsEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyTextButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    sget v0, Lcom/android/keyguard/EmergencyTextButton;->emergencySmsEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyTextButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyTextButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/keyguard/EmergencyTextButton$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyTextButton$2;-><init>(Lcom/android/keyguard/EmergencyTextButton;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/EmergencyTextButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getServiceState()Z

    move-result v0

    .local v0, "inService":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/EmergencyTextButton;->updateEmergencyTextButton(Z)V

    return-void
.end method
