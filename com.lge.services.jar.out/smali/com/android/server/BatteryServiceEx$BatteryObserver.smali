.class public Lcom/android/server/BatteryServiceEx$BatteryObserver;
.super Landroid/os/UEventObserver;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;,
        Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    }
.end annotation


# static fields
.field private static final ORIENTATION_LANDSCAPE_DEGREE_FROM:I = 0xfa

.field private static final ORIENTATION_LANDSCAPE_DEGREE_TO:I = 0x122

.field private static final ORIENTATION_LANDSCAPE_OPPOSITE_DEGREE_FROM:I = 0x46

.field private static final ORIENTATION_LANDSCAPE_OPPOSITE_DEGREE_TO:I = 0x6e

.field private static final ORIENTATION_PORTRAIT_DEGREE_FROM:I = 0x154

.field private static final ORIENTATION_PORTRAIT_DEGREE_TO:I = 0x14

.field private static final ORIENTATION_PORTRAIT_OPPOSITE_DEGREE_FROM:I = 0xa0

.field private static final ORIENTATION_PORTRAIT_OPPOSITE_DEGREE_TO:I = 0xc8


# instance fields
.field private mBatteryCondition:I

.field private mBatteryCurrent:I

.field private final mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfo_init:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mChargingCurrent:I

.field private final mContext:Landroid/content/Context;

.field private final mDisabled:I

.field private mExtPwr:I

.field private final mHandler:Landroid/os/Handler;

.field private mIntentToForward:Landroid/content/Intent;

.field private mLastPluggedType:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

.field private mOverheatCheckTime:J

.field private mPluggedType:I

.field mSendIntentForWireless:Ljava/lang/Runnable;

.field private mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidBatteryID:I

.field private mWirelessAlignment:I

.field final synthetic this$0:Lcom/android/server/BatteryServiceEx;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryServiceEx;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const v0, -0xf4240

    .line 185
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->this$0:Lcom/android/server/BatteryServiceEx;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 154
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mDisabled:I

    .line 155
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    .line 156
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    .line 157
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    .line 158
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    .line 159
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    .line 160
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    .line 161
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    .line 162
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    .line 163
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    .line 165
    iput-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    .line 182
    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    .line 450
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 537
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    .line 186
    iput-object p2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Lcom/android/server/BatteryServiceEx;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 217
    const-string v0, "SUBSYSTEM=power_supply"

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->startObserving(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->checkBatteryOverheat(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    return v0
.end method

.method private checkBatteryOverheat(I)V
    .locals 10
    .param p1, "temperature"    # I

    .prologue
    const-wide/32 v8, 0x1d4c0

    const-wide/16 v6, 0x0

    .line 429
    const/16 v1, 0x1c2

    if-le p1, v1, :cond_2

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 431
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 432
    iput-wide v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 448
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v2    # "now":J
    :cond_1
    iget-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-ltz v1, :cond_0

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    const-string v1, "com.lge.android.intent.action.DQSL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "com.lge.intent.extra.DQSL_EVENT_CODE"

    const-string v4, "Q020"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "com.lge.intent.extra.DQSL_EVENT_VALUE"

    div-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    rem-long v4, v2, v8

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 441
    # getter for: Lcom/android/server/BatteryServiceEx;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "BatteryServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send Q020 BatteryOverheat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "now":J
    :cond_2
    iput-wide v6, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    goto :goto_0
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v7, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 228
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$400()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$600()[I

    move-result-object v1

    aget v5, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    .local v0, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const v1, -0xf4240

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    .line 233
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "BatteryServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This kernel does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " support ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v0    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    :cond_1
    return-object v7
.end method

.method private sendIntentLocked()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method private updateLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, -0xf4240

    .line 301
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 302
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    .line 303
    .local v1, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_VALID_BATT_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    .line 301
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_CURRENT_NOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_BATTERY_CONDITION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_VZW_CHG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_EXT_PWR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 312
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    goto :goto_1

    .line 313
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_CAPACITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 314
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-nez v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    if-eq v2, v4, :cond_7

    .line 315
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    goto/16 :goto_1

    .line 317
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    goto/16 :goto_1

    .line 319
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 320
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-nez v2, :cond_a

    :cond_9
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    if-eq v2, v4, :cond_a

    .line 321
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    goto/16 :goto_1

    .line 323
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    goto/16 :goto_1

    .line 325
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_ALIGNMENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    goto/16 :goto_1

    .line 331
    .end local v1    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-nez v2, :cond_d

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-ne v2, v5, :cond_d

    .line 332
    iput-boolean v5, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    .line 336
    :cond_d
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->sendIntentLocked()V

    .line 337
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 247
    :try_start_0
    const-string v8, "DEVPATH"

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "devPath":Ljava/lang/String;
    const-string v8, "POWER_SUPPLY_NAME"

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 250
    const-string v8, "BatteryServiceEx"

    const-string v9, "devPath can\'t be null!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 253
    const-string v8, "BatteryServiceEx"

    const-string v9, "name can\'t be null!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "BatteryServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse switch value from event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "battery"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "wireless"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 259
    :cond_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "eventString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_b

    .line 261
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$400()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 262
    const/4 v7, 0x0

    .line 263
    .local v7, "value":I
    const/4 v5, 0x0

    .line 264
    .local v5, "status":Ljava/lang/String;
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    const-string v9, "status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 265
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 284
    :goto_2
    iget-object v8, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    .line 285
    .local v6, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v6}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$600()[I

    move-result-object v8

    aget v8, v8, v3

    const v9, -0xf4240

    if-eq v8, v9, :cond_4

    .line 286
    invoke-virtual {v6, v7}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    .line 260
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    .end local v7    # "value":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 268
    .restart local v5    # "status":Ljava/lang/String;
    .restart local v7    # "value":I
    :cond_5
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string v8, "Unknown"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 270
    const/4 v7, 0x1

    goto :goto_2

    .line 271
    :cond_6
    const-string v8, "Charging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 272
    const/4 v7, 0x2

    goto :goto_2

    .line 273
    :cond_7
    const-string v8, "Discharging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 274
    const/4 v7, 0x3

    goto :goto_2

    .line 275
    :cond_8
    const-string v8, "Not charging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 276
    const/4 v7, 0x4

    goto :goto_2

    .line 277
    :cond_9
    const-string v8, "Full"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 278
    const/4 v7, 0x5

    goto :goto_2

    .line 280
    :cond_a
    const-string v8, "BatteryServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It can\'t be happened!! : status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 290
    .end local v5    # "status":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_b
    iget-object v9, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V

    .line 292
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
.end method
