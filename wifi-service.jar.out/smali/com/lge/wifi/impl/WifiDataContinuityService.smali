.class public Lcom/lge/wifi/impl/WifiDataContinuityService;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Lcom/lge/wifi/extension/IWifiDataContinuityService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CAPTIVE_ICD_CHECK_COMPLETED:Ljava/lang/String; = "android.net.wifi.CAPTIVE_ICD_CHECK_COMPLETED"

.field private static final DBG:Z = true

.field public static final EXTRA_L3_DATA_SERVICE_QUALITY:Ljava/lang/String; = "resultStatus"

.field public static final EXTRA_RESULT_STATUS:Ljava/lang/String; = "resultStatus"

.field public static final EXTRA_SHOW_NOTI_FOR_DCF:Ljava/lang/String; = "reason"

.field public static final EXTRA_SHOW_SSID_FOR_DCF:Ljava/lang/String; = "show_ssid"

.field public static final L3_DATA_SERVICE_QUALITY_ACTION:Ljava/lang/String; = "android.net.L3_DATA_SERVICE_QUALITY"

.field private static final MESSAGE_CHANGE_DUAL_CONNECTION_SETTING:I = 0x2

.field private static final MESSAGE_DUAL_CONNECTION_POPUP_CANCEL:I = 0x4

.field private static final MESSAGE_DUAL_CONNECTION_TOAST_POPUP_DELAY:I = 0x3

.field private static final MESSAGE_RESTORE_DISABLED_NETS_BY_DCF:I = 0x1

.field public static final MULTIPLE_CONNECTION_POPUP_DB:Ljava/lang/String; = "wifi_multiple_connection_popup"

.field public static final SHOW_NOTI_FOR_DCF_ACTION:Ljava/lang/String; = "com.lge.wifi.SHOW_NOTI_FOR_DCF"

.field private static final TAG:Ljava/lang/String; = "WifiDataContinuityService"


# instance fields
.field private mAlertDialogView:Landroid/view/View;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

.field private mDisableL3MonitoringTemporally:Z

.field private mDisableNetowrkDlg:Landroid/app/AlertDialog;

.field private mIsShownCaptivePopUp:Z

.field private mIsShownPopUp:Z

.field private mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;

.field private mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

.field private mWifiDisconnect:Z

.field private mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 46
    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 51
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 52
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 61
    iput-boolean v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiDisconnect:Z

    .line 221
    new-instance v0, Lcom/lge/wifi/impl/WifiDataContinuityService$1;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$1;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->handleIntentAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/wifi/impl/WifiDataContinuityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionToastPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wifi/impl/WifiDataContinuityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->getWifiState()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/wifi/impl/WifiDataContinuityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableL3MonitoringTemporally:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/wifi/impl/WifiDataContinuityService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/wifi/impl/WifiDataContinuityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/wifi/impl/WifiDataContinuityService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showWifiNetworkOnlyConnectionToastPopup()V

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/lge/wifi/impl/WifiExtManager;->getInstance()Lcom/lge/wifi/impl/WifiExtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCM:Landroid/net/ConnectivityManager;

    .line 209
    :cond_1
    return-void
.end method

.method private disableNetworkByL3DataServiceQuality(I)V
    .locals 6
    .param p1, "l3DataQoSReason"    # I

    .prologue
    .line 592
    iget-boolean v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableL3MonitoringTemporally:Z

    if-eqz v3, :cond_1

    .line 593
    const-string v3, "WifiDataContinuityService"

    const-string v4, "L3_DATA_SERVICE_QUALITY_ACTION, don\'t disable network temporally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isInternetCheckAvailable()Z

    move-result v0

    .line 598
    .local v0, "disableNetwork":Z
    const-string v3, "WifiDataContinuityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L3_DATA_SERVICE_QUALITY_ACTION, resultStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Internet Check : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 601
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 602
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 603
    .local v2, "isCaptive":Z
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 604
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isCaptiveProfile(I)Z

    move-result v2

    .line 606
    :cond_2
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 607
    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 608
    :cond_3
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->sendDisconnectCmdByL3DataServiceQuality()V

    goto :goto_0

    .line 610
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->reportWifiStatus(I)V

    goto :goto_0
.end method

.method private getToastMargin()I
    .locals 8

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    .line 276
    .local v0, "margin":D
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v4

    .line 278
    .local v2, "sizeHight":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    const-wide v6, 0x3fd5c28f5c28f5c3L    # 0.34

    mul-double v0, v4, v6

    .line 280
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 281
    const-wide/16 v0, 0x0

    .line 284
    :cond_0
    double-to-int v4, v0

    return v4
.end method

.method private getWifiState()I
    .locals 3

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiDataContinuityService"

    const-string v2, "getWifiState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleIntentAction(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "action":Ljava/lang/String;
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 291
    const-string v13, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v13, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wifi/impl/WifiDataContinuityService;->processNetworkStateChangedAction(Landroid/net/NetworkInfo$DetailedState;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 297
    const-string v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 300
    .local v7, "newWifiState":I
    const/4 v13, 0x1

    if-ne v13, v7, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    if-eqz v13, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->removeMessages(I)V

    goto :goto_0

    .line 306
    .end local v7    # "newWifiState":I
    :cond_2
    const-string v13, "android.net.L3_DATA_SERVICE_QUALITY"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 307
    const-string v13, "resultStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/wifi/impl/WifiDataContinuityService;->disableNetworkByL3DataServiceQuality(I)V

    goto :goto_0

    .line 309
    :cond_3
    const-string v13, "com.lge.wifi.SHOW_NOTI_FOR_DCF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 310
    const-string v13, "reason"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 311
    .local v9, "reason":I
    const-string v13, "show_ssid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "ssid":Ljava/lang/String;
    const-string v13, "WifiDataContinuityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_NOTI_FOR_DCF_ACTION received, reason : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ssid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz v10, :cond_0

    .line 316
    const/4 v8, 0x0

    .line 317
    .local v8, "noti":Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v9, v13, :cond_4

    .line 318
    const-string v13, "WifiDataContinuityService"

    const-string v14, "Captive Fail."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 324
    .local v11, "toast":Landroid/widget/Toast;
    if-eqz v11, :cond_0

    .line 327
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 329
    .end local v11    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v3

    .line 330
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "WifiDataContinuityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->sp_wifi_internet_unavailable_alert_for_uncheck_NORMAL:I

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 334
    .end local v8    # "noti":Ljava/lang/String;
    .end local v9    # "reason":I
    .end local v10    # "ssid":Ljava/lang/String;
    :cond_5
    const-string v13, "com.lge.wifi.CAPTIVE_NETWORK_CHECK_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 335
    const-string v13, "extra_is_captive_portal"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 336
    .local v4, "isCaptive":Z
    const-string v13, "extra_captive_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 337
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/lge/wifi/impl/WifiDataContinuityService;->sendCaptiveCheckCompletedCmd(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v4    # "isCaptive":Z
    .end local v12    # "url":Ljava/lang/String;
    :cond_6
    const-string v13, "android.net.wifi.CAPTIVE_ICD_CHECK_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 340
    const-string v13, "resultStatus"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, "captive_icd_result":I
    const/4 v13, -0x2

    if-ne v2, v13, :cond_7

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionPopup()Z

    goto/16 :goto_0

    .line 344
    :cond_7
    const/4 v13, -0x1

    if-ne v2, v13, :cond_9

    .line 345
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v13

    const-string v14, "KT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showCaptivePortalNetworkPopup()Z

    goto/16 :goto_0

    .line 349
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionPopup()Z

    goto/16 :goto_0

    .line 352
    :cond_9
    if-nez v2, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 360
    .end local v2    # "captive_icd_result":I
    :cond_a
    const-string v13, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 361
    const-string v13, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 362
    .local v5, "netInfo":Landroid/net/NetworkInfo;
    if-nez v5, :cond_b

    .line 363
    const-string v13, "WifiDataContinuityService"

    const-string v14, "netInfo is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 366
    :cond_b
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 367
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_c

    .line 368
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiDisconnect:Z

    goto/16 :goto_0

    .line 370
    :cond_c
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 371
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiDisconnect:Z

    goto/16 :goto_0

    .line 374
    :cond_d
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiDisconnect:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isInternetCheckAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 375
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.lge.wifi.WIFI_NETWORK_BEARER_CHANGED_ACTION"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v6, "newIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    const-string v13, "WifiDataContinuityService"

    const-string v14, "SendBroadcast LgeServiceExtConstant.ACTION_CHANGED_NETWORK_WIFI_TO_MOBILE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiDisconnect:Z

    goto/16 :goto_0
.end method

.method private isVideoCalling()Z
    .locals 5

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 187
    .local v0, "callState":I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    .line 188
    const/4 v1, 0x1

    .line 195
    .end local v0    # "callState":I
    :cond_1
    :goto_0
    const-string v2, "WifiDataContinuityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoCalling : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1

    .line 190
    .restart local v0    # "callState":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processNetworkStateChangedAction(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "curWifiNetworkState"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 230
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 233
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_1
    iput-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    .line 239
    iput-boolean v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownPopUp:Z

    .line 240
    iput-boolean v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableL3MonitoringTemporally:Z

    .line 242
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_2
    iput-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    .line 246
    iput-boolean v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownCaptivePopUp:Z

    .line 249
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 251
    :cond_4
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 253
    :cond_5
    return-void
.end method

.method private registeBroadcastReceiver()V
    .locals 3

    .prologue
    .line 646
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v1, "android.net.L3_DATA_SERVICE_QUALITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v1, "com.lge.wifi.SHOW_NOTI_FOR_DCF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v1, "com.lge.wifi.CAPTIVE_NETWORK_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v1, "android.net.wifi.CAPTIVE_ICD_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 657
    return-void
.end method

.method private registerForDualConnectionSettingChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 660
    new-instance v0, Lcom/lge/wifi/impl/WifiDataContinuityService$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/wifi/impl/WifiDataContinuityService$9;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/os/Handler;)V

    .line 671
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_data_continuity_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 675
    const-string v1, "WifiDataContinuityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForDualConnectionSettingChange is initialized isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_data_continuity_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 619
    const-string v0, ""

    .line 621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendCaptiveCheckCompletedCmd(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isCaptive"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 643
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v1, 0x0

    .line 630
    .local v1, "isPopUpShowing":I
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 631
    .local v0, "isCaptiveCheckCompleted":I
    :goto_1
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    const/4 v1, 0x1

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    const/4 v1, 0x1

    .line 638
    :cond_2
    const-string v2, "WifiDataContinuityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCaptiveCheckCompletedCmd isCaptive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "popUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mUrl:Ljava/lang/String;

    .line 641
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x20403

    invoke-static {v3, v4, v1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 630
    .end local v0    # "isCaptiveCheckCompleted":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendDisconnectCmdByL3DataServiceQuality()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 565
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    const-string v3, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isVideoCalling()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 569
    const-string v3, "WifiDataContinuityService"

    const-string v4, "Ignore sendDisconnectCmdByL3DataServiceQuality() during Video Call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 575
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/wifi/impl/WifiDataContinuityService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 580
    .local v1, "netId":I
    const-string v3, "WifiDataContinuityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDisconnectCmdByL3DataServiceQuality, netId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const v5, 0x20404

    invoke-static {v4, v5, v1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 585
    invoke-direct {p0, v6, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showNotiForDCF(ILjava/lang/String;)V

    .line 586
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiDataContinuityService;->bookEnableProfile(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private showCaptivePortalNetworkPopup()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 385
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v6

    .line 390
    :cond_1
    iget-boolean v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownCaptivePopUp:Z

    if-nez v3, :cond_0

    .line 394
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownCaptivePopUp:Z

    .line 397
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 398
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 399
    .local v1, "curConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v1, :cond_2

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 401
    const-string v3, "WifiDataContinuityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCaptivePortalNetworkPopup, netId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", captiveCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionToastPopup()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 409
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/lge/internal/R$string;->sp_captive_portal_title_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$string;->sp_captive_portal_body_MLINE:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/lge/wifi/impl/WifiDataContinuityService$4;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$4;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/lge/wifi/impl/WifiDataContinuityService$3;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$3;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lge/wifi/impl/WifiDataContinuityService$2;

    invoke-direct {v4, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$2;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    .line 437
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 438
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCaptivePortalNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private showMultipleNetworkConnectionPopup()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 480
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mLastWifiNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_0

    move v3, v4

    .line 561
    :goto_0
    return v3

    .line 482
    :cond_0
    const-string v5, "US"

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->isVideoCalling()Z

    move-result v5

    if-ne v3, v5, :cond_1

    .line 484
    const-string v3, "WifiDataContinuityService"

    const-string v5, "Ignore showMultipleNetworkConnectionPopup() during Video Call"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 486
    goto :goto_0

    .line 490
    :cond_1
    iget-boolean v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownPopUp:Z

    if-eqz v5, :cond_2

    move v3, v4

    .line 491
    goto :goto_0

    .line 494
    :cond_2
    iput-boolean v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mIsShownPopUp:Z

    .line 498
    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_multiple_connection_popup"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 499
    .local v2, "popup_show":Z
    :goto_1
    if-nez v2, :cond_4

    .line 501
    const-string v4, "WifiDataContinuityService"

    const-string v5, "send MESSAGE_DUAL_CONNECTION_TOAST_POPUP_DELAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v2    # "popup_show":Z
    :cond_3
    move v2, v4

    .line 498
    goto :goto_1

    .line 508
    .restart local v2    # "popup_show":Z
    :cond_4
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 509
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/lge/internal/R$layout;->wifi_alert_dialog_checkbox:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mAlertDialogView:Landroid/view/View;

    .line 510
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    if-nez v3, :cond_5

    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v0, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 512
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/lge/internal/R$string;->sp_wifi_switch_to_mobile_title_NORMAL:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    new-instance v6, Lcom/lge/wifi/impl/WifiDataContinuityService$7;

    invoke-direct {v6, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$7;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/lge/wifi/impl/WifiDataContinuityService$6;

    invoke-direct {v6, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$6;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/lge/wifi/impl/WifiDataContinuityService$5;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$5;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mAlertDialogView:Landroid/view/View;

    sget v5, Lcom/lge/internal/R$id;->wifi_check:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mAlertDialogView:Landroid/view/View;

    sget v5, Lcom/lge/internal/R$id;->wifi_check:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v5, Lcom/lge/wifi/impl/WifiDataContinuityService$8;

    invoke-direct {v5, p0}, Lcom/lge/wifi/impl/WifiDataContinuityService$8;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    .line 557
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 558
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    move v3, v4

    .line 561
    goto/16 :goto_0
.end method

.method private showMultipleNetworkConnectionToastPopup()V
    .locals 7

    .prologue
    .line 445
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$string;->sp_wifi_unavailable_use_mobile_data_toast:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "noti":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->checkAndSetConnectivityInstance()V

    .line 448
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mCM:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 450
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    .line 451
    const-string v4, "WifiDataContinuityService"

    const-string v5, "showMultipleNetworkConnectionToastPopup - cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v1    # "mobileInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v4, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 457
    .local v3, "toast":Landroid/widget/Toast;
    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v3    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiDataContinuityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotiForDCF(ILjava/lang/String;)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v1, "WifiDataContinuityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotiForDCF, reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ssid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez p2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.SHOW_NOTI_FOR_DCF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v1, "show_ssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private showWifiNetworkOnlyConnectionToastPopup()V
    .locals 6

    .prologue
    .line 468
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget v4, Lcom/lge/internal/R$string;->sp_wifi_unavailable_keep_wifi_data_toast:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "noti":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 471
    .local v2, "toast":Landroid/widget/Toast;
    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiDataContinuityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bookEnableProfile(ILjava/lang/String;I)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "waitMillSec"    # I

    .prologue
    const/4 v3, 0x1

    .line 103
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    .line 104
    if-nez p3, :cond_0

    .line 105
    const p3, 0xea60

    .line 109
    :cond_0
    const-string v0, "WifiDataContinuityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bookEnableProfile, netId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", waitMillSec : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    invoke-virtual {v0, v3}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    const/4 v2, 0x0

    invoke-static {v1, v3, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    :cond_1
    return-void
.end method

.method public disableNetworkWithNetId(ILjava/lang/String;I)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "WifiDataContinuityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableNetworkWithNetId, netId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x20404

    invoke-static {v1, v2, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 128
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/lge/wifi/impl/WifiDataContinuityService;->showNotiForDCF(ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/16 v0, 0x3a98

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->bookEnableProfile(ILjava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->bookEnableProfile(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public initWifiDataContinuityService(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStoreProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wifiConfigStoreProxy"    # Lcom/android/server/wifi/WifiConfigStoreProxy;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 88
    iput-object p3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    .line 89
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->registeBroadcastReceiver()V

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DataContinuityServiceHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "dataContHandler":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 94
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 95
    new-instance v2, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    invoke-direct {v2, p0, v1}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;-><init>(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->registerForDualConnectionSettingChange()V

    .line 99
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 100
    return-void
.end method

.method public isCaptiveProfile(I)Z
    .locals 6
    .param p1, "netId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiConfigStoreProxy:Lcom/android/server/wifi/WifiConfigStoreProxy;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiConfigStoreProxy;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 140
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 143
    const-string v3, "WifiDataContinuityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCaptiveProfile, config.captiveCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->captiveCheck:I

    if-ne v3, v1, :cond_0

    .line 147
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public isInternetCheckAvailable()Z
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->checkAndSetConnectivityInstance()V

    .line 170
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mWifiExtManager:Lcom/lge/wifi/impl/WifiExtManager;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/WifiExtManager;->isInternetCheckAvailable()Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportWiFiNetworkisValid(Z)V
    .locals 3
    .param p1, "isCaptive"    # Z

    .prologue
    const/4 v2, 0x3

    .line 151
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->removeMessages(I)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mDisableNetowrkDlg:Landroid/app/AlertDialog;

    .line 160
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wifi.CHANGE_WIFI_NETWORK_VALIDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    const-string v1, "WifiDataContinuityService"

    const-string v2, "reportWiFiNetworkisValid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method