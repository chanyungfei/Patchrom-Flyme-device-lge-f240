.class public Lcom/lge/net/FastDownloadService;
.super Lcom/lge/net/IFastDownloadManager$Stub;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/net/FastDownloadService$1;,
        Lcom/lge/net/FastDownloadService$RequestedUrlHistory;,
        Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;,
        Lcom/lge/net/FastDownloadService$FDSMessageHandler;,
        Lcom/lge/net/FastDownloadService$FDSTrafficStats;,
        Lcom/lge/net/FastDownloadService$FDSUIHandler;,
        Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;,
        Lcom/lge/net/FastDownloadService$FDSUsage;,
        Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;,
        Lcom/lge/net/FastDownloadService$WifiSettingObserver;,
        Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;,
        Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;,
        Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;,
        Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_INFO_LIST_MAX_SIZE:I = 0xa

.field private static final BANDWIDTH_INFO_STORE_MIN_TIME_MS:I = 0x1388

.field protected static final DBG:Z = true

.field protected static final DISABLED:I = 0x0

.field protected static final ENABLED:I = 0x1

.field private static final EVENT_AIRPLANE_SETTING_CHANGED:I = 0x6

.field private static final EVENT_DATA_ROAMING_SETTING_CHANGED:I = 0x5

.field private static final EVENT_FASTDOWNLOAD_SETTING_CHANGED:I = 0x7

.field private static final EVENT_MOBILE_CONNECT:I = 0x1

.field private static final EVENT_MOBILE_DATA_SETTING_CHANGED:I = 0x4

.field private static final EVENT_MOBILE_DISCONNECT:I = 0x2

.field private static final EVENT_MOBILE_RENEW:I = 0x3

.field private static final EVENT_SLOW_BEARER_DETECTED:I = 0x9

.field private static final EVENT_WIFI_SETTING_CHANGED:I = 0x8

.field private static final FDS_MOBILE_TYPE:Ljava/lang/String; = "enableHIPRI"

.field private static final FDS_MSMB_ALLOWED:I = 0x2

.field private static final FDS_MS_ALLOWED:I = 0x1

.field private static final FDS_NOT_ALLOWED:I = 0x0

.field private static final FDS_PROPERTY:Ljava/lang/String; = "persist.lg.data.fds_prop"

.field private static final LOG_PREFIX:Ljava/lang/String; = "[FastDN][FDS] "

.field private static final MOBILE_CONNECTION_RENEW_MS:I = 0x9c40

.field private static final POLL_NETSTAT_MILLIS:I = 0x1f4

.field private static final STARTUSING_DELAY:Ljava/lang/String; = "lge.fds.mobiledelay"

.field private static final TAG:Ljava/lang/String; = "FastDownloadService"

.field private static final TYPE_MOBILE:I = 0x1

.field private static final TYPE_WIFI:I

.field protected static final VDBG:Z

.field private static sFDSInstance:Lcom/lge/net/FastDownloadService;


# instance fields
.field private fdCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lge/net/IFDCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneEnabled:Z

.field private final mAirplaneSettingObserver:Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;

.field private mAverageBandwidthCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivtyManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCountForSlowBearer:I

.field private mDataRoamingEnabled:Z

.field private final mDataRoamingSettingObserver:Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultMobileConnected:Z

.field private mDetectSlowBearerEnable:Z

.field private mFDSEnabled:Z

.field private mFDSUsageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/net/FastDownloadService$FDSUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastDownloadSettingObserver:Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHipriConnected:Z

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsMultiBearer:Z

.field private mIsPollStatsRunning:Z

.field private mMobileApnReserved:I

.field private mMobileDataEnabled:Z

.field private final mMobileDataSettingObserver:Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;

.field private mMobileInterface:Ljava/lang/String;

.field private mMobileLocalAddress:[B

.field private mMobileSlowNotifyNeeded:Z

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPeakBandwidthCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedUrlHistoryHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/net/FastDownloadService$RequestedUrlHistory;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSeveralTimesFaster:I

.field private mShowWifiTrafficStats:Z

.field private mSystemReady:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field protected mTrafficStats:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

.field protected mUIHander:Lcom/lge/net/FastDownloadService$FDSUIHandler;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private mWifiInterface:Ljava/lang/String;

.field private mWifiLocalAddress:[B

.field private final mWifiSettingObserver:Lcom/lge/net/FastDownloadService$WifiSettingObserver;

.field private mWifiSlowNotifyNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 329
    invoke-direct {p0}, Lcom/lge/net/IFastDownloadManager$Stub;-><init>()V

    .line 133
    const/4 v3, -0x1

    iput v3, p0, Lcom/lge/net/FastDownloadService;->mMobileApnReserved:I

    .line 153
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mWifiConnected:Z

    .line 154
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mHipriConnected:Z

    .line 155
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z

    .line 157
    iput-boolean v6, p0, Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z

    .line 158
    iput-boolean v6, p0, Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z

    .line 159
    iput v4, p0, Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I

    .line 161
    iput-object v5, p0, Lcom/lge/net/FastDownloadService;->mWifiLocalAddress:[B

    .line 162
    iput-object v5, p0, Lcom/lge/net/FastDownloadService;->mMobileLocalAddress:[B

    .line 164
    const-string/jumbo v3, "wlan0"

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;

    .line 165
    const-string/jumbo v3, "rmnet1"

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;

    .line 170
    new-instance v3, Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    invoke-direct {v3, p0}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;-><init>(Lcom/lge/net/FastDownloadService;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mTrafficStats:Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    .line 190
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    .line 192
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z

    .line 193
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mShowWifiTrafficStats:Z

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    .line 197
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mRequestedUrlHistoryHashMap:Ljava/util/HashMap;

    .line 202
    iput-boolean v6, p0, Lcom/lge/net/FastDownloadService;->mDetectSlowBearerEnable:Z

    .line 203
    const/4 v3, 0x5

    iput v3, p0, Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I

    .line 204
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mTestMode:Z

    .line 205
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z

    .line 331
    const-string v3, "FastDownloadService starting up"

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 333
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FastDownloadServiceThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 335
    new-instance v3, Lcom/lge/net/FastDownloadService$FDSMessageHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/lge/net/FastDownloadService$FDSMessageHandler;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    .line 338
    const-string/jumbo v3, "missing Context"

    invoke-static {p1, v3}, Lcom/lge/net/FastDownloadService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    .line 339
    const-string/jumbo v3, "missing INetworkManagementService"

    invoke-static {p2, v3}, Lcom/lge/net/FastDownloadService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/INetworkManagementService;

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mNetd:Landroid/os/INetworkManagementService;

    .line 340
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mConnectivtyManager:Landroid/net/ConnectivityManager;

    .line 341
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 342
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 344
    new-instance v3, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;

    invoke-direct {v3, p0, v5}, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;-><init>(Lcom/lge/net/FastDownloadService;Lcom/lge/net/FastDownloadService$1;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v3, Lcom/lge/net/FastDownloadService$FDSUIHandler;

    invoke-direct {v3, p0}, Lcom/lge/net/FastDownloadService$FDSUIHandler;-><init>(Lcom/lge/net/FastDownloadService;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mUIHander:Lcom/lge/net/FastDownloadService$FDSUIHandler;

    .line 346
    new-instance v3, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-direct {v3, p0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;-><init>(Lcom/lge/net/FastDownloadService;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    .line 356
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getDataOnRoamingEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z

    .line 357
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getAirplaneModeEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z

    .line 358
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getFastDownloadEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mFDSEnabled:Z

    .line 359
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getWifiEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z

    .line 362
    new-instance v3, Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingSettingObserver:Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;

    .line 363
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingSettingObserver:Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;

    invoke-virtual {v3}, Lcom/lge/net/FastDownloadService$DataRoamingSettingObserver;->register()V

    .line 365
    new-instance v3, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mMobileDataSettingObserver:Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;

    .line 366
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mMobileDataSettingObserver:Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;

    invoke-virtual {v3}, Lcom/lge/net/FastDownloadService$MobileDataSettingObserver;->register()V

    .line 368
    new-instance v3, Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mAirplaneSettingObserver:Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;

    .line 369
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mAirplaneSettingObserver:Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;

    invoke-virtual {v3}, Lcom/lge/net/FastDownloadService$AirplaneSettingObserver;->register()V

    .line 371
    new-instance v3, Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mFastDownloadSettingObserver:Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;

    .line 372
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mFastDownloadSettingObserver:Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;

    invoke-virtual {v3}, Lcom/lge/net/FastDownloadService$FastDownloadSettingObserver;->register()V

    .line 374
    new-instance v3, Lcom/lge/net/FastDownloadService$WifiSettingObserver;

    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/net/FastDownloadService$WifiSettingObserver;-><init>(Lcom/lge/net/FastDownloadService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/net/FastDownloadService;->mWifiSettingObserver:Lcom/lge/net/FastDownloadService$WifiSettingObserver;

    .line 375
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mWifiSettingObserver:Lcom/lge/net/FastDownloadService$WifiSettingObserver;

    invoke-virtual {v3}, Lcom/lge/net/FastDownloadService$WifiSettingObserver;->register()V

    .line 377
    const-string/jumbo v3, "persist.lg.data.fds_prop"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "fdsProperty":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    iput-boolean v6, p0, Lcom/lge/net/FastDownloadService;->mTestMode:Z

    .line 381
    :cond_0
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    iput-boolean v6, p0, Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z

    .line 384
    :cond_1
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/net/FastDownloadService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mConnectivtyManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/lge/net/FastDownloadService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # [B

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/net/FastDownloadService;->mMobileLocalAddress:[B

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lge/net/FastDownloadService;Landroid/net/LinkProperties;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->getLocalAddress(Landroid/net/LinkProperties;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/net/FastDownloadService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/lge/net/FastDownloadService;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # [B

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/net/FastDownloadService;->mWifiLocalAddress:[B

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lge/net/FastDownloadService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mDetectSlowBearerEnable:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mDetectSlowBearerEnable:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lge/net/FastDownloadService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget v0, p0, Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I

    return v0
.end method

.method static synthetic access$1902(Lcom/lge/net/FastDownloadService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/lge/net/FastDownloadService;->mSeveralTimesFaster:I

    return p1
.end method

.method static synthetic access$202(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/lge/net/FastDownloadService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget v0, p0, Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I

    return v0
.end method

.method static synthetic access$2208(Lcom/lge/net/FastDownloadService;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget v0, p0, Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I

    return v0
.end method

.method static synthetic access$2300(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/lge/net/FastDownloadService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/net/FastDownloadService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/net/FastDownloadService;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->decodeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/net/FastDownloadService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->startMobileDataConnection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/lge/net/FastDownloadService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->stopMobileDataConnection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mHipriConnected:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mFDSEnabled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mFDSEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lge/net/FastDownloadService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->eventCallback(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/net/FastDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lge/net/FastDownloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/net/FastDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->updateBandwidthCache()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/net/FastDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->resetBandwidthCache()V

    return-void
.end method

.method private checkDataRadioTechnology()Z
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 600
    .local v0, "dataRadioTechnology":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkDataRadioTechnology] dataRadioTechnology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 602
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 608
    :cond_0
    const/4 v1, 0x1

    .line 610
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1515
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 1516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :cond_0
    return-object p0
.end method

.method private checkUrlHistory(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 577
    .local v0, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isFDSDownloadableURL] calling uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 579
    iget-boolean v3, p0, Lcom/lge/net/FastDownloadService;->mTestMode:Z

    if-eqz v3, :cond_1

    .line 580
    const-string v3, "[isFDSDownloadableURL] test mode.. return true"

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 595
    :cond_0
    :goto_0
    return v2

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mRequestedUrlHistoryHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mRequestedUrlHistoryHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;

    .line 586
    .local v1, "urlHistory":Lcom/lge/net/FastDownloadService$RequestedUrlHistory;
    invoke-virtual {v1, p1}, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    const-string v2, "[isFDSDownloadableURL] this url is not avaliable"

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 588
    const/4 v2, 0x0

    goto :goto_0

    .line 591
    .end local v1    # "urlHistory":Lcom/lge/net/FastDownloadService$RequestedUrlHistory;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isFDSDownloadableURL] mRequestedUrlHistoryHashMap does not contain key for uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 592
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mRequestedUrlHistoryHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;

    invoke-direct {v5, p0, p1}, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;-><init>(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private decodeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1413
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1414
    const-string v0, "EVENT_MOBILE_CONNECT"

    .line 1432
    :goto_0
    return-object v0

    .line 1415
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1416
    const-string v0, "EVENT_MOBILE_DISCONNECT"

    goto :goto_0

    .line 1417
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1418
    const-string v0, "EVENT_MOBILE_RENEW"

    goto :goto_0

    .line 1419
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1420
    const-string v0, "EVENT_DATA_ROAMING_SETTING_CHANGED"

    goto :goto_0

    .line 1421
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1422
    const-string v0, "EVENT_MOBILE_DATA_SETTING_CHANGED"

    goto :goto_0

    .line 1423
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1424
    const-string v0, "EVENT_AIRPLANE_SETTING_CHANGED"

    goto :goto_0

    .line 1425
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 1426
    const-string v0, "EVENT_FASTDOWNLOAD_SETTING_CHANGED"

    goto :goto_0

    .line 1427
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 1428
    const-string v0, "EVENT_WIFI_SETTING_CHANGED"

    goto :goto_0

    .line 1429
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 1430
    const-string v0, "EVENT_SLOW_BEARER_DETECTED"

    goto :goto_0

    .line 1432
    :cond_8
    const-string/jumbo v0, "unknown message.what"

    goto :goto_0
.end method

.method private eventCallback(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 933
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 934
    .local v0, "broadcastCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventCallback: event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", broadcastCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 936
    const/4 v1, 0x0

    .local v1, "callback":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 938
    :try_start_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lge/net/IFDCallback;

    invoke-interface {v3, p1}, Lcom/lge/net/IFDCallback;->notifyAndroidEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    :catch_0
    move-exception v2

    .line 940
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startUsingNetworkFeature: FDCallback.notifyAndroidEvent Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 944
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 945
    return-void
.end method

.method private getAppNameByPid(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    .line 948
    const-string v6, ""

    .line 949
    .local v6, "processName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 950
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 951
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 952
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v7, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 954
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 955
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 957
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_0

    .line 958
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAppNameByPid for pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ProcessName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 959
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v6

    .line 962
    .restart local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAppNameByPid Error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAverageBandwidthCacheInfo()[D
    .locals 14

    .prologue
    .line 865
    const/4 v5, 0x2

    new-array v0, v5, [D

    fill-array-data v0, :array_0

    .line 866
    .local v0, "averageBandwidthInfo":[D
    const-wide/16 v8, 0x0

    .local v8, "totalWifiBandwidth":D
    const-wide/16 v6, 0x0

    .local v6, "totalMobileBandwidth":D
    const-wide/16 v2, 0x0

    .line 868
    .local v2, "count":D
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 869
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;

    .line 871
    .local v1, "entry":Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;
    if-eqz v1, :cond_0

    iget-wide v10, v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-ltz v5, :cond_0

    .line 872
    iget-wide v10, v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->wifiBandwidth:D

    add-double/2addr v8, v10

    .line 873
    iget-wide v10, v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->mobileBandwidth:D

    add-double/2addr v6, v10

    .line 874
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v10

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAverageBandwidthCacheInfo -index("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")- wifi:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->wifiBandwidth:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mobile:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->mobileBandwidth:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 868
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 877
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAverageBandwidthCacheInfo -time expired.. skip getAverageBandwidthCacheInfo -index("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 881
    .end local v1    # "entry":Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;
    :cond_1
    const-wide/16 v10, 0x0

    cmpl-double v5, v2, v10

    if-eqz v5, :cond_2

    .line 882
    const/4 v5, 0x0

    div-double v10, v8, v2

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    aput-wide v10, v0, v5

    .line 883
    const/4 v5, 0x1

    div-double v10, v6, v2

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    aput-wide v10, v0, v5

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAverageBandwidthCacheInfo [Wifi: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x0

    aget-wide v10, v0, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " Mbps], [Mobile: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x1

    aget-wide v10, v0, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " Mbps]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 889
    :goto_2
    return-object v0

    .line 886
    :cond_2
    const-string v5, "getAverageBandwidthCacheInfo  - Do not use FDS\'s bandwidth information"

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 865
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;)[B
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v7, 0x0

    .line 970
    if-nez p1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-object v7

    .line 974
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 976
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 977
    .local v5, "ipv4_addr":Ljava/net/InetAddress;
    const/4 v6, 0x0

    .line 979
    .local v6, "ipv6_addr":Ljava/net/Inet6Address;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 981
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v8, v0, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    move-object v4, v0

    .line 982
    check-cast v4, Ljava/net/Inet6Address;

    .line 983
    .local v4, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v4}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v6, v0

    .line 985
    check-cast v6, Ljava/net/Inet6Address;

    .line 986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getLocalAddress] Interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ipv6_addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 991
    .end local v4    # "i6addr":Ljava/net/Inet6Address;
    :cond_3
    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    move-object v3, v0

    .line 992
    check-cast v3, Ljava/net/Inet4Address;

    .line 993
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 995
    move-object v5, v0

    .line 996
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getLocalAddress] Interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ipv4_addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1001
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_4
    if-eqz v5, :cond_5

    .line 1002
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    goto/16 :goto_0

    .line 1003
    :cond_5
    if-eqz v6, :cond_0

    .line 1004
    invoke-virtual {v6}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    goto/16 :goto_0
.end method

.method private getPeakBandwidthCacheInfo()[D
    .locals 14

    .prologue
    .line 906
    const/4 v5, 0x2

    new-array v4, v5, [D

    fill-array-data v4, :array_0

    .line 907
    .local v4, "peakBandwidthInfo":[D
    const-wide/16 v8, 0x0

    .local v8, "totalWifiBandwidth":D
    const-wide/16 v6, 0x0

    .local v6, "totalMobileBandwidth":D
    const-wide/16 v0, 0x0

    .line 909
    .local v0, "count":D
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 910
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;

    .line 911
    .local v2, "entry":Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;
    if-eqz v2, :cond_0

    iget-wide v10, v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-ltz v5, :cond_0

    .line 912
    iget-wide v10, v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->wifiBandwidth:D

    add-double/2addr v8, v10

    .line 913
    iget-wide v10, v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->mobileBandwidth:D

    add-double/2addr v6, v10

    .line 914
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v10

    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPeakBandwidthCacheInfo -index("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")- wifi:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->wifiBandwidth:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mobile:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v2, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;->mobileBandwidth:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 909
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPeakBandwidthCacheInfo -time expired..  skip getPeakBandwidthCacheInfo -index("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 921
    .end local v2    # "entry":Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;
    :cond_1
    const-wide/16 v10, 0x0

    cmpl-double v5, v0, v10

    if-eqz v5, :cond_2

    .line 922
    const/4 v5, 0x0

    div-double v10, v8, v0

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    aput-wide v10, v4, v5

    .line 923
    const/4 v5, 0x1

    div-double v10, v6, v0

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double/2addr v10, v12

    aput-wide v10, v4, v5

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPeakBandwidthCacheInfo [Wifi: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x0

    aget-wide v10, v4, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " Mbps], [Mobile: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x1

    aget-wide v10, v4, v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " Mbps]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 929
    :goto_2
    return-object v4

    .line 926
    :cond_2
    const-string v5, "getPeakBandwidthCacheInfo  - Do not use FDS\'s bandwidth information"

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 906
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1507
    const-string v0, "FastDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FastDN][FDS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1511
    const-string v0, "FastDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FastDN][FDS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void
.end method

.method private resetBandwidthCache()V
    .locals 1

    .prologue
    .line 847
    const-string/jumbo v0, "resetBandwidthCache"

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 849
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 850
    return-void
.end method

.method private startMobileDataConnection(I)Z
    .locals 8
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMobileDataConnection -E with pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 772
    iget-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    if-nez v4, :cond_0

    .line 773
    const-string/jumbo v4, "startMobileDataConnection is ignored due to data disabled"

    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 814
    :goto_0
    return v3

    .line 777
    :cond_0
    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 778
    const-string/jumbo v4, "startMobileDataConnection, no associated FD client"

    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_1
    const/4 v3, 0x1

    .line 783
    .local v3, "retValue":Z
    const/4 v2, 0x3

    .line 786
    .local v2, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mConnectivtyManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 790
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 800
    const/4 v3, 0x0

    .line 804
    :goto_2
    if-eqz v3, :cond_2

    .line 812
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMobileDataConnection - X  retValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception of startMobileDataConnection - e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 795
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v4, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x9c40

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopMobileDataConnection(I)Z
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMobileDataConnection -E with pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 819
    const/4 v1, 0x1

    .line 821
    .local v1, "retValue":Z
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    const-string v2, "Another FDSUsage exists."

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 823
    const/4 v2, 0x1

    .line 836
    :goto_0
    return v2

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mConnectivtyManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableHIPRI"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMobileDataConnection -X  retValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    move v2, v1

    .line 836
    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception of stopMobileDataConnection - e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 832
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateAverageBandwidthCache()V
    .locals 7

    .prologue
    .line 852
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getElapsedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAverageBandwidthCache: [Wifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedWifiBandwidth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbps], [Mobile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedMobileBandwidth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbps]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 858
    iget-object v6, p0, Lcom/lge/net/FastDownloadService;->mAverageBandwidthCache:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedWifiBandwidth()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedMobileBandwidth()D

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;-><init>(Lcom/lge/net/FastDownloadService;DD)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAverageBandwidthCache: skip adding BandwidthInfoList : ElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBandwidthCache()V
    .locals 1

    .prologue
    .line 840
    const-string/jumbo v0, "updateBandwidthCache - E"

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->updateAverageBandwidthCache()V

    .line 842
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->updatePeakBandwidthCache()V

    .line 843
    const-string/jumbo v0, "updateBandwidthCache - X"

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method private updatePeakBandwidthCache()V
    .locals 7

    .prologue
    .line 893
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 894
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v0}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getElapsedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePeakBandwidthCache: [Wifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getBestWifiBandwidth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbps], [Mobile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getBestMobileBandwidth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbps]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 899
    iget-object v6, p0, Lcom/lge/net/FastDownloadService;->mPeakBandwidthCache:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getBestWifiBandwidth()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getBestMobileBandwidth()D

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/net/FastDownloadService$BandwidthCacheEntry;-><init>(Lcom/lge/net/FastDownloadService;DD)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePeakBandwidthCache: skip adding BandwidthInfoList : ElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v1}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAvailableInternalMemory(J)Z
    .locals 15
    .param p1, "contentLength"    # J

    .prologue
    .line 1374
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 1375
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 1377
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v8, v12

    .line 1378
    .local v8, "totalBlocks":J
    mul-long v10, v4, v8

    .line 1379
    .local v10, "totalInternalMemory":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    .line 1380
    .local v0, "availableBlocks":J
    mul-long v2, v4, v0

    .line 1382
    .local v2, "availableInternalMemory":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAvailableInternalMemory() blockSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", totalBlocks: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", totalInternalMemory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", availableBlocks: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", availableInternalMemory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 1384
    const-wide/16 v12, 0x2

    mul-long v12, v12, p1

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    .line 1385
    const-string v12, "checkAvailableInternalMemory() Not enough Internal Memory"

    invoke-static {v12}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 1386
    const/4 v12, 0x0

    .line 1389
    :goto_0
    return v12

    .line 1388
    :cond_0
    const-string v12, "checkAvailableInternalMemory() Enough Internal Memory"

    invoke-static {v12}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 1389
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public checkTotalMemory()Z
    .locals 10

    .prologue
    .line 1347
    const-wide/32 v0, 0x30000000

    .line 1348
    .local v0, "MEM_LOWERBOUND":J
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1349
    .local v2, "am":Landroid/app/ActivityManager;
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1350
    .local v4, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-wide/16 v6, 0x0

    .line 1353
    .local v6, "totalDeviceMem":J
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1354
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMemory() totalMem : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v5, v8, v6

    if-gez v5, :cond_0

    const-wide/32 v8, 0x30000000

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 1366
    const-string v5, "checkMemory() totalMem is less than pre-defined : 805306368"

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 1367
    const/4 v5, 0x0

    .line 1369
    :goto_1
    return v5

    .line 1361
    :catch_0
    move-exception v3

    .line 1362
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NullPointer Exception occured."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public getAccumulatedMobileBandwidth()D
    .locals 4

    .prologue
    .line 655
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedMobileBandwidth()D

    move-result-wide v0

    .line 657
    .local v0, "mobileAccumulatedBandwidth":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAccumulatedMobileBandwidth] mobileAccumulatedBandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 658
    return-wide v0
.end method

.method public getAccumulatedWifiBandwidth()D
    .locals 4

    .prologue
    .line 647
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getAccumulatedWifiBandwidth()D

    move-result-wide v0

    .line 649
    .local v0, "wifiAccumulatedBandwidth":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAccumulatedWifiBandwidth] wifiAccumulatedBandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 650
    return-wide v0
.end method

.method public getAirplaneModeEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1332
    :try_start_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1333
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1336
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1334
    :catch_0
    move-exception v1

    .line 1335
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception of getAirplaneModeEnabled - e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAverageBandwidthCache()[D
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->getAverageBandwidthCacheInfo()[D

    move-result-object v0

    return-object v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1322
    :try_start_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1323
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "data_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1326
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception of getDataOnRoamingEnabled - e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFDSEnabled(JLjava/lang/String;)I
    .locals 5
    .param p1, "contentLength"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "allowed":I
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getFastDownloadEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->checkTotalMemory()Z

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/lge/net/FastDownloadService;->checkAvailableInternalMemory(J)Z

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getWifiConnectionStatus()Z

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getMobileDataEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getAirplaneModeEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->checkDataRadioTechnology()Z

    move-result v2

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_a

    .line 530
    const/4 v0, 0x2

    .line 538
    :cond_0
    :goto_0
    invoke-direct {p0, p3}, Lcom/lge/net/FastDownloadService;->checkUrlHistory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    const/4 v0, 0x0

    .line 543
    :cond_1
    const-string v1, ""

    .line 544
    .local v1, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getFastDownloadEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - FastDownload Setting is not Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_2
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->checkTotalMemory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Total Memory is less than lowerBound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/lge/net/FastDownloadService;->checkAvailableInternalMemory(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Available Internal Memory is not enough"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    :cond_4
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getWifiConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Wifi is not connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_5
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Mobile data is not enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    :cond_6
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Airplane mode is enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    :cond_7
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Network is in Roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    :cond_8
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->checkDataRadioTechnology()Z

    move-result v2

    if-nez v2, :cond_9

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Radio Tech is not LTE or 3G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFDSEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 572
    return v0

    .line 531
    .end local v1    # "reason":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getFastDownloadEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->checkTotalMemory()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/lge/net/FastDownloadService;->checkAvailableInternalMemory(J)Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getWifiConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService;->getMobileConnectionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/32 v2, 0x1e00000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 535
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getFDSLogEnabled()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public getFDSUsageList(III)J
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "threadid"    # I

    .prologue
    .line 682
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getFastDownloadEnabled()Z
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    return v0
.end method

.method public getMobileBandwidth()D
    .locals 4

    .prologue
    .line 639
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getMobileBandwidth()D

    move-result-wide v0

    .line 641
    .local v0, "mobileBandwidth":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMobileBandwidth] mobileBandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 642
    return-wide v0
.end method

.method public getMobileConnectionStatus()Z
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getMobileConnectionStatus] mDefaultMobileConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHipriConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mHipriConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMobileDataEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAirplaneEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNetworkRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataRoamingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mHipriConnected:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mMobileDataEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mDataRoamingEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1312
    :try_start_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1313
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "mobile_data"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1316
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception of getMobileDataEnabled - e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMobileLocalAddress()[B
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mHipriConnected:Z

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mMobileLocalAddress:[B

    .line 675
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeakBandwidthCache()[D
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/lge/net/FastDownloadService;->getPeakBandwidthCacheInfo()[D

    move-result-object v0

    return-object v0
.end method

.method public getWifiBandwidth()D
    .locals 4

    .prologue
    .line 631
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v2}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->getWifiBandwidth()D

    move-result-wide v0

    .line 633
    .local v0, "wifiBandwidth":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getWifiBandwidth] wifiBandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 634
    return-wide v0
.end method

.method public getWifiConnectionStatus()Z
    .locals 2

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getWifiConnectionStatus] mWifiConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWifiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 626
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mWifiConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1403
    :try_start_0
    iget-object v5, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1404
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "wifi_on"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1405
    .local v1, "result":I
    if-eqz v1, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    iget-boolean v5, p0, Lcom/lge/net/FastDownloadService;->mAirplaneEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v3, :cond_1

    :cond_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    .line 1408
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    :goto_0
    return v3

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "result":I
    :cond_1
    move v3, v4

    .line 1405
    goto :goto_0

    .line 1406
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    :catch_0
    move-exception v2

    .line 1407
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception of getWifiEnabled - e:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    move v3, v4

    .line 1408
    goto :goto_0
.end method

.method public getWifiLocalAddress()[B
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mWifiLocalAddress:[B

    .line 666
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFDCallback(Lcom/lge/net/IFDCallback;)Z
    .locals 1
    .param p1, "cb"    # Lcom/lge/net/IFDCallback;

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 751
    const-string v0, "[FASTDOWNLOAD] registerFDCallback: parameter is null."

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 752
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLocalAddress(ILandroid/net/LinkAddress;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "addr"    # Landroid/net/LinkAddress;

    .prologue
    .line 720
    return-void
.end method

.method public startFDS(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x1

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFDS: pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 727
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 730
    const-string/jumbo v2, "lge.fds.mobiledelay"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 731
    .local v1, "startUsingDelayTime":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile connection will be started after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v3, v1, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 734
    return v6
.end method

.method public stopFDS(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopFDS: pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 742
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 743
    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 745
    const/4 v1, 0x1

    return v1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1522
    monitor-enter p0

    .line 1523
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lge/net/FastDownloadService;->mSystemReady:Z

    .line 1524
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/net/FastDownloadService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1528
    :cond_0
    monitor-exit p0

    .line 1529
    return-void

    .line 1528
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterFDCallback(Lcom/lge/net/IFDCallback;)Z
    .locals 1
    .param p1, "cb"    # Lcom/lge/net/IFDCallback;

    .prologue
    .line 759
    if-nez p1, :cond_0

    .line 760
    const-string v0, "[FASTDOWNLOAD] unregisterFDCallback: parameter is null."

    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 761
    const/4 v0, 0x0

    .line 763
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService;->fdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateFDSUsage(IZ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "flag"    # Z

    .prologue
    const/4 v4, 0x1

    .line 703
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService;->getAppNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "appName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 705
    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/lge/net/FastDownloadService$FDSUsage;

    invoke-direct {v3, p0, p1, v0}, Lcom/lge/net/FastDownloadService$FDSUsage;-><init>(Lcom/lge/net/FastDownloadService;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFDSUsage: FDSUsage added for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    .line 708
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mWifiSlowNotifyNeeded:Z

    .line 709
    iput-boolean v4, p0, Lcom/lge/net/FastDownloadService;->mMobileSlowNotifyNeeded:Z

    .line 710
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/net/FastDownloadService;->mCountForSlowBearer:I

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFDSUsage: FDSUsage removed for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
