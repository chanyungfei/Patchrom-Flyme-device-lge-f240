.class Lcom/android/server/display/DisplayPowerControllerEx;
.super Lcom/android/server/display/DisplayPowerController;
.source "DisplayPowerControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;,
        Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;,
        Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_RAMP_RATE_RECOVER:I = 0x2

.field private static final MODE_CIRCLE:I = 0x1

.field private static final MODE_CIRCLEFADE:I = 0x4

.field private static final MODE_COLORFADE:I = 0x3

.field private static final MODE_ELECTRONBEAM:I = 0x2

.field private static final MODE_FADE:I = 0x0

.field private static final MSG_RECOVER_SCREEN_BRIGHTNESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DisplayPowerControllerEx"


# instance fields
.field private mCircleAnimation:Lcom/android/server/display/CircleAnimation;

.field private mCircleFade:Lcom/android/server/display/CircleFade;

.field private mColorFade:Lcom/android/server/display/ColorFadeEx;

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mElectronBeam:Lcom/android/server/display/ElectronBeam;

.field private final mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

.field private mIsGlanceView:Z

.field private mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimatorEx",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

.field private mScreenOffAnimationMode:I

.field private mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

.field mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaypowercallbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensormanager"    # Landroid/hardware/SensorManager;
    .param p5, "displayblanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverOpened:Z

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I

    .line 132
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerEx$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerControllerEx$1;-><init>(Lcom/android/server/display/DisplayPowerControllerEx;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    .line 78
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;-><init>(Lcom/android/server/display/DisplayPowerControllerEx;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    .line 81
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "smartcover"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 82
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "DisplayPowerControllerEx"

    const-string v1, "register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "DisplayPowerControllerEx"

    const-string v1, "Can\'t register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LGSystemReadyInternalLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;

    invoke-direct {v4, p0, v6}, Lcom/android/server/display/DisplayPowerControllerEx$LGUserSwitchedReceiver;-><init>(Lcom/android/server/display/DisplayPowerControllerEx;Lcom/android/server/display/DisplayPowerControllerEx$1;)V

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 292
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerControllerEx;Landroid/os/Handler;)V

    .line 294
    .local v2, "settingsObserver":Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;
    const-string v3, "screen_off_effect_set"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 298
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "settingsObserver":Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;
    :cond_0
    return-void
.end method

.method private LGUpdateSettingsLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 323
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x1120028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeFadesConfig:Z

    .line 328
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screen_off_effect_set"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimationMode:I

    .line 332
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimationMode:I

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    check-cast v2, Lcom/android/server/display/DisplayPowerStateEx;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerStateEx;->setScreenOffAnimation(Lcom/android/server/display/ColorFade;)V

    .line 369
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 334
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleAnimation:Lcom/android/server/display/CircleAnimation;

    if-nez v2, :cond_1

    .line 335
    new-instance v2, Lcom/android/server/display/CircleAnimation;

    invoke-direct {v2, v5}, Lcom/android/server/display/CircleAnimation;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleAnimation:Lcom/android/server/display/CircleAnimation;

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleAnimation:Lcom/android/server/display/CircleAnimation;

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mElectronBeam:Lcom/android/server/display/ElectronBeam;

    if-nez v2, :cond_2

    .line 342
    new-instance v2, Lcom/android/server/display/ElectronBeam;

    invoke-direct {v2, v5}, Lcom/android/server/display/ElectronBeam;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mElectronBeam:Lcom/android/server/display/ElectronBeam;

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mElectronBeam:Lcom/android/server/display/ElectronBeam;

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFade:Lcom/android/server/display/ColorFadeEx;

    if-nez v2, :cond_3

    .line 350
    new-instance v2, Lcom/android/server/display/ColorFadeEx;

    invoke-direct {v2, v5}, Lcom/android/server/display/ColorFadeEx;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFade:Lcom/android/server/display/ColorFadeEx;

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFade:Lcom/android/server/display/ColorFadeEx;

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleFade:Lcom/android/server/display/CircleFade;

    if-nez v2, :cond_4

    .line 356
    new-instance v2, Lcom/android/server/display/CircleFade;

    invoke-direct {v2, v5}, Lcom/android/server/display/CircleFade;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleFade:Lcom/android/server/display/CircleFade;

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCircleFade:Lcom/android/server/display/CircleFade;

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayPowerControllerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerControllerEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerEx;->updateCoverStateLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerControllerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/DisplayPowerControllerEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerControllerEx;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerEx;->animateRecoverScreenBrightness(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerControllerEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerControllerEx;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerEx;->LGUpdateSettingsLocked()V

    return-void
.end method

.method private animateRecoverScreenBrightness(I)V
    .locals 3
    .param p1, "currentBrightness"    # I

    .prologue
    const/4 v2, 0x2

    .line 252
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRangeMinimum:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRangeMaximum:I

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/RampAnimatorEx;->animateRecoverScreenBrightness(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "DisplayPowerControllerEx"

    const-string v2, "RecoverScreenBrightness animate done..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    monitor-exit v1

    .line 266
    return-void

    .line 260
    :cond_1
    const-string v0, "DisplayPowerControllerEx"

    const-string v2, "RecoverScreenBrightness animate skip..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 263
    :cond_2
    :try_start_1
    const-string v0, "DisplayPowerControllerEx"

    const-string v2, "RecoverScreenBrightness skip..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getTableSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    const/4 v1, 0x0

    .line 435
    :goto_0
    return v1

    .line 433
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v0, "strtk":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    goto :goto_0
.end method

.method private loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system/etc/ALC/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 407
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 408
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v5, "DisplayPowerControllerEx"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 421
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 424
    :goto_3
    return-object v5

    .line 412
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 413
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v0, v1

    .line 418
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 415
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "DisplayPowerControllerEx"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 419
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 415
    .end local v4    # "text":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 416
    const-string v5, "DisplayPowerControllerEx"

    const-string v6, "File IOException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 411
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 412
    :goto_4
    if-eqz v0, :cond_3

    .line 413
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 418
    :cond_3
    :goto_5
    throw v5

    .line 415
    :catch_3
    move-exception v2

    .line 416
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "DisplayPowerControllerEx"

    const-string v7, "File IOException!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 424
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 411
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 407
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private makeTableForALC(Ljava/lang/String;)[I
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 440
    const/4 v2, 0x0

    .line 455
    :cond_0
    return-object v2

    .line 443
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v1, "strtk":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 445
    .local v2, "table":[I
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerEx;->getTableSize(Ljava/lang/String;)I

    move-result v3

    .line 447
    .local v3, "tableSize":I
    if-lez v3, :cond_0

    .line 448
    new-array v2, v3, [I

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 451
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCoverStateLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverOpened:Z

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "screen_off_effect_set"

    const/4 v3, -0x2

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimationMode:I

    .line 166
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x1120028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeFadesConfig:Z

    .line 182
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mCoverType:I

    packed-switch v2, :pswitch_data_0

    .line 178
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeFadesConfig:Z

    goto :goto_0

    .line 175
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeFadesConfig:Z

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    if-eqz v1, :cond_1

    .line 188
    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->animateMode:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mIsGlanceView:Z

    if-nez v1, :cond_2

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 200
    :cond_0
    :goto_0
    if-ne p1, v3, :cond_1

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mIsGlanceView:Z

    .line 204
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    invoke-virtual {v1, p1}, Lcom/android/server/display/RampAnimatorEx;->noAnimateTo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "localRemoteException":Landroid/os/RemoteException;
    const-string v1, "DisplayPowerControllerEx"

    const-string v2, "Occured remote exception..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected animateScreenStateChange(IZ)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mIsGlanceView:Z

    if-eqz v0, :cond_0

    .line 209
    const/4 p2, 0x0

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 213
    return-void
.end method

.method protected initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerEx;->LGUpdateSettingsLocked()V

    .line 94
    new-instance v1, Lcom/android/server/display/DisplayPowerStateEx;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenOffAnimation:Lcom/android/server/display/ColorFadeEx;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/DisplayPowerStateEx;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 98
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    new-instance v1, Lcom/android/server/display/RampAnimatorEx;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimatorEx;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 111
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    check-cast v1, Lcom/android/server/display/RampAnimatorEx;

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    .line 113
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mScreenBrightnessRampAnimatorEx:Lcom/android/server/display/RampAnimatorEx;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimatorEx;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 116
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerControllerEx;->LGSystemReadyInternalLocked()V

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 122
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "remoteexception":Landroid/os/RemoteException;
    goto :goto_0

    .line 98
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected readLuxBrightnessTable()V
    .locals 6

    .prologue
    .line 374
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    const-string v4, "Lux.txt"

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerControllerEx;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "loadedLuxStr":Ljava/lang/String;
    const-string v4, "Brightness.txt"

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerControllerEx;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "loadedBrightnessStr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerControllerEx;->getTableSize(Ljava/lang/String;)I

    move-result v3

    .line 378
    .local v3, "luxTableSize":I
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerEx;->getTableSize(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "brightnessTableSize":I
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    .line 383
    const-string v4, "DisplayPowerControllerEx"

    const-string v5, "get Lux and Brightness Table from File."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerControllerEx;->makeTableForALC(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->lux:[I

    .line 385
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerControllerEx;->makeTableForALC(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->screenBrightness:[I

    .line 387
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->lux:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerControllerEx;->screenBrightness:[I

    if-nez v4, :cond_1

    .line 388
    :cond_0
    const-string v4, "DisplayPowerControllerEx"

    const-string v5, "Table ERROR: restore table from config file."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0}, Lcom/android/server/display/DisplayPowerController;->readLuxBrightnessTable()V

    .line 393
    .end local v0    # "brightnessTableSize":I
    .end local v1    # "loadedBrightnessStr":Ljava/lang/String;
    .end local v2    # "loadedLuxStr":Ljava/lang/String;
    .end local v3    # "luxTableSize":I
    :cond_1
    return-void
.end method

.method public requestRecoverScreenBrightness(I)V
    .locals 3
    .param p1, "currentBrightness"    # I

    .prologue
    const/4 v2, 0x4

    .line 238
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;->removeMessages(I)V

    .line 240
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mHandlerEx:Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerControllerEx$DisplayControllerHandlerEx;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method public requestSetGlanceView()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerControllerEx;->mIsGlanceView:Z

    .line 248
    return-void
.end method

.method protected updatePowerState()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 234
    return-void
.end method
