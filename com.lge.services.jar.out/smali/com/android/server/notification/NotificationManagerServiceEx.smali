.class public Lcom/android/server/notification/NotificationManagerServiceEx;
.super Lcom/android/server/notification/NotificationManagerService;
.source "NotificationManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;,
        Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;,
        Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_EXCESS_SPC_FAIL_POWER_OFF:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NotificationServiceEx"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mBackPulseEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

.field private mIntentReceiverEx:Landroid/content/BroadcastReceiver;

.field private mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    .line 138
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerServiceEx$1;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    .line 50
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    .line 53
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    .line 54
    new-instance v2, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerServiceEx$LGLEDList;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Lcom/android/server/notification/NotificationManagerServiceEx$1;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mLights:Ljava/util/ArrayList;

    .line 57
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$bool;->config_spc_check:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 59
    .local v0, "mIsUseSpc":Z
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "spcfailNoti":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    .end local v1    # "spcfailNoti":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerServiceEx;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationManagerServiceEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerServiceEx;)Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerServiceEx;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightRestart_native()V

    return-void
.end method

.method static synthetic access$900(IIZIIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerServiceEx;->updateLightList_native(IIZIIILjava/lang/String;)V

    return-void
.end method

.method private static native updateLightList_native(IIZIIILjava/lang/String;)V
.end method

.method private static native updateLightRestart_native()V
.end method


# virtual methods
.method protected buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 94
    return-void
.end method

.method protected cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 99
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(I)V

    .line 84
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;->observe()V

    .line 89
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/server/notification/NotificationManagerService;->onStart()V

    .line 70
    new-instance v1, Lcom/android/server/notification/NotificationVibrator;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationVibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mVibrator:Landroid/os/Vibrator;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "stopNoti":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    new-instance v1, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mHandler:Lcom/android/server/notification/NotificationManagerServiceEx$WorkerHandlerEx;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerServiceEx;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mSettingsObserverEx:Lcom/android/server/notification/NotificationManagerServiceEx$SettingsObserver;

    .line 79
    return-void
.end method

.method updateLightsLocked()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationPulseEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mBackPulseEnabled:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerServiceEx;->mNotificationPulseEnabled:Z

    .line 105
    invoke-super {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 106
    return-void
.end method
