.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mCameraPreview:Landroid/view/View;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIndicationText:Landroid/widget/TextView;

.field private mLastUnlockIconRes:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mPhonePreview:Landroid/view/View;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLastUnlockIconRes:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    return-void
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .local v0, "currentUserHasTrust":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleTrustCircleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f0c014d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    return-void
.end method

.method private inflatePreviews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v7, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .local v4, "userId":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .local v1, "disabledFlags":I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .local v0, "disabledBecauseKeyguardSecure":Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .end local v0    # "disabledBecauseKeyguardSecure":Z
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "disabledFlags":I
    .restart local v4    # "userId":I
    :cond_2
    move v0, v5

    goto :goto_0

    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isPhoneVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 4
    .param p1, "element"    # Landroid/view/View;
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateCameraVisibility()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .local v1, "visible":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "visible":Z
    :cond_1
    move v1, v2

    goto :goto_1

    .restart local v1    # "visible":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateLockIcon()V
    .locals 9

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .local v6, "visible":Z
    :goto_0
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :goto_1
    if-nez v6, :cond_2

    :goto_2
    return-void

    .end local v6    # "visible":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "visible":Z
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    const v3, 0x108030f

    .local v3, "iconRes":I
    :goto_3
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLastUnlockIconRes:I

    if-eq v7, v3, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "iconHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "iconWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-ne v7, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-eq v7, v4, :cond_4

    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;

    invoke-direct {v1, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconHeight":I
    .end local v4    # "iconWidth":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    .local v5, "trustManaged":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIconClickability()V

    goto :goto_2

    .end local v3    # "iconRes":I
    .end local v5    # "trustManaged":Z
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v7

    if-eqz v7, :cond_7

    const v3, 0x7f02003f

    goto :goto_3

    :cond_7
    const v3, 0x7f02003e

    goto :goto_3
.end method

.method private updateLockIconClickability()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .local v1, "clickToUnlock":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .local v0, "clickToForceLock":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    .local v2, "longClickToForceLock":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLongClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    goto :goto_0

    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    :cond_3
    move v0, v4

    goto :goto_1

    .restart local v0    # "clickToForceLock":Z
    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private updatePhoneVisibility()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result v0

    .local v0, "visible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method public getCameraPreview()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    return-object v0
.end method

.method public getCameraView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getPhonePreview()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->killFlashlight()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public launchPhone()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "indicationBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updatePhoneVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflatePreviews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 1
    .param p1, "accessibilityEnabled"    # Z
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIconClickability()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :goto_0
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x30

    const-wide/16 v0, 0x0

    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    add-long/2addr v0, v4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    add-long/2addr v0, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
