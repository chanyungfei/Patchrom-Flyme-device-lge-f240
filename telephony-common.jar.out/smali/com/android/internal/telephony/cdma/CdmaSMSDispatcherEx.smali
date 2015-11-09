.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "CdmaSMSDispatcherEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;
    }
.end annotation


# static fields
.field private static final ECM_BLOCK_DLG_EXIT_NO:Ljava/lang/String; = "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_NO"

.field private static final ECM_BLOCK_DLG_EXIT_YES:Ljava/lang/String; = "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_YES"

.field private static final EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field protected static final TAG:Ljava/lang/String; = "CdmaSMSDispatcherEx"

.field private static sFirstCond:Z

.field private static sSecondCond:Z


# instance fields
.field IMS_AUTHORITY:Ljava/lang/String;

.field IMS_CONTENT_URI:Landroid/net/Uri;

.field SMS_OVER_IP_NETWORK:Ljava/lang/String;

.field TABLE_NAME:Ljava/lang/String;

.field private cdmaDanSentReceiver:Landroid/content/BroadcastReceiver;

.field private cdmaDanStatusReportReceiver:Landroid/content/BroadcastReceiver;

.field private cdmaDomainNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private final mECBMExitReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCode:I

.field mResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z

    .line 72
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 60
    const-string v4, "lgims_com_vzw_service_sms"

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->TABLE_NAME:Ljava/lang/String;

    .line 61
    const-string v4, "com.lge.ims.provider.lgims"

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->IMS_AUTHORITY:Ljava/lang/String;

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->IMS_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->IMS_CONTENT_URI:Landroid/net/Uri;

    .line 63
    const-string v4, "sdm_sms_over_ip_network"

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->SMS_OVER_IP_NETWORK:Ljava/lang/String;

    .line 67
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mECBMExitReceiver:Landroid/content/BroadcastReceiver;

    .line 572
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDomainNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$3;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDanSentReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$4;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDanStatusReportReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    const-string v4, "CdmaSMSDispatcherEx"

    const-string v5, "CdmaSMSDispatcherEx created"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v6, "sms_dan_send"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 82
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v1, "filter_DAN_send":Landroid/content/IntentFilter;
    const-string v4, "com.lge.ims.action.DOMAIN_NOTIFICATION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDomainNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v2, "filter_DAN_sent":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v3, "filter_DAN_status_report":Landroid/content/IntentFilter;
    const-string v4, "com.lge.kddi.intent.action.DAN_SENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v4, "com.lge.kddi.intent.action.DAN_DELIVERED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDanSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->cdmaDanStatusReportReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const/16 v4, 0x132

    invoke-virtual {p1, p0, v4, v7}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mECBMExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filter_DAN_send":Landroid/content/IntentFilter;
    .end local v2    # "filter_DAN_sent":Landroid/content/IntentFilter;
    .end local v3    # "filter_DAN_status_report":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultCode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultCode:I

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sFirstCond:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sSecondCond:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
    .param p1, "x1"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendDomainNotiMessage(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method private getSMSoverIPNetworksIndication()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 518
    const-string v5, "false"

    .line 519
    .local v5, "sms_over_ip_network_indication":Ljava/lang/String;
    const-string v0, "/data/data/com.lge.ims/databases/lgims.db"

    .line 520
    .local v0, "IMS_CONFIG_DB":Ljava/lang/String;
    const-string v1, "lgims_com_vzw_service_sms"

    .line 521
    .local v1, "LGIMS_SMS_TABLE":Ljava/lang/String;
    const/4 v4, 0x0

    .line 522
    .local v4, "imsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 525
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 531
    if-nez v4, :cond_0

    .line 532
    const-string v7, "getSMSoverIPNetworksIndication(), imsDB is null"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 559
    :goto_0
    return v6

    .line 526
    :catch_0
    move-exception v3

    .line 527
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select sdm_sms_over_ip_network from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_1

    .line 539
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 540
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->SMS_OVER_IP_NETWORK:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 545
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_1
    if-eqz v4, :cond_2

    .line 549
    const-string v7, "getSMSoverIPNetworksIndication(), imsDB make be close"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 550
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 552
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSMSoverIPNetworksIndication(), sms_over_ip_network_indication=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 554
    if-eqz v5, :cond_3

    const-string v7, "false"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 555
    :cond_3
    const-string v7, "getSMSoverIPNetworksIndication(), smsOverIPNetworksIndication is false"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_4
    :try_start_2
    const-string v7, "getSMSoverIPNetworksIndication(), cursor moveToFirst error"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 545
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v6

    .line 558
    :cond_5
    const-string v6, "getSMSoverIPNetworksIndication(), smsOverIPNetworksIndication is true"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 559
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private isSmsOverImsMo()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, "bIsSmsOverImsMo":Z
    const/4 v0, 0x0

    .line 502
    .local v0, "bIsImsRegi":Z
    const/4 v2, 0x0

    .line 503
    .local v2, "bSMSoverIPNetworksIndication":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->isIms()Z

    move-result v0

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSMSoverIPNetworksIndication()Z

    move-result v2

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmsOverImsMo(), bIsImsRegi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    bSMSoverIPNetworksIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 506
    if-ne v0, v5, :cond_0

    if-ne v2, v5, :cond_0

    .line 507
    const/4 v1, 0x1

    .line 509
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmsOverImsMo(), bIsSmsOverImsMo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 510
    return v1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    .line 107
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v2, "sms_dan_send"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mECBMExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    const-string v1, "enable_sms_over_ims_on_volte_e911"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    :cond_1
    return-void
.end method

.method protected enableAutoDCDisconnect(I)V
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 566
    const-string v0, "enableAutoDCDisconnect()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->enableAutoDCDisconnect(I)V

    .line 568
    return-void
.end method

.method protected handleCdmaStatusReportKDDI(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 633
    const-string v5, "handleCdmaStatusReport(), [KDDI],  handleCdmaStatusReport()"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 634
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 635
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 636
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 638
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->DELIVERYPENDINGLISTFORKDDI:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 640
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 642
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 645
    const-string v5, "handleStatusReport(), UI <-- CdmaSMSDispatcher(kddi)"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    const-string v5, "handleCdmaStatusReport(), [KDDI], mMessageRef not matched"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 652
    return-void

    .line 634
    .restart local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p3, v2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 195
    .local v10, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v10, :cond_3

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "messageUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSubId()J

    move-result-wide v4

    if-eqz p5, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object v3, p0

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    .end local v7    # "messageUri":Landroid/net/Uri;
    move-result-object v7

    .line 205
    .restart local v7    # "messageUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v3

    .line 206
    .local v3, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getFormat()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 207
    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 211
    .end local v3    # "map":Ljava/util/HashMap;
    .end local v7    # "messageUri":Landroid/net/Uri;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 192
    .end local v10    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    .restart local v7    # "messageUri":Landroid/net/Uri;
    .restart local v10    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 209
    .end local v7    # "messageUri":Landroid/net/Uri;
    :cond_3
    const-string v2, "sendEmailoverText(), fail : pdu is null"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p13, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p14, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 222
    new-instance v20, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 223
    .local v20, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "sprint_segment_sms"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 252
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "cdma_priority_indicator"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    sget v5, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitPriority:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 261
    :cond_0
    if-eqz p7, :cond_5

    if-eqz p8, :cond_5

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p9

    invoke-static {v0, v1, v5, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 264
    .local v18, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v18, :cond_6

    .line 265
    const-string v5, "sendNewSubmitPdu(), failed : submitPdu is null"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 267
    const/4 v5, 0x3

    move-object/from16 v0, p6

    invoke-static {v0, v5}, Landroid/telephony/SmsManager;->sendExceptionbySentIntent(Landroid/app/PendingIntent;I)V

    .line 278
    :goto_2
    return-void

    .line 230
    .end local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_4

    .line 231
    const/16 v5, 0x9

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 233
    .local v17, "context":Landroid/content/Context;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1120083

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 235
    .local v16, "ascii7bitForLongMsg":Z
    if-eqz v16, :cond_2

    .line 236
    const-string v5, "CdmaSMSDispatcherEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ascii7bitForLongMsg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v5, 0x2

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v7, "support_7bit_ascii_ems"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 241
    const/4 v5, 0x2

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 247
    .end local v16    # "ascii7bitForLongMsg":Z
    .end local v17    # "context":Landroid/content/Context;
    :cond_3
    :goto_3
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 245
    :cond_4
    const/4 v5, 0x4

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 261
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 272
    .restart local v18    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 274
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getFormat()Ljava/lang/String;

    move-result-object v9

    if-eqz p8, :cond_7

    if-eqz p10, :cond_8

    :cond_7
    const/4 v14, 0x1

    :goto_4
    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p4

    move/from16 v15, p11

    invoke-virtual/range {v5 .. v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 277
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2

    .line 274
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v14, 0x0

    goto :goto_4
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "isExpectMore"    # Z
    .param p10, "cbAddress"    # Ljava/lang/String;
    .param p11, "isMultiPart"    # Z
    .param p12, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p13, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p14, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 288
    const-string v3, "sendNewSubmitPdu()"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 289
    new-instance v20, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 290
    .local v20, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v4, "sprint_segment_sms"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 307
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v4, "cdma_priority_indicator"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    sget v3, Lcom/android/internal/telephony/SMSDispatcherEx;->mSubmitPriority:I

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 319
    :cond_0
    if-eqz p10, :cond_5

    .line 320
    if-eqz p7, :cond_4

    if-eqz p8, :cond_4

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p10

    invoke-static {v0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/LGCdmaSmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 327
    .local v7, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :goto_2
    if-eqz v7, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p11

    .line 328
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Z)Ljava/util/HashMap;

    move-result-object v9

    .line 329
    .local v9, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getFormat()Ljava/lang/String;

    move-result-object v12

    if-eqz p8, :cond_1

    if-eqz p9, :cond_7

    :cond_1
    const/16 v17, 0x1

    :goto_3
    const/16 v18, -0x1

    move-object/from16 v8, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p4

    invoke-virtual/range {v8 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 331
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 335
    .end local v9    # "map":Ljava/util/HashMap;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    return-void

    .line 297
    .end local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 298
    const/16 v3, 0x9

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 302
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto :goto_0

    .line 300
    :cond_3
    const/4 v3, 0x4

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    .line 320
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 323
    :cond_5
    if-eqz p7, :cond_6

    if-eqz p8, :cond_6

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .restart local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto :goto_2

    .end local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 329
    .restart local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v9    # "map":Ljava/util/HashMap;
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 333
    .end local v9    # "map":Ljava/util/HashMap;
    :cond_8
    const-string v3, "sendNewSubmitPdu(), getSubmitPdu() returned null"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 18
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 345
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 346
    .local v17, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 347
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 348
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    .line 349
    const/16 v4, 0x9

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 353
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 359
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 362
    .local v15, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_3

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 364
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getFormat()Ljava/lang/String;

    move-result-object v8

    if-nez p8, :cond_2

    const/4 v13, 0x1

    :goto_2
    const/4 v14, -0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 366
    .local v16, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 370
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_3
    return-void

    .line 351
    .end local v15    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 359
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 364
    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v15    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 368
    .end local v5    # "map":Ljava/util/HashMap;
    :cond_3
    const-string v4, "sendNewSubmitPduforEmailoverSms(), getSubmitPdu() returned null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x1

    .line 440
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 445
    .local v2, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->checkNotInService()Z

    move-result v3

    if-ne v5, v3, :cond_1

    .line 449
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mSyncronousSending:Z

    if-eqz v3, :cond_0

    .line 450
    const-string v3, "sendSmsByPstn()_Ex, due to Not In Service, send failed intent and dequeueFailedPendingMessage"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->dequeueFailedPendingMessage(I)V

    .line 495
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->getNotInServiceError(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 459
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, "reply":Landroid/os/Message;
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v4, "pdu"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 462
    .local v0, "pdu":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms(), Is System In PRL - mPhone.isSystemInPrl(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->isSystemInPrl()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms(), Is UICC inserted into device - mPhone.isUiccInserted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->isUiccInserted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v4, "sms_over_lgims"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    const-string v3, "sendSms(), Send SMS OVER LG IMS Routine"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->isSmsOverImsMo()Z

    move-result v3

    if-ne v5, v3, :cond_2

    .line 469
    const-string v3, "sendSms(), Send SMS using SMS over LG IMS"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v3, v0, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 473
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0

    .line 475
    :cond_2
    const-string v3, "sendSms(), Send SMS using 1x"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 476
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 484
    :cond_3
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->isIms()Z

    move-result v3

    if-nez v3, :cond_4

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 487
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v3, v0, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 490
    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto/16 :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 375
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "enable_sms_over_ims_on_volte_e911"

    invoke-static {v5, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    const-string v0, "true"

    const-string v2, "persist.radio.sms_ims"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    const-string v0, "CdmaSMSDispatcherEx"

    const-string v2, "allow sending SMS in Emergency Callback mode because ImsReg is true"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v2, "support_sprint_sms_roaming_guard"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcherEx;->getSmsIsRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 423
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    :goto_1
    const-string v0, "sendSubmitPdu(), Return, This is ROAMING Message."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 435
    :goto_2
    return-void

    .line 381
    :cond_2
    const-string v0, "CdmaSMSDispatcherEx"

    const-string v2, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 383
    const-string v0, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver new"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 384
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_YES"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v0, "com.lge.phone.action.ECM_BLOCK_DLG_EXIT_NO"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 400
    const-string v0, "[SMS_OVER_IMS_ON_VOLTE_E911] after sendOrderedBroadcast"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_2

    .line 386
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v10    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v0, "[SMS_OVER_IMS_ON_VOLTE_E911] CdmaSMSDispatcherReceiver unregisterReceiver()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mResultReceiver:Landroid/content/BroadcastReceiver;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx$CdmaSMSDispatcherReceiver;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    goto :goto_3

    .line 406
    :cond_4
    const-string v0, "support_sms_mo_in_ecbm"

    invoke-static {v5, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const-string v2, "911"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    const-string v0, "CdmaSMSDispatcherEx"

    const-string v2, "Allow Sending SMS in Emergency Callback mode when addr is 911"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    :cond_5
    const-string v0, "CdmaSMSDispatcherEx"

    const-string v2, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_2

    .line 424
    :catch_0
    move-exception v9

    .line 425
    .local v9, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v0, "sendSubmitPdu(), CanceledException when try to send."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 434
    .end local v9    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcherEx;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2
.end method
