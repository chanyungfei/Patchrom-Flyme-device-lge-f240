.class public Lcom/android/server/power/PowerManagerServiceEx;
.super Lcom/android/server/power/PowerManagerService;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;,
        Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;,
        Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;,
        Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;,
        Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;,
        Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;,
        Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;
    }
.end annotation


# static fields
.field private static final ACTION_GET_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.getNextTime"

.field private static final ACTION_MAMXIMUM_TIME_TOLOCK:Ljava/lang/String; = "com.lge.mdm.ACTION_MAMXIMUM_TIME_TOLOCK"

.field private static final ACTION_REQUEST_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

.field private static final ACTION_WISESCREEN_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.COMMAND"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SMART_COVER:Z

.field private static final DEBUG_SPEW:Z = false

.field private static final DEBUG_WISE_SCREEN:Z = false

.field private static final DEFAULT_DEVICE_LOCK_TIMEOUT:I = 0x7530

.field private static DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I = 0x0

.field private static final DIRTY_BUTTON_STATE:I = 0x1000

.field private static final LONG_KEYLED_TIMEOUT_DELAY:I = 0xbb8

.field private static final MSG_DEVICE_LOCK_TIMEOUT:I = 0x7

.field private static final MSG_KEYLED_ENABLED:I = 0x6

.field private static final MSG_KEYLED_TIMEOUT:I = 0x5

.field private static final NOTUSER_DEBUG:Z

.field public static final OFF_BECAUSE_OF_PROX_SENSOR:I = 0x4

.field private static final OPERATOR_VZW:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceEx"

.field private static final WISESCREEN_TIME_MS:I = 0xbb8

.field private static configs:Lcom/lge/config/Configs;


# instance fields
.field private mAlwaysTurnOnKeyLed:Z

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mDeviceLockExpired:Z

.field private mDeviceLockTimeoutSetting:I

.field private mEASStateOn:Z

.field private mEarlyIntentSend:Ljava/lang/Runnable;

.field private mEarlyScreenOff:Landroid/content/Intent;

.field private mForegroundPackageName:Ljava/lang/String;

.field private mHDMIConnected:Z

.field private mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

.field private mIsDoneRequestWaitForNegativeProximity:Z

.field private final mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

.field private mIsPowerKeyWhenCalling:Z

.field private mKeyLedEnabled:Z

.field private mKeyLedEnabledByTouchScreen:Z

.field private mKeyLedTimeoutDelay:I

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

.field private mLPWGController:Lcom/android/server/power/LPWGController;

.field private mNextTimeout:J

.field private mOldKeyLedTimeoutDelay:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

.field private mSilenceFile:Ljava/io/File;

.field private mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

.field mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

.field private mSupportAlignmentUI:Z

.field private mSupportDeviceLock:Z

.field private mSupportWirelessCharging:Z

.field private mSupportWiseScreen:Z

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mUsingPowerkeyScreenOnInCalling:Z

.field private mWirelessChargingEnable:I

.field private mWiseScreenEnable:I

.field private final mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    .line 80
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    .line 108
    const/16 v0, 0xfa0

    sput v0, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 148
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->OPERATOR_VZW:Z

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    .line 98
    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 100
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    .line 101
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    .line 105
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    .line 111
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    .line 112
    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    .line 113
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    .line 120
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    .line 129
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 136
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    .line 142
    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    .line 152
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    .line 1100
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$1;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    .line 1448
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$2;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1459
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$3;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    .line 161
    invoke-static {}, Lcom/lge/config/Configs;->getConfigs()Lcom/lge/config/Configs;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    .line 162
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.EARLY_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private LGHandleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGUpdateSettingsLocked()V

    .line 978
    return-void
.end method

.method private LGReadConfigurationLocked()V
    .locals 4

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 357
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/lge/internal/R$bool;->support_wisescreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    .line 358
    sget v1, Lcom/lge/internal/R$bool;->config_enable_wireless_charging:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    .line 359
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WiseScreen] mSupportWiseScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportWirelessCharging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget v1, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/lge/internal/R$bool;->config_using_disney_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    :cond_0
    const/16 v1, 0x1770

    sput v1, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 364
    :cond_1
    sget v1, Lcom/lge/internal/R$bool;->config_power_key_screen_on_in_calling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    .line 365
    sget v1, Lcom/lge/internal/R$bool;->config_enable_wireless_charging_alignment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    .line 366
    sget v1, Lcom/lge/internal/R$bool;->support_devicelock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    .line 367
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/config/Configs;->getConfigs(Landroid/content/Context;)Lcom/lge/config/Configs;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    .line 369
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2
    return-void
.end method

.method private LGSystemReadyInternalLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 941
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 942
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 943
    .local v1, "lgsensorManager":Landroid/hardware/SensorManager;
    new-instance v3, Lcom/android/server/power/LPWGController;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/power/LPWGController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    .line 945
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 946
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 947
    const-string v3, "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v0, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 950
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 951
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v0, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 954
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 955
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 956
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 963
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 964
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    .line 965
    const-string v3, "keep_screen_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 966
    const-string v3, "gesture_trun_screen_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 967
    const-string v3, "KNOCKON_LOCK_SET"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 968
    const-string v3, "KNOCKON_LENGTH_KEY"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    const-string v3, "KNOCKON_SAME_KEY"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 970
    const-string v3, "power_save_wireless_charge"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 971
    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 972
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->keyLedConfiguration()V

    .line 974
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "lgsensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private LGUpdateSettingsLocked()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 374
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "keep_screen_on"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    .line 376
    const-string v2, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WiseScreen] mWiseScreenEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "power_save_wireless_charge"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    .line 380
    const-string v2, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WiseScreen] mWirelessChargingEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "frontkey_led_timeout"

    const/16 v5, 0xbb8

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    .line 385
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    if-eq v2, v5, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    if-gtz v2, :cond_4

    .line 388
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 389
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 394
    :goto_0
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    .line 395
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    if-eqz v2, :cond_1

    .line 400
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    if-ne v2, v3, :cond_6

    .line 401
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->setWirelessCharging(I)V

    .line 407
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    invoke-virtual {v2}, Lcom/android/server/power/LPWGController;->updateSettings()V

    .line 411
    :cond_2
    const-string v2, "lock_screen_lock_after_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    .line 415
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 416
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updatePowerStateLocked()V

    .line 418
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    return-void

    .line 391
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    const v5, 0x7fffffff

    if-lt v2, v5, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 392
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_5
    move v2, v4

    .line 391
    goto :goto_2

    .line 403
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->setWirelessCharging(I)V

    goto :goto_1
.end method

.method static synthetic access$1102(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updateCoverStateLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/PowerManagerServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->resetPackageName()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerServiceEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGHandleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleKeyLedTimeout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerServiceEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLedEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleDeviceLockTimeout()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerServiceEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerServiceEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerServiceEx;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerServiceEx;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    return v0
.end method

.method private getForegroundPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1218
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1219
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1221
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1222
    .local v1, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, "pkgName":Ljava/lang/String;
    return-object v2
.end method

.method private getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .locals 9

    .prologue
    .line 810
    const/4 v5, 0x0

    .line 811
    .local v5, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .line 812
    .local v4, "pwm":Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
    const/4 v3, 0x0

    .line 815
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mKeyguardDelegate"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 823
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 824
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 825
    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    move-object v6, v5

    .line 838
    :goto_2
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-object v6

    .line 816
    .restart local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no such field and so try again to find it !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 819
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 820
    const-string v6, "mKeyguardDelegate"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_0

    .line 827
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "can\'t get field"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 829
    :catch_1
    move-exception v2

    .line 830
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 837
    goto :goto_2

    .line 831
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 832
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 837
    goto :goto_2

    .line 833
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 834
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 837
    goto/16 :goto_2

    .line 835
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 836
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t get keyguardservice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    goto/16 :goto_2
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1095
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private goToSleepIfSilentResetIsRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 789
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isSilenceFileExist()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 790
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "go to sleep for silent reset!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 793
    :cond_0
    return-void
.end method

.method private handleDeviceLockTimeout()V
    .locals 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v0, :cond_1

    .line 1157
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isScreenLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1159
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "[VEL] wait for end of application a little bit..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    .line 1168
    :goto_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1169
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VEL] handleDeviceLockTimeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForegroundPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceLockExpired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    return-void

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 1165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    goto :goto_0
.end method

.method private handleKeyLedTimeout()V
    .locals 2

    .prologue
    .line 1046
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "handleKeyLedTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1050
    return-void
.end method

.method private isDsdpState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1071
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1076
    const-string v1, "sys.lge.dsdp.mode"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1078
    :cond_0
    return v0
.end method

.method private isOffhook()Z
    .locals 5

    .prologue
    .line 1082
    const/4 v1, 0x0

    .line 1083
    .local v1, "result":Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1084
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1086
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1091
    :cond_0
    :goto_0
    return v1

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isScreenLock()Z
    .locals 5

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1235
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 1244
    const/4 v1, 0x0

    .line 1236
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    :sswitch_0
    const/4 v1, 0x1

    .line 1242
    goto :goto_1

    .line 1248
    :cond_0
    monitor-exit v3

    .line 1249
    return v1

    .line 1248
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private isSilenceFileExist()Z
    .locals 3

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, "fileExist":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/persist-lg/fota/silence_LCDoff.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    .line 799
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const/4 v0, 0x1

    .line 805
    :goto_0
    return v0

    .line 802
    :cond_0
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "there is no silence_LCDoff.txt file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyLedConfiguration()V
    .locals 5

    .prologue
    .line 981
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEYLED_TIMEOUT:Z

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    .line 985
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 988
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_touchscreen_turn_on_button_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    .line 991
    :cond_0
    return-void
.end method

.method private resetPackageName()V
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    .line 1229
    return-void
.end method

.method private setKeyLed(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 1022
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v1, :cond_1

    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeMessages(I)V

    .line 1024
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v1, v4, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1026
    sget-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v1}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn on KeyLed    mKeyLedTimeoutDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-nez v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1032
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1034
    :cond_2
    if-nez p1, :cond_4

    .line 1035
    sget-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v1}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1036
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "turn off KeyLed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1039
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-nez v1, :cond_1

    .line 1040
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle KeyLed... mKeyLedEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setKeyLedEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 994
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    .line 996
    if-eqz p1, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1001
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1002
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 1004
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1016
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    .line 1017
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1019
    :cond_1
    return-void

    .line 1010
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 1011
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1013
    iput-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private setQuickCharging(I)V
    .locals 9
    .param p1, "value"    # I

    .prologue
    .line 1471
    const-string v3, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    .line 1472
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1474
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v4, "pathFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1476
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1478
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging Mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1483
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_0
    if-eqz v1, :cond_1

    .line 1485
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1491
    .end local v4    # "pathFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1486
    .restart local v4    # "pathFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1480
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "pathFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging write : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1483
    if-eqz v1, :cond_1

    .line 1485
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1486
    :catch_2
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setQuickCharging close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_2

    .line 1485
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1488
    :cond_2
    :goto_3
    throw v5

    .line 1486
    :catch_3
    move-exception v0

    .line 1487
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setQuickCharging close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1483
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "pathFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1480
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private setWirelessCharging(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    .line 1412
    const-string v3, "/sys/class/power_supply/wireless/enabled"

    .line 1413
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1415
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/power_supply/wireless/enabled"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1417
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1421
    if-eqz v2, :cond_2

    .line 1423
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1429
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 1424
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1426
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1418
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1421
    if-eqz v1, :cond_0

    .line 1423
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1424
    :catch_2
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1421
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_1

    .line 1423
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1426
    :cond_1
    :goto_3
    throw v4

    .line 1424
    :catch_3
    move-exception v0

    .line 1425
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWirelessCharging, close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1421
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1418
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private updateCoverStateLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 843
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v1, :cond_2

    .line 848
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverStateLocked(), mCoverType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCoverOpened="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-eqz v1, :cond_4

    .line 852
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    .line 855
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 858
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isSilenceFileExist()Z

    move-result v1

    if-nez v1, :cond_3

    .line 859
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 888
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/LPWGController;->updateCoverState(ZI)V

    goto :goto_0

    .line 863
    :cond_4
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 865
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_1

    .line 870
    :sswitch_1
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 872
    iput v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    .line 873
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    .line 877
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 878
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 879
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpNoUpdateLocked(JI)Z

    .line 882
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updatePowerStateLocked()V

    goto :goto_1

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateEASState()V
    .locals 10

    .prologue
    .line 1253
    const/4 v4, 0x0

    .line 1254
    .local v4, "result":Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1256
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    .line 1257
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .line 1258
    .local v1, "componentListInFramwork":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_2

    .line 1259
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1260
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.exchange"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1261
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1262
    const/4 v4, 0x1

    goto :goto_0

    .line 1269
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "componentListInFramwork":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1270
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    .line 1271
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    sget-boolean v5, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v5, :cond_3

    .line 1274
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VEL] updateEASState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDeviceLockTimeoutSettings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    const/16 v6, 0x1388

    if-ge v5, v6, :cond_4

    .line 1279
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    const/16 v7, 0x7530

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1282
    :cond_4
    return-void

    .line 1271
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updateKeyLedState(I)V
    .locals 2
    .param p1, "dirty"    # I

    .prologue
    const/4 v1, 0x1

    .line 1053
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1056
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1057
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-eq v0, v1, :cond_1

    .line 1058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1061
    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 1062
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-eqz v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1064
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1068
    :cond_2
    return-void
.end method

.method private updateWiseScreenLocked(JI)V
    .locals 13
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v7, 0x1

    .line 898
    and-int/lit8 v5, p3, 0x26

    if-eqz v5, :cond_3

    .line 899
    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-eqz v5, :cond_3

    .line 900
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 901
    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 903
    :cond_0
    const-wide/16 v0, 0x0

    .line 904
    .local v0, "nextTimeout":J
    const/4 v4, 0x0

    .line 905
    .local v4, "validNextTimeout":Z
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getSleepTimeoutLocked()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenOffTimeoutLocked(I)I

    move-result v3

    .line 906
    .local v3, "screenOffTimeout":I
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenDimDurationLocked(I)I

    move-result v2

    .line 908
    .local v2, "screenDimDuration":I
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastWakeTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 909
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    int-to-long v8, v2

    sub-long v0, v6, v8

    .line 910
    cmp-long v5, p1, v0

    if-gez v5, :cond_4

    .line 911
    const/4 v4, 0x1

    .line 912
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 921
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastWakeTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 922
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v8, v3

    add-long v0, v6, v8

    .line 923
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 930
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v8, v0, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 931
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 938
    .end local v0    # "nextTimeout":J
    .end local v2    # "screenDimDuration":I
    .end local v3    # "screenOffTimeout":I
    .end local v4    # "validNextTimeout":Z
    :cond_3
    :goto_1
    return-void

    .line 914
    .restart local v0    # "nextTimeout":J
    .restart local v2    # "screenDimDuration":I
    .restart local v3    # "screenOffTimeout":I
    .restart local v4    # "validNextTimeout":Z
    :cond_4
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    int-to-long v8, v3

    add-long v0, v6, v8

    .line 915
    cmp-long v5, p1, v0

    if-gez v5, :cond_1

    .line 916
    const/4 v4, 0x1

    goto :goto_0

    .line 933
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    sub-long v8, v0, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private wakeUpInProximityPositive(J)Z
    .locals 9
    .param p1, "eventTime"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v7, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    .line 564
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    .line 565
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 566
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerServiceEx;->userActivityNoUpdateLocked(JIII)Z

    .line 567
    return v7
.end method


# virtual methods
.method protected acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    const/4 v4, 0x1

    .line 423
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p2, v4, :cond_1

    .line 426
    :cond_0
    const-string v0, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLockInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", historyTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-super/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 435
    const v0, 0xffff

    and-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v0, :cond_2

    .line 437
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 440
    :cond_2
    return-void

    .line 430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 682
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 683
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v0, v2

    .line 695
    :cond_1
    :goto_0
    return v0

    .line 686
    :cond_2
    sget v0, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 688
    .local v0, "timeout":I
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 690
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 695
    .end local v0    # "timeout":I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method protected goToSleepNoUpdateLocked(JIII)Z
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flag"    # I
    .param p5, "uid"    # I

    .prologue
    .line 572
    invoke-super/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    .line 574
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->post(Ljava/lang/Runnable;)Z

    .line 579
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    if-eqz v1, :cond_1

    .line 580
    if-eqz v0, :cond_1

    .line 581
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    :cond_1
    if-eqz v0, :cond_2

    .line 586
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    .line 589
    :cond_2
    return v0
.end method

.method protected needDisplaySuspendBlockerLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1498
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayReady:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-eqz v2, :cond_1

    .line 1526
    :cond_0
    :goto_0
    return v0

    .line 1501
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v2, :cond_0

    .line 1508
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v2, :cond_3

    .line 1509
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1526
    goto :goto_0

    .line 1513
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 1514
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->onBootPhase(I)V

    .line 771
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 772
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "smartcover"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 773
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->goToSleepIfSilentResetIsRunning()V

    .line 785
    :cond_1
    return-void

    .line 778
    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 779
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "Can\'t register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 283
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 284
    return-void
.end method

.method protected reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 599
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    move-result v0

    .line 601
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/LPWGController;->updateScreenState(Z)V

    .line 604
    :cond_0
    return v0
.end method

.method protected releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 444
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 445
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 446
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 451
    monitor-exit v3

    .line 475
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 455
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-eq v2, v4, :cond_2

    .line 457
    :cond_1
    const-string v2, "PowerManagerServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseWakeLockInternal: lock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    if-eqz v2, :cond_3

    .line 462
    if-ltz v0, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    .line 464
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 468
    :cond_3
    if-ltz v0, :cond_4

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4

    .line 469
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    .line 474
    monitor-exit v3

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected setHalAutoSuspendModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 750
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isDsdpState()Z

    move-result v0

    .line 751
    .local v0, "isDsdp":Z
    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 752
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running on DSDP mode.. ignore setHalAutoSuspendModeLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    goto :goto_0
.end method

.method protected setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isDsdpState()Z

    move-result v0

    .line 761
    .local v0, "isDsdp":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 762
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running on DSDP mode.. ignore mHalInteractiveModeEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    goto :goto_0
.end method

.method protected shouldNapAtBedTimeLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 701
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v2, :cond_2

    .line 702
    sget-boolean v1, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v1, :cond_1

    .line 703
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "window cover closed.. ignore request for napping.."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamsActivateOnSleepSetting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamsActivateOnDockSetting:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDockState:I

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected shouldUseProximitySensorLocked()Z
    .locals 2

    .prologue
    .line 741
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v0, :cond_1

    .line 742
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 7
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 610
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    .line 611
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 612
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v3, :cond_2

    if-eq p2, v5, :cond_0

    if-ne p2, v2, :cond_2

    .line 614
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 638
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return v0

    .line 621
    .restart local v0    # "result":Z
    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v3, :cond_4

    if-ne p2, v6, :cond_4

    .line 623
    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v3, v5, :cond_3

    move v0, v2

    .line 624
    goto :goto_0

    :cond_3
    move v0, v1

    .line 626
    goto :goto_0

    .line 632
    :cond_4
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPlugType:I

    if-ne v2, v6, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    if-nez v2, :cond_5

    if-nez p3, :cond_1

    :cond_5
    move v0, v1

    .line 635
    goto :goto_0
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 8
    .param p1, "appOpsService"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 288
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 289
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 291
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGReadConfigurationLocked()V

    .line 292
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGSystemReadyInternalLocked()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGUpdateSettingsLocked()V

    .line 295
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 296
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v4, :cond_4

    .line 297
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "error : while getting keyguardservice!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v6}, Lcom/android/server/power/LPWGController;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 307
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v4, "/persist-lg/chargerlogo/noautoboot"

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 312
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x30

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 313
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 317
    if-eqz v2, :cond_2

    .line 319
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    :cond_2
    :goto_1
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v4, "/persist-lg/chargerlogo/batt_reboot_hist"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 328
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x30

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 333
    if-eqz v1, :cond_3

    .line 335
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 344
    :cond_3
    :goto_2
    :try_start_7
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    #invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #move-result-object v4

    #check-cast v4, Landroid/app/ActivityManagerEx;

    #new-instance v6, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;

    #const/4 v7, 0x0

    #invoke-direct {v6, p0, v7}, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    #invoke-virtual {v4, v6}, Landroid/app/ActivityManagerEx;->registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 351
    :goto_3
    :try_start_8
    monitor-exit v5

    .line 352
    return-void

    .line 299
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/server/power/LPWGController;->setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v4

    .line 320
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string v4, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to set noautoboot 0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 317
    if-eqz v1, :cond_7

    .line 319
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v2, v1

    .line 322
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 320
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v2, v1

    .line 322
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    :goto_5
    if-eqz v1, :cond_5

    .line 319
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 322
    :cond_5
    :goto_6
    :try_start_e
    throw v4

    .line 320
    :catch_3
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 331
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    :try_start_f
    const-string v4, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to set batt_reboot_hist 0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 333
    if-eqz v1, :cond_3

    .line 335
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 336
    :catch_6
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v1, :cond_6

    .line 335
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 338
    :cond_6
    :goto_9
    :try_start_13
    throw v4

    .line 336
    :catch_7
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_9

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    goto/16 :goto_3

    .line 333
    :catchall_3
    move-exception v4

    goto :goto_8

    .line 330
    :catch_9
    move-exception v0

    goto :goto_7

    .line 317
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 314
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .local v0, "e":Ljava/io/IOException;
    :cond_7
    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method protected updateDeviceLockStateLocked(JI)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1132
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1133
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    if-nez v1, :cond_1

    and-int/lit8 v1, p3, 0x26

    if-eqz v1, :cond_1

    .line 1134
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    int-to-long v8, v1

    add-long v2, v6, v8

    .line 1136
    .local v2, "nextLockTimeout":J
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeMessages(I)V

    .line 1139
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1141
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1144
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v1, :cond_1

    .line 1145
    const-string v1, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VEL] updateDeviceLockStateLocked: mWakefulness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v6}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUserActivitySummary=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nextLockTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v2    # "nextLockTimeout":J
    :cond_1
    monitor-exit v4

    .line 1151
    :cond_2
    return-void

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateDisplayPowerStateLocked(I)Z
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    const/4 v2, 0x0

    .line 714
    and-int/lit8 v1, p1, 0x3f

    if-eqz v1, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getDesiredScreenPolicyLocked()I

    move-result v0

    .line 718
    .local v0, "newScreenState":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq v0, v1, :cond_0

    .line 719
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_0

    .line 722
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->updateKeyLedState(I)V

    .line 728
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    .line 730
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-nez v1, :cond_1

    .line 731
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 735
    .end local v0    # "newScreenState":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v1

    return v1
.end method

.method protected updateUserActivitySummaryLocked(JI)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 656
    and-int/lit8 v2, p3, 0x26

    if-eqz v2, :cond_0

    .line 657
    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getSleepTimeoutLocked()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenOffTimeoutLocked(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 659
    .local v0, "nextTimeout":J
    const-string v2, "PowerManagerServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUserActivitySummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nextTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v0    # "nextTimeout":J
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    if-eqz v2, :cond_1

    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx;->updateWiseScreenLocked(JI)V

    .line 671
    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerServiceEx;->OPERATOR_VZW:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    if-eqz v2, :cond_2

    .line 672
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx;->updateDeviceLockStateLocked(JI)V

    .line 677
    :cond_2
    return-void
.end method

.method protected updateWakeLockSummaryLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 643
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 645
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v2}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-void
.end method

.method protected userActivityFromNative(JII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-eqz v0, :cond_0

    .line 480
    packed-switch p3, :pswitch_data_0

    .line 493
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->userActivityFromNative(JII)V

    .line 494
    return-void

    .line 482
    :pswitch_0
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    goto :goto_0

    .line 485
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    if-eqz v0, :cond_0

    .line 486
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected wakeUpNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastSleepTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v2

    .line 503
    :cond_1
    const/4 v1, 0x0

    .line 504
    .local v1, "wakeUpInProximityPositive":Z
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    if-eqz v4, :cond_2

    .line 505
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    if-eqz v4, :cond_2

    .line 507
    const-string v4, "PowerManagerServiceEx"

    const-string v5, "Screen-on is requested by power key in proximity positive"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpInProximityPositive(J)Z

    move-result v1

    .line 513
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v4, :cond_3

    .line 514
    const-string v4, "PowerManagerServiceEx"

    const-string v5, "Screen-on is requested when proximity is near and call is ended"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpInProximityPositive(J)Z

    move-result v1

    .line 519
    :cond_3
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v4, v3, :cond_4

    if-eqz v1, :cond_0

    .line 525
    :cond_4
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v4, :cond_5

    .line 526
    sget-boolean v3, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v3, :cond_0

    .line 527
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "quick cover closed.. ignore request for waking up"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_5
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-eq v4, v3, :cond_6

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 533
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    .line 535
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 536
    sget-boolean v3, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v3, :cond_0

    .line 537
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "window cover closed.. ignore waking up by proxmity positive"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_7
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    .line 544
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-eqz v2, :cond_8

    .line 545
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 549
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    .line 550
    .local v0, "ret":Z
    or-int/2addr v0, v1

    .line 552
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v2, :cond_9

    .line 553
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    invoke-virtual {v2, v3}, Lcom/android/server/power/LPWGController;->updateScreenState(Z)V

    .line 555
    :cond_9
    if-eqz v0, :cond_a

    .line 556
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    :cond_a
    move v2, v3

    .line 559
    goto/16 :goto_0
.end method
