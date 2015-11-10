.class public abstract Lcom/android/internal/telephony/InboundSmsHandlerEx;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "InboundSmsHandlerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;,
        Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field protected static final APP_DIRECTED_SMS_FORMATTED:I = 0x0

.field protected static final APP_DIRECTED_SMS_NORMAL:I = -0x1

.field protected static final APP_DIRECTED_SMS_PROCESSED:I = 0x1

.field protected static final APP_DIRECTED_SMS_VZWLBSROVER:I = -0x2

.field private static final DUPLICATE_PROJECTION:[Ljava/lang/String;

.field public static final EMS_EXPIRATION_TIME:I = 0x493e0

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field static final INCOMPLETE_SELECT:Ljava/lang/String; = "reference_number=? AND time=?"

.field private static final KEYWORD_MOBILEBOX_PRO:Ljava/lang/String; = "Mobilbox Pro"

.field private static final KIZON_PACKAGE:Ljava/lang/String; = "com.lge.band"

.field private static final KIZON_PATTERN:Ljava/util/regex/Pattern;

.field private static final KIZON_PREFIX:Ljava/lang/String; = "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

.field private static final MCAFEE_PACKAGE:Ljava/lang/String; = "com.wsandroid.suite.lge"

.field private static final MCAFEE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MCAFEE_PREFIX:Ljava/lang/String; = "service.wsandroid.lge.token"

.field private static final MCAFEE_WEB_PREFIX:Ljava/lang/String;

.field private static final MEM_THRESHOLD:I = 0x2000

.field public static final MISSING_CONCAT_CHAR:Ljava/lang/String; = "(...)"

.field private static final MOBILEBOX_PRO_SERVER:Ljava/lang/String; = "3311"

.field private static final NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PUBLIC_FIRST_BYTE:B = -0xft

.field private static final PUBLIC_PACKAGE:Ljava/lang/String; = "com.tion.securitysms"

.field private static final PUBLIC_SECOND_BYTE:B = -0x60t

.field public static RECEIVE_DAN_SUCCESS:Z = false

.field private static final SMS_INBOX_CONSTRAINT:Ljava/lang/String; = "(type = 1)"

.field private static final SMS_INBOX_MAX_COUNT:I = 0x32

.field private static final SPTS_ADDRESS:Ljava/lang/String; = "00000000000"

.field public static final STITCHING_WAIT_TIME:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String; = "Mms Testbed"

.field private static final TFDM_CLASS_NAME:Ljava/lang/String; = "com.tracfone.generic.clientprovisioninghandler.DeviceManagerSMSIntentReceiver"

.field private static final TFDM_PACKAGE_NAME:Ljava/lang/String; = "com.tracfone.generic.clientprovisioninghandler"

.field private static final TFDM_PREFIX:Ljava/lang/String; = "//DM"

.field private static final TFDM_SERVER:Ljava/lang/String; = "50228"

.field private static final VVMApp:Ljava/lang/String; = "com.coremobility.app.vnotes"

.field private static final mOperatorMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mRawUri:Landroid/net/Uri;

.field private static final prefixVZW:Ljava/lang/String; = "//VZW"


# instance fields
.field protected lgu:Lcom/android/internal/telephony/LGUSmsUtils;

.field protected sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    sput-boolean v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->RECEIVE_DAN_SUCCESS:Z

    .line 132
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    const-string v1, "icc_index"

    #aput-object v1, v0, v5

    const-string v1, "time"

    #aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date_sent"

    aput-object v1, v0, v4

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    .line 195
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.provider.Telephony.VOICE_RECEIVED"

    aput-object v1, v0, v2

    const-string v1, "android.provider.Telephony.VIDEO_RECEIVED"

    aput-object v1, v0, v3

    const-string v1, "android.provider.Telephony.CALLBACKURL_SKT_RECEIVED"

    aput-object v1, v0, v4

    const-string v1, "android.provider.Telephony.CALLBACKURL_KT_RECEIVED"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^((\\[[wW][eE][bB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->SMS_WEB_SEND:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\])[ \n\r]?)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_WEB_PREFIX:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_WEB_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_PATTERN:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "^KizON.*\\[[0-9a-zA-Z+/=]{6}\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->KIZON_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "OperatorMessage"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 256
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->initOperatorMessagesMap()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "lgu_dispatch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 262
    new-instance v0, Lcom/android/internal/telephony/LGUSmsUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/LGUSmsUtils;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->lgu:Lcom/android/internal/telephony/LGUSmsUtils;

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "sprint_reassembly_sms"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    new-instance v0, Lcom/android/internal/telephony/LGSprintReassemblySms;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/LGSprintReassemblySms;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "force_write_mode_allowed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->allowOpWriteSmsForPhone()V

    .line 277
    :cond_3
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "isConcat"    # Z
    .param p3, "existsPortAddrs"    # Z
    .param p4, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BZZ",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1448
    .local p5, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1449
    const-string v1, "KTPortMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1450
    const-string v1, "SKTCommonPush"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1451
    const-string v1, "SKTUrlCallback"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1452
    const-string v1, "lgu_gsm_operator_message"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1458
    :goto_0
    if-nez p2, :cond_0

    .line 1459
    const-string v1, "specialMessage"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1461
    :cond_0
    return-void

    .line 1454
    :cond_1
    const-string v1, "KTUrlCallback"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1455
    const-string v1, "spam"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private addOperatorMessageList(Ljava/lang/String;[[BLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pdus"    # [[B
    .param p3, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[B",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p4, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1465
    const-string v0, "spam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2, p5}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorSpamMessage(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p3, p2, p5}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSMSPermissionTracking()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2305
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2306
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2308
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewSms(), [Permission Check] allowed SMS_RECEIVED_ACTION Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2315
    .end local v0    # "i":I
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2317
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2318
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNewSms(), [Permission Check] allowed SMS_DELIVER_ACTION Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2322
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private allowOpWriteSmsForPhone()V
    .locals 9

    .prologue
    .line 2714
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2715
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.phone"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2716
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2717
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 2718
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 2719
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : !MODE_ALLOWED -> MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2720
    const/16 v5, 0xf

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v7, "com.android.phone"

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 2729
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 2723
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "mode":I
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "addTrackerToRawTable, OP_WRITE_SMS : MODE_ALLOWED "

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2725
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mode":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2727
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Phone package not found: com.android.phone"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "refNumber"    # Ljava/lang/String;

    .prologue
    .line 2511
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v6, "ConcatMTCheckTimestamp_DCM"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2512
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "comparingTime":Ljava/lang/String;
    :goto_0
    const-string v4, "address=? AND reference_number=? AND date<?"

    .line 2518
    .local v4, "whereEx":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v5, 0x2

    aput-object v0, v3, v5

    .line 2521
    .local v3, "whereArgsEx":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2522
    .local v1, "deleteCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart(), [KRSMS] duplicated reference number & more than 10 minutes earlier timestamp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2528
    .end local v1    # "deleteCnt":I
    :goto_1
    return-void

    .line 2515
    .end local v0    # "comparingTime":Ljava/lang/String;
    .end local v3    # "whereArgsEx":[Ljava/lang/String;
    .end local v4    # "whereEx":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "comparingTime":Ljava/lang/String;
    goto :goto_0

    .line 2523
    .restart local v3    # "whereArgsEx":[Ljava/lang/String;
    .restart local v4    # "whereEx":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2524
    .local v2, "e":Landroid/database/SQLException;
    const-string v5, "processMessagePart(), Can\'t access multipart SMS database"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2525
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 2526
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "processMessagePart(), Runtime Exception: maybe concat reference is mixed"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkDuplicateMsg(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2534
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2535
    .local v0, "cursorCount":I
    if-nez v0, :cond_0

    .line 2536
    const-string v2, "checkDuplicateKddiMessage(), [KDDI]  Not duplicated message "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 2537
    const/4 v1, 0x0

    .line 2550
    .local v1, "isDuplicated":Z
    :goto_0
    return v1

    .line 2540
    .end local v1    # "isDuplicated":Z
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicateKddiMessage(), [KDDI] Stored message data: _id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  address ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mcTimeStamp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_1

    .line 2546
    :cond_1
    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Duplicated message "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2547
    const/4 v1, 0x1

    .restart local v1    # "isDuplicated":Z
    goto :goto_0
.end method

.method private checkKDDIConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "refNumber"    # Ljava/lang/String;

    .prologue
    .line 2493
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x3e800

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "comparingTime":Ljava/lang/String;
    const-string v4, "reference_number=? AND date<?"

    .line 2495
    .local v4, "whereEx":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 2498
    .local v3, "whereArgsEx":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2499
    .local v1, "deleteCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessagePart(), [KDDI] duplicated reference number & more than 256 secs earlier timestamp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2505
    .end local v1    # "deleteCnt":I
    :goto_0
    return-void

    .line 2500
    :catch_0
    move-exception v2

    .line 2501
    .local v2, "e":Landroid/database/SQLException;
    const-string v5, "processMessagePart(), Can\'t access multipart SMS database"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2502
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 2503
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v5, "processMessagePart(), Runtime Exception: maybe concat reference is mixed"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkKDDIDuplicateMsg(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .locals 9
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "destPort"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 2381
    instance-of v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2382
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-ne v1, v8, :cond_0

    .line 2385
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v5

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 2386
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(ILjava/lang/Object;)V

    move v1, v8

    .line 2398
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    return v1

    .line 2391
    :cond_0
    iget v1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2392
    .local v7, "discard":Z
    if-eqz v7, :cond_1

    .line 2394
    const-string v1, "dispatchNormalMessage(), [KDDI] discard duplicate Message "

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move v1, v8

    .line 2395
    goto :goto_0

    .line 2397
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v5

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 2398
    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v1

    goto :goto_0
.end method

.method private controlSeperateSmsUicc(Lcom/android/internal/telephony/InboundSmsTracker;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string v1, ""

    return-object v1

    .line 2406
    const-string v2, "icc_index"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2407
    .local v0, "iccColumn":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2408
    .local v1, "iccSring":Ljava/lang/String;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2410
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 2411
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2412
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2414
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2416
    :cond_2
    const/4 v2, -0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2417
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v2

    if-lez v2, :cond_3

    .line 2418
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2420
    :cond_3
    return-object v1
.end method

.method private deleteDuplicateSMSKDDI(Landroid/database/Cursor;)Z
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2568
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/16 v6, 0x13

    if-le v5, v6, :cond_0

    .line 2569
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2570
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2572
    .local v0, "_id":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2573
    .local v1, "dup_delete_MessageUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "_id =?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDuplicateKddiMessage(), [KDDI] delete old one in duplicate SMS database  _id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    if-eqz p1, :cond_0

    .line 2582
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .end local v0    # "_id":Ljava/lang/String;
    .end local v1    # "dup_delete_MessageUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    move v3, v4

    .line 2587
    :cond_1
    :goto_1
    return v3

    .line 2575
    .restart local v0    # "_id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2576
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2577
    const-string v4, "checkDuplicateKddiMessage(), [KDDI]  Can\'t access duplicate SMS database"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2581
    if-eqz p1, :cond_1

    .line 2582
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2581
    :cond_2
    if-eqz p1, :cond_0

    .line 2582
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2581
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_3

    .line 2582
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private dispatchPduKRTestbed(Ljava/lang/String;ILjava/lang/String;[[BLandroid/content/BroadcastReceiver;)I
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "messageCount"    # I
    .param p3, "serviceCenter"    # Ljava/lang/String;
    .param p4, "pdus"    # [[B
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2755
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2756
    .local v9, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p2, :cond_1

    .line 2757
    aget-object v0, p4, v7

    const-string v1, "3gpp2"

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 2759
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_0

    .line 2760
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    .line 2761
    .local v6, "data":[B
    const/4 v0, 0x0

    array-length v1, v6

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2756
    .end local v6    # "data":[B
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2767
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v0, :cond_2

    .line 2768
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v2, p5

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2773
    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object v2, p5

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private dispatchVVM3Pdu([B)V
    .locals 6
    .param p1, "vvm3pduToDispatch"    # [B

    .prologue
    .line 1913
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt.vvm3] intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1916
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1918
    const-string v0, "[sms.mt.vvm3] dispatchVVM3Pdu end]"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1919
    return-void
.end method

.method private getSMSInboxMessageCount()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1558
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(type = 1)"

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1562
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 1563
    const/4 v7, 0x0

    .line 1568
    :goto_0
    return v7

    .line 1566
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1567
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getUserDataForSafeMMS(Landroid/telephony/SmsMessage;)[B
    .locals 5
    .param p1, "msg"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v4, 0x0

    .line 2822
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAFE SMS isSafeSMSCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-byte v2, v2, Lcom/android/internal/telephony/SmsHeader;->safeSMS:B

    and-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2824
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 2825
    .local v0, "safeMmsPdu":[B
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/android/internal/telephony/SmsHeader;->safeSMS:B

    aput-byte v1, v0, v4

    .line 2826
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2830
    .end local v0    # "safeMmsPdu":[B
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v0

    goto :goto_0
.end method

.method private handleCdmaSmsCDG2(Landroid/telephony/SmsMessage;)V
    .locals 10
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/16 v9, 0x1002

    const/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), CDMA SMS CDG2 Test mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_sms_cdg2"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2328
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2329
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v4, "sms_over_lgims"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_over_lgims"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2331
    const-string v3, "persist.radio.sms_ims"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "mImsRegi":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2333
    const-string v3, "handleMessage(), IMS is not registered!Execute SMS CDG2 Test mode"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2334
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2335
    iget-object v1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2336
    .local v1, "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 2338
    .local v2, "teleService":I
    if-ne v2, v9, :cond_0

    .line 2339
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getSMSInboxMessageCount()I

    move-result v3

    if-lt v3, v8, :cond_0

    .line 2340
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2359
    .end local v0    # "mImsRegi":Ljava/lang/String;
    .end local v1    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2    # "teleService":I
    :cond_0
    :goto_0
    return-void

    .line 2344
    .restart local v0    # "mImsRegi":Ljava/lang/String;
    :cond_1
    const-string v3, "handleMessage(), IMS is registered!Ignore SMS CDG2 Test mode"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2347
    .end local v0    # "mImsRegi":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), KEY_SMS_OVER_LGIMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_over_lgims"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2348
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 2349
    iget-object v1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2350
    .restart local v1    # "smsCdma":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    .line 2352
    .restart local v2    # "teleService":I
    if-ne v2, v9, :cond_0

    .line 2353
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getSMSInboxMessageCount()I

    move-result v3

    if-lt v3, v8, :cond_0

    .line 2354
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    goto :goto_0
.end method

.method private handleConcatStitching(Lcom/android/internal/telephony/InboundSmsTracker;I[[BZZZLjava/lang/String;Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "exceedFirstTimePeriod"    # Z
    .param p5, "exceedSecondTimePeriod"    # Z
    .param p6, "allSegmentReceived"    # Z
    .param p7, "missingSegIndex"    # Ljava/lang/String;
    .param p8, "stitchRefMsg"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 2449
    if-eqz p4, :cond_2

    .line 2450
    new-instance p7, Ljava/lang/String;

    .end local p7    # "missingSegIndex":Ljava/lang/String;
    invoke-direct {p7}, Ljava/lang/String;-><init>()V

    .line 2451
    .restart local p7    # "missingSegIndex":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 2452
    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p3, v0

    array-length v1, v1

    if-lez v1, :cond_1

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] fill pdu seg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2451
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2456
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] fill missing seg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2457
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 2458
    const-string v1, ","

    invoke-virtual {p7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 2459
    if-eqz p8, :cond_0

    .line 2460
    invoke-virtual {p8}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, p3, v0

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, pdus["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = stitchRefMsg.getPdu()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_1

    .line 2466
    .end local v0    # "i":I
    :cond_2
    if-nez p6, :cond_4

    if-nez p4, :cond_3

    if-eqz p5, :cond_4

    .line 2467
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    .line 2471
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart, [RED] tracker.isNeedToKeepDB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2472
    return-object p7

    .line 2469
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/InboundSmsTracker;->isNeedToKeepDB:Z

    goto :goto_2
.end method

.method private handleConcatStitching2(IZZZLjava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "messageCount"    # I
    .param p2, "exceedFirstTimePeriod"    # Z
    .param p3, "exceedSecondTimePeriod"    # Z
    .param p4, "allSegmentReceived"    # Z
    .param p5, "missingSegIndex"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2477
    if-le p1, v1, :cond_0

    .line 2478
    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 2479
    const-string v0, "ctreplace"

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2480
    if-eqz p5, :cond_0

    .line 2481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessagePart(), [RED] missingSegIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2482
    const-string v0, "missingSegIndex"

    invoke-virtual {p6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2485
    :cond_1
    const-string v0, "ctreplace"

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleEmsSegTimer(Lcom/android/internal/telephony/InboundSmsTracker;JZI)V
    .locals 26
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "firstTime"    # J
    .param p4, "isFirtMTconcat"    # Z
    .param p5, "mMessageCount"    # I

    .prologue
    .line 2593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt] tracker.getMessageCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2594
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_stitching"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2597
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 2598
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x14

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    .line 2600
    .local v8, "dispatchTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] create first timer. dispatchTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2601
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2626
    .end local v8    # "dispatchTime":J
    :cond_0
    :goto_0
    return-void

    .line 2608
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_expired_time"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2609
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 2610
    const-wide/32 v16, 0x5265c00

    .line 2611
    .local v16, "expiryTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackerToRawTable, [RED] CMCC create first timer. expiryTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2612
    new-instance v2, Ljava/lang/Thread;

    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V

    invoke-direct {v2, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2618
    .end local v16    # "expiryTime":J
    :cond_2
    const-string v2, "[sms.mt] calls EMSSegmentExpirationRunnable"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2619
    new-instance v2, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v23

    move-object/from16 v20, p0

    move-wide/from16 v24, p2

    invoke-direct/range {v19 .. v25}, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Ljava/lang/String;IIJ)V

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private handleMsgKRTestbed(IZ[[BLandroid/database/Cursor;I)I
    .locals 4
    .param p1, "destPort"    # I
    .param p2, "isCdmaWapPush"    # Z
    .param p3, "pdus"    # [[B
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "cursorCount"    # I

    .prologue
    const/4 v3, 0x2

    .line 2734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 2735
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    .line 2736
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2738
    .local v0, "cursorSequence":I
    if-nez p2, :cond_0

    .line 2739
    add-int/lit8 v0, v0, -0x1

    .line 2741
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, p3, v0

    .line 2746
    if-nez v0, :cond_1

    invoke-interface {p4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2747
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2734
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2750
    .end local v0    # "cursorSequence":I
    :cond_2
    return p1
.end method

.method private static initOperatorMessagesMap()V
    .locals 3

    .prologue
    .line 1438
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "specialMessage"

    const-string v2, "GsmSmsKRSpecialMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "SKTCommonPush"

    const-string v2, "GsmSmsSKTPortMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "SKTUrlCallback"

    const-string v2, "GsmSmsSKTUrlCallback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "KTPortMessage"

    const-string v2, "GsmSmsKTPortMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "KTUrlCallback"

    const-string v2, "GsmSmsKTUrlCallback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mOperatorMessages:Ljava/util/HashMap;

    const-string v1, "lgu_gsm_operator_message"

    const-string v2, "GsmSmsLGUMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    return-void
.end method

.method private isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageBody"    # Ljava/lang/String;
    .param p2, "originatingAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2632
    if-nez p1, :cond_1

    .line 2640
    :cond_0
    :goto_0
    return v0

    .line 2636
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDirectedToMailboxPro: messageBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "originatingAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2640
    const-string v1, "Mobilbox Pro"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3311"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 10
    .param p1, "e"    # Landroid/database/sqlite/SQLiteException;

    .prologue
    const/4 v5, 0x1

    .line 2091
    instance-of v6, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v6, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return v5

    .line 2093
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "no transaction is active"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2094
    new-instance v4, Landroid/os/StatFs;

    const-string v6, "/data"

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2095
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 2096
    .local v0, "availBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 2097
    .local v2, "blockSize":J
    mul-long v6, v0, v2

    const-wide/16 v8, 0x2000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 2101
    .end local v0    # "availBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sms.mt] processMessagePart messageCount =["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1273
    const/4 v10, 0x0

    .line 1274
    .local v10, "msg":Landroid/telephony/SmsMessage;
    const-string v9, ""

    .line 1275
    .local v9, "messageBody":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p2, :cond_3

    .line 1276
    aget-object v2, p3, v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3gpp2"

    :goto_1
    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 1279
    if-nez v10, :cond_1

    .line 1275
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1276
    :cond_0
    const-string v0, "3gpp"

    goto :goto_1

    .line 1284
    :cond_1
    if-nez v8, :cond_2

    .line 1285
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1287
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1292
    :cond_3
    if-nez v10, :cond_4

    .line 1293
    const-string v0, "[sms.mt] application directed sms null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1295
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1296
    const/4 v0, 0x2

    .line 1341
    :goto_3
    return v0

    .line 1300
    :cond_4
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v9, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessagePart] msg.mWrappedSmsMessage.messageBody = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1304
    const/4 v7, -0x1

    .line 1305
    .local v7, "directedSmsStatus":I
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_5

    .line 1306
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I

    move-result v7

    .line 1309
    :cond_5
    const/4 v0, 0x1

    if-ne v0, v7, :cond_6

    .line 1310
    const-string v0, "[processMessagePart] return parseDirectedSMS = true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1311
    const-string v0, "[sms.mt] app directed sms has been processed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1313
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1314
    const/4 v0, 0x1

    goto :goto_3

    .line 1315
    :cond_6
    if-nez v7, :cond_7

    .line 1316
    const-string v0, "[processMessagePart] Discard!! there is no application for Application Directed SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1317
    const-string v0, "[sms.mt] app directed sms has been discarded."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1319
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1320
    const/4 v0, 0x1

    goto :goto_3

    .line 1323
    :cond_7
    const/4 v0, -0x2

    if-ne v0, v7, :cond_8

    .line 1325
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.lge.vzwsmsfilter"

    const-string v2, "com.lge.vzwsmsfilter.SmsFilterReceiver"

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1330
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1331
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1335
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1339
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessagePart] directedSmsStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1341
    const/16 v0, 0xb

    goto/16 :goto_3
.end method

.method private processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I
    .locals 6
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B

    .prologue
    const/4 v4, 0x2

    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM messageCount =["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1349
    const/4 v3, 0x0

    aget-object v5, p3, v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3gpp2"

    :goto_0
    invoke-static {v5, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 1351
    .local v2, "msg":Landroid/telephony/SmsMessage;
    if-nez v2, :cond_1

    .line 1352
    const-string v3, "[sms.mt.legacyVVM] sms is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1354
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    move v3, v4

    .line 1378
    :goto_1
    return v3

    .line 1349
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    const-string v3, "3gpp"

    goto :goto_0

    .line 1358
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v1, 0x0

    .line 1360
    .local v1, "legacyVoiceMailNumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 1361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is =["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1363
    if-nez v1, :cond_2

    .line 1364
    const-string v3, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is null"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    move v3, v4

    .line 1365
    goto :goto_1

    .line 1368
    :cond_2
    const-string v3, "900080002021"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1369
    const-string v3, "[sms.mt.legacyVVM] processLegacyVVM legacyVoiceMailNumber is 900080002021"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1371
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1373
    const-string v3, "pdus"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1374
    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1375
    const/4 v3, 0x1

    goto :goto_1

    .line 1378
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    goto :goto_1
.end method

.method private processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)Z
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "messageCount"    # I
    .param p3, "pdus"    # [[B
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "allow_sending_MBP_directed_sms"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "26201"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2648
    :cond_0
    const/4 v0, 0x0

    .line 2706
    :goto_0
    return v0

    .line 2652
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "de.telekom.mds.mbp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2653
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 2654
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2656
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 2657
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 2660
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const-string v0, "[sms.mt] processMobileboxProDirectedSMS MobileboxPro is installed"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2662
    const/4 v10, 0x0

    .line 2663
    .local v10, "msg":Landroid/telephony/SmsMessage;
    const-string v9, ""

    .line 2664
    .local v9, "messageBody":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, p2, :cond_7

    .line 2665
    aget-object v2, p3, v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 2667
    if-nez v10, :cond_5

    .line 2664
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2665
    :cond_4
    const-string v0, "3gpp"

    goto :goto_2

    .line 2671
    :cond_5
    if-nez v8, :cond_6

    .line 2672
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2674
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2678
    :cond_7
    if-nez v10, :cond_8

    .line 2679
    const-string v0, "[sms.mbp] application directed sms null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2681
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 2682
    const/4 v0, 0x1

    goto :goto_0

    .line 2686
    :cond_8
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_9

    .line 2687
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v9, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 2690
    iget-object v0, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v10, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->isDirectedToMailboxPro(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2691
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2693
    .local v1, "mMBPintent":Landroid/content/Intent;
    const-string v0, "de.telekom.mds.mbp"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2694
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2696
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 2699
    const-string v0, "[processMessagePart] return processMobileboxProDirectedSMS = true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2701
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 2702
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2706
    .end local v1    # "mMBPintent":Landroid/content/Intent;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private processTFDM(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v0, 0x0

    .line 2780
    const-string v2, "processTFDM start "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2782
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2816
    :cond_0
    :goto_0
    return v0

    .line 2786
    :cond_1
    aget-object v2, p2, v0

    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 2787
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_0

    .line 2792
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 2793
    .local v9, "originatingAddress":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 2795
    .local v7, "messageBody":Ljava/lang/String;
    const-string v2, "50228"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2797
    const-string v2, "OA is not DM number"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2800
    :cond_2
    const-string v2, "originatingAddress is 50228"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2801
    const-string v2, "//DM"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2803
    const-string v2, "it doesn\'t start With //DM"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 2806
    :cond_3
    const-string v0, "startsWith //DM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2807
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.tracfone.generic.clientprovisioninghandler"

    const-string v2, "com.tracfone.generic.clientprovisioninghandler.DeviceManagerSMSIntentReceiver"

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2812
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2813
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2814
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 2816
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private queryForAllSegments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;

    .prologue
    .line 2836
    const/4 v11, 0x0

    .line 2838
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    const/4 v0, 0x1

    aput-object p2, v9, v0

    const/4 v0, 0x2

    aput-object p3, v9, v0

    .line 2840
    .local v9, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 2841
    .local v12, "phoneId":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p3, v4, v0

    const/4 v0, 0x3

    aput-object v12, v4, v0

    .line 2844
    .local v4, "whereArgsInDSDA":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "ems_segment_timer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "concat_ref_in_dsda"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v3, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2869
    :goto_0
    return-object v11

    .line 2850
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2853
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "use_original_telephony_provider"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2856
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2861
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v1, "concat_ref_in_dsda"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2862
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const-string v3, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 2865
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const-string v8, "address=? AND reference_number=? AND count=?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private seperateSmsUicc(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 16
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 2426
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2427
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 2428
    .local v15, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v15, :cond_0

    iget v6, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 2436
    .local v6, "destPort":I
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZI)V

    .line 2440
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    return-object v2

    .line 2428
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_0
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private storeMsgInDB(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "messageId"    # I
    .param p2, "sent_date"    # Ljava/lang/Long;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 2557
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2558
    .local v0, "vals":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    const-string v1, "date_sent"

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2560
    const-string v1, "body"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    const-string v1, "person"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2562
    const-string v1, "thread_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2563
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2564
    return-object v0
.end method

.method private supportWifiOffEmergency(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 2364
    instance-of v3, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_1

    .line 2365
    const-string v3, "dispatchNormalMessage(), [KDDI] WIFI OFF SmsMessage is cdma instance "

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move-object v2, p1

    .line 2366
    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2367
    .local v2, "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 2368
    .local v1, "serviceCategory":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2369
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    const/16 v3, 0x28

    if-ne v1, v3, :cond_1

    .line 2370
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchNormalMessage(), [KDDI] Service category  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " broadcast to WIFI!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2371
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMS_WIFI_OFF"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2372
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2375
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "serviceCategory":I
    .end local v2    # "wifi_off_sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 38
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 821
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v37

    .line 822
    .local v37, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 826
    .local v16, "firstTime":J
    const/16 v18, 0x0

    .line 829
    .local v18, "isFirtMTconcat":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    .line 831
    const/16 v22, 0x0

    .line 834
    .local v22, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v35

    .line 837
    .local v35, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 838
    .local v20, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 839
    .local v31, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 841
    .local v21, "count":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 844
    .local v34, "seqNumber":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    aput-object v20, v23, v4

    const/4 v4, 0x1

    aput-object v31, v23, v4

    const/4 v4, 0x2

    aput-object v21, v23, v4

    .line 846
    .local v23, "deleteWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 847
    .local v30, "phoneId":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput-object v20, v24, v4

    const/4 v4, 0x1

    aput-object v31, v24, v4

    const/4 v4, 0x2

    aput-object v21, v24, v4

    const/4 v4, 0x3

    aput-object v30, v24, v4

    .line 848
    .local v24, "deleteWhereArgsInDSDA":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 849
    const-string v4, "address=? AND reference_number=? AND count=? AND sub_id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 857
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ConcatMTCheckTimestamp_kddi"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkKDDIConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;)V

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ConcatMTCheckTimestamp"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ConcatMTCheckTimestamp_DCM"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 867
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkConcatTimeStamp(Lcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sequence=? AND sub_id=?"

    const/4 v9, 0x5

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    const/4 v9, 0x1

    aput-object v31, v8, v9

    const/4 v9, 0x2

    aput-object v21, v8, v9

    const/4 v9, 0x3

    aput-object v34, v8, v9

    const/4 v9, 0x4

    aput-object v30, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 885
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 888
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 889
    .local v28, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v29

    .line 890
    .local v29, "pdu":[B
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v27

    .line 891
    .local v27, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    :cond_3
    const/4 v4, 0x5

    .line 936
    if-eqz v22, :cond_4

    .line 937
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 962
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v27    # "oldPdu":[B
    .end local v28    # "oldPduString":Ljava/lang/String;
    .end local v29    # "pdu":[B
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :cond_4
    :goto_2
    return v4

    .line 852
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_5
    :try_start_1
    const-string v4, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 932
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :catch_0
    move-exception v25

    .line 933
    .local v25, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    const/4 v4, 0x2

    .line 936
    if-eqz v22, :cond_4

    .line 937
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 879
    .end local v25    # "e":Landroid/database/SQLException;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    const/4 v9, 0x1

    aput-object v31, v8, v9

    const/4 v9, 0x2

    aput-object v21, v8, v9

    const/4 v9, 0x3

    aput-object v34, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_1

    .line 897
    :cond_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 902
    const/4 v4, 0x3

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v13, v4

    const/4 v4, 0x1

    aput-object v31, v13, v4

    const/4 v4, 0x2

    aput-object v21, v13, v4

    .line 903
    .local v13, "whereArgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] refNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_ref_in_dsda"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 907
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v8, v4

    const/4 v4, 0x1

    aput-object v31, v8, v4

    const/4 v4, 0x2

    aput-object v21, v8, v4

    const/4 v4, 0x3

    aput-object v30, v8, v4

    .line 908
    .local v8, "whereArgsInDSDA":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=? AND sub_id=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 915
    .end local v8    # "whereArgsInDSDA":[Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 916
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 917
    const-string v4, "time"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 918
    .local v36, "timeColumn":I
    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 920
    .end local v36    # "timeColumn":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] NOT new mt seg firstTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 929
    :goto_4
    const-string v4, "time"

    new-instance v5, Ljava/lang/Long;

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 936
    .end local v13    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-eqz v22, :cond_a

    .line 937
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 943
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v37

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 944
    .local v26, "newUri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI of new row -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v19

    .line 949
    .local v19, "mMessageCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 950
    invoke-direct/range {v14 .. v19}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleEmsSegTimer(Lcom/android/internal/telephony/InboundSmsTracker;JZI)V

    .line 954
    :cond_b
    :try_start_4
    invoke-static/range {v26 .. v26}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 955
    .local v32, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 957
    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 959
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 911
    .end local v19    # "mMessageCount":I
    .end local v26    # "newUri":Landroid/net/Uri;
    .end local v32    # "rowId":J
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    .restart local v20    # "address":Ljava/lang/String;
    .restart local v21    # "count":Ljava/lang/String;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .restart local v30    # "phoneId":Ljava/lang/String;
    .restart local v31    # "refNumber":Ljava/lang/String;
    .restart local v34    # "seqNumber":Ljava/lang/String;
    .restart local v35    # "sequence":I
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sRawUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const-string v12, "address=? AND reference_number=? AND count=?"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_3

    .line 925
    :cond_e
    const/16 v18, 0x1

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrackerToRawTable, [RED] new mt seg. firstTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 936
    .end local v13    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "address":Ljava/lang/String;
    .end local v21    # "count":Ljava/lang/String;
    .end local v23    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v24    # "deleteWhereArgsInDSDA":[Ljava/lang/String;
    .end local v30    # "phoneId":Ljava/lang/String;
    .end local v31    # "refNumber":Ljava/lang/String;
    .end local v34    # "seqNumber":Ljava/lang/String;
    .end local v35    # "sequence":I
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_f

    .line 937
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v4

    .line 960
    .end local v22    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "mMessageCount":I
    .restart local v26    # "newUri":Landroid/net/Uri;
    :catch_1
    move-exception v25

    .line 961
    .local v25, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing URI for new row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 962
    const/4 v4, 0x2

    goto/16 :goto_2
.end method

.method public checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "messageId"    # I
    .param p2, "sent_date"    # Ljava/lang/Long;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 2015
    const/4 v11, 0x0

    .line 2016
    .local v11, "isDuplicated":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v8

    .line 2017
    .local v8, "componentName":Landroid/content/ComponentName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicateKddiMessage(), [KDDI] check duplicate ? : originAddr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "// timeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " // Message ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandlerEx;->DUPLICATE_PROJECTION:[Ljava/lang/String;

    const-string v5, "address = ? AND date_sent = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2025
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 2026
    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Duplicate Error"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 2027
    const/4 v11, 0x0

    move v2, v11

    .line 2083
    :goto_0
    return v2

    .line 2031
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkDuplicateMsg(Landroid/database/Cursor;)Z

    move-result v11

    .line 2033
    if-eqz v9, :cond_1

    .line 2034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2038
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "kddi_for_model_only_using_hangout_to_message_duplicate_check"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart(), Delivering SMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicateKddiMessage(), [KDDI] for only kddi model using hangout, is duplicate Message? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 2041
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.talk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v2, v11

    .line 2042
    goto :goto_0

    .line 2047
    :cond_2
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->storeMsgInDB(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v12

    .line 2050
    .local v12, "vals":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "thread_id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v7

    const-string v7, "date_sent asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2053
    if-nez v9, :cond_3

    .line 2054
    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Duplicate.. Delete Error"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 2055
    const/4 v11, 0x0

    move v2, v11

    .line 2056
    goto/16 :goto_0

    .line 2059
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicateKddiMessage(), [KDDI] getCount(), before delete the Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2061
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteDuplicateSMSKDDI(Landroid/database/Cursor;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 2062
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2064
    :cond_4
    if-eqz v9, :cond_5

    .line 2065
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2069
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDuplicateKddiMessage(), [KDDI] is duplicate Message? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    move v2, v11

    .line 2083
    goto/16 :goto_0

    .line 2070
    :catch_0
    move-exception v10

    .line 2071
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2072
    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Can\'t access duplicate SMS database"

    invoke-static {v2, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2075
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 2076
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "checkDuplicateKddiMessage(), [KDDI] Fail to duplicate SMS"

    invoke-static {v2, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2077
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2078
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method protected dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "applicationPrefix"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1054
    new-instance v1, Landroid/content/Intent;

    const-string v0, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const-string v0, "parameters"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const-string v0, "originator"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v0, "prefix"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1065
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1067
    return-void
.end method

.method protected dispatchDirectedVVM([[B)V
    .locals 7
    .param p1, "pdus"    # [[B

    .prologue
    .line 1950
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "3gpp2"

    .line 1953
    .local v6, "strFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    const-string v6, "3gpp"

    .line 1956
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDirectedVVM(), strFormat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1958
    const-string v0, "com.coremobility.app.vnotes"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1959
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1960
    const-string v0, "format"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1961
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1963
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1541
    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1542
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1546
    const-string v1, "format"

    move-object v0, p3

    check-cast v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->setDeliverIntentIfNeeded(Landroid/content/Intent;)V

    .line 1551
    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1552
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x2

    .line 325
    const-string v2, "[sms.mt] dispatchMessage start ["

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 327
    if-nez p1, :cond_0

    .line 328
    const-string v2, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 345
    :goto_0
    return v1

    .line 332
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mSmsReceiveDisabled:Z

    if-eqz v2, :cond_1

    .line 334
    const-string v1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    const-string v2, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 11
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 359
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 362
    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const-string v1, "[sms.mt] dispatchNormalMessage start ["

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 363
    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_8

    .line 365
    :cond_0
    const/4 v4, -0x1

    .line 366
    .local v4, "destPort":I
    if-eqz v10, :cond_4

    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destination port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 410
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->is3gpp2()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZI)V

    .line 418
    .end local v4    # "destPort":I
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "concat_ref_in_dsda"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), [RED] tracker.mLgePhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 425
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v8

    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_3
    :goto_1
    return v8

    .line 373
    .restart local v4    # "destPort":I
    :cond_4
    const-string v1, "wifi_off_emergency_received"

    invoke-static {v5, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->supportWifiOffEmergency(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 379
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "support_sprint_vvm"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    const-string v2, "ro.chameleon.vvm"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v8

    .line 382
    .local v8, "directedVvmApp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), directedVvmApp result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 383
    if-eq v8, v3, :cond_3

    .line 390
    .end local v8    # "directedVvmApp":I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "sprint_reassembly_sms"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sprintReassemblySms:Lcom/android/internal/telephony/LGSprintReassemblySms;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->supportSmsReassembly(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v9

    .line 392
    .local v9, "result":I
    const/16 v1, 0xb

    if-eq v9, v1, :cond_7

    move v8, v9

    .line 393
    goto :goto_1

    .line 398
    .end local v9    # "result":I
    :cond_7
    const-string v1, "kddi_message_duplicate_check"

    invoke-static {v5, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 400
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkKDDIDuplicateMsg(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result v8

    goto :goto_1

    .line 414
    .end local v4    # "destPort":I
    :cond_8
    invoke-direct {p0, p1, v10}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->seperateSmsUicc(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto/16 :goto_0
.end method

.method protected dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/SmsOperatorBasicMessage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    const/4 v9, 0x3

    const/4 v6, 0x1

    .line 1475
    const-string v7, "dispatchOperatorMessage"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1476
    if-nez p2, :cond_1

    .line 1477
    const-string v6, "dispatchOperatorMessage sms null"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1478
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 1480
    const/4 v6, 0x2

    .line 1537
    :cond_0
    :goto_0
    return v6

    .line 1483
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .line 1484
    .local v2, "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v2, :cond_2

    .line 1487
    invoke-interface {v2}, Lcom/lge/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v5

    .line 1488
    .local v5, "value":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 1491
    const-string v7, "valid"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1492
    invoke-interface {v2, p0}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    .line 1493
    .local v0, "dispatchResult":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1494
    if-eqz v0, :cond_2

    .line 1496
    if-ne v0, v6, :cond_3

    .line 1497
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto :goto_0

    .line 1502
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 1503
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v4, :cond_0

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v8, 0xf180

    if-ne v7, v8, :cond_0

    .line 1504
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto :goto_0

    .line 1511
    .end local v0    # "dispatchResult":I
    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchOperatorMessage OPERATE_MESSAGE_VALID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "valid"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto/16 :goto_0

    .line 1523
    .end local v2    # "operatorMessage":Lcom/lge/telephony/SmsOperatorBasicMessage;
    .end local v5    # "value":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v7

    and-int/lit16 v3, v7, 0xff

    .line 1524
    .local v3, "pid_byte":I
    const/16 v7, 0x49

    if-lt v3, v7, :cond_6

    const/16 v7, 0x5d

    if-le v3, v7, :cond_9

    :cond_6
    const/16 v7, 0x60

    if-lt v3, v7, :cond_7

    const/16 v7, 0x7b

    if-le v3, v7, :cond_9

    :cond_7
    const/16 v7, 0x80

    if-lt v3, v7, :cond_8

    const/16 v7, 0xbf

    if-le v3, v7, :cond_9

    :cond_8
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_a

    const-string v7, "KT"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v8, "KTFotaMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v6, :cond_a

    .line 1531
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchOperatorMessage(), message discard : [reserved] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1532
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    goto/16 :goto_0

    .line 1537
    :cond_a
    const/16 v6, 0xb

    goto/16 :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 6
    .param p1, "pdus"    # [[B

    .prologue
    .line 1081
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1083
    const-string v0, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1086
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 7
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms://localhost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1072
    .local v6, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1073
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1074
    const-string v0, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1076
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1078
    return-void
.end method

.method protected getStrMsgWhat(I)Ljava/lang/String;
    .locals 3
    .param p1, "nMsg"    # I

    .prologue
    .line 2267
    const/4 v0, 0x0

    .line 2268
    .local v0, "strRet":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2296
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2299
    :goto_0
    return-object v0

    .line 2270
    :pswitch_1
    const-string v0, "EVENT_NEW_SMS"

    .line 2271
    goto :goto_0

    .line 2273
    :pswitch_2
    const-string v0, "EVENT_BROADCAST_SMS"

    .line 2274
    goto :goto_0

    .line 2276
    :pswitch_3
    const-string v0, "EVENT_BROADCAST_COMPLETE"

    .line 2277
    goto :goto_0

    .line 2279
    :pswitch_4
    const-string v0, "EVENT_RETURN_TO_IDLE"

    .line 2280
    goto :goto_0

    .line 2282
    :pswitch_5
    const-string v0, "EVENT_RELEASE_WAKELOCK"

    .line 2283
    goto :goto_0

    .line 2285
    :pswitch_6
    const-string v0, "EVENT_START_ACCEPTING_SMS"

    .line 2286
    goto :goto_0

    .line 2288
    :pswitch_7
    const-string v0, "EVENT_UPDATE_PHONE_OBJECT"

    .line 2289
    goto :goto_0

    .line 2292
    :pswitch_8
    const-string v0, "EVENT_DAN_SMS_COMPLETE"

    .line 2293
    goto :goto_0

    .line 2268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 281
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "sms_permission_tracking"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addSMSPermissionTracking()V

    .line 294
    :cond_2
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 296
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_sms_cdg2"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleCdmaSmsCDG2(Landroid/telephony/SmsMessage;)V

    .line 300
    :cond_3
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 308
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 309
    if-ne v2, v1, :cond_4

    .line 310
    .local v1, "handled":Z
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 301
    .end local v1    # "handled":Z
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 302
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_1

    .line 309
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected parseDirectedSMS(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/BroadcastReceiver;)I
    .locals 32
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1090
    const/16 v27, 0x0

    .line 1091
    .local v27, "processStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1092
    const-string v2, "[sms.mt.parseDirectedSMS] sms.getMessageBody() is NULL "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1093
    const/16 v27, -0x1

    move/from16 v28, v27

    .line 1266
    .end local v27    # "processStatus":I
    .local v28, "processStatus":I
    :goto_0
    return v28

    .line 1095
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] sms.getMessageBody() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1098
    const/16 v24, 0x0

    .line 1101
    .local v24, "packageIndex":I
    const/4 v15, 0x1

    .line 1105
    .local v15, "bIsSeparator":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1106
    const-string v2, "[sms.mt.parseDirectedSMS] not startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1107
    const/16 v16, 0x0

    .line 1115
    .local v16, "bStartWithVZW":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 1116
    .local v9, "appDirectedSMS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parseDirectedSMS / appDirectedSMS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1119
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "//VZWLBSROVER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1120
    const-string v2, "[sms.mt.parseDirectedSMS] //VZWLBSROVER"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1123
    const/16 v27, -0x2

    move/from16 v28, v27

    .end local v27    # "processStatus":I
    .restart local v28    # "processStatus":I
    goto :goto_0

    .line 1110
    .end local v9    # "appDirectedSMS":Ljava/lang/String;
    .end local v16    # "bStartWithVZW":Z
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_1
    const-string v2, "[sms.mt.parseDirectedSMS] startsWith //VZW "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1111
    const/16 v16, 0x1

    .restart local v16    # "bStartWithVZW":Z
    goto :goto_1

    .line 1130
    .restart local v9    # "appDirectedSMS":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_6

    const-string v2, "//VZW"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1134
    .local v31, "tempSMS":Ljava/lang/String;
    :goto_2
    const-string v2, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1135
    const-string v2, "[sms.mt.parseDirectedSMS] check separator"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1136
    const/4 v15, 0x0

    .line 1142
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 1143
    .local v26, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v20

    .line 1145
    .local v20, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 1146
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGVerizonBranded;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "VZWSMS"

    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/LGVerizonBranded;->isAVSPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGVerizonBranded;->isItSignedByVZW(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1155
    :cond_4
    const/16 v29, 0x0

    .line 1156
    .local v29, "receiverCount":I
    const/16 v21, 0x0

    .line 1157
    .local v21, "isReceiverMatched":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v13, "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1169
    .local v25, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    .line 1170
    .local v30, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v30, :cond_8

    .line 1171
    move-object/from16 v14, v30

    .local v14, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v0, v14

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget-object v8, v14, v19

    .line 1172
    .local v8, "actInfo":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v29, v29, 0x1

    .line 1176
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1184
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    .line 1185
    .local v23, "metaData":Landroid/os/Bundle;
    if-nez v23, :cond_7

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] metaData is null. Unable to get meta data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1171
    .end local v23    # "metaData":Landroid/os/Bundle;
    :cond_5
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v19    # "i$":I
    .end local v20    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v22    # "len$":I
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    .end local v31    # "tempSMS":Ljava/lang/String;
    :cond_6
    move-object/from16 v31, v9

    .line 1130
    goto/16 :goto_2

    .line 1161
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "isReceiverMatched":Z
    .restart local v26    # "pkgManager":Landroid/content/pm/PackageManager;
    .restart local v29    # "receiverCount":I
    .restart local v31    # "tempSMS":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1162
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1163
    add-int/lit8 v24, v24, 0x1

    .line 1164
    goto/16 :goto_3

    .line 1177
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v17

    .line 1178
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] Can\'t find receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appInfo.packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1179
    add-int/lit8 v24, v24, 0x1

    .line 1180
    goto :goto_5

    .line 1188
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v23    # "metaData":Landroid/os/Bundle;
    :cond_7
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1189
    const-string v2, "com.verizon.directedAppSMS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    const/16 v21, 0x1

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] matched !! receiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actInfo.metaData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1199
    .end local v8    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "metaData":Landroid/os/Bundle;
    :cond_8
    if-nez v21, :cond_b

    .line 1201
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1203
    :cond_9
    add-int/lit8 v24, v24, 0x1

    .line 1204
    goto/16 :goto_3

    .line 1207
    :cond_a
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] appInfo = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] appInfo.metaData.getString(METADATA_NAME) = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.verizon.directedAppSMS"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1211
    :cond_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 1213
    const-string v2, "[sms.mt.parseDirectedSMS] applicationPrefixList is Empty"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1258
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_c
    add-int/lit8 v24, v24, 0x1

    .line 1259
    goto/16 :goto_3

    .line 1215
    .restart local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "isReceiverMatched":Z
    .restart local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v29    # "receiverCount":I
    .restart local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v11, 0x0

    .local v11, "appPrefixCount":I
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] applicationPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1221
    const/4 v2, 0x1

    if-ne v15, v2, :cond_12

    .line 1222
    const/4 v2, 0x0

    const-string v3, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1223
    .local v12, "applicationPrefixFromSMSBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] SMS contain a separator(:), applicationPrefixFromSMSBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1233
    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    if-nez v15, :cond_11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1238
    :cond_10
    if-eqz v15, :cond_13

    .line 1239
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1243
    .local v4, "parameters":Ljava/lang/String;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] parameters : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1246
    if-lez v29, :cond_14

    .line 1247
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1253
    :goto_8
    const/16 v27, 0x1

    .line 1215
    .end local v4    # "parameters":Ljava/lang/String;
    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 1225
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    :cond_12
    move-object/from16 v12, v31

    .line 1226
    .restart local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v3, v2, :cond_e

    .line 1227
    const-string v2, "[sms.mt.parseDirectedSMS] SMS length is too short to compare !"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_9

    .line 1241
    :cond_13
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "parameters":Ljava/lang/String;
    goto :goto_7

    .line 1249
    :cond_14
    const-string v2, "[sms.mt.parseDirectedSMS] There is not a receiver. No run dispatchDirectedSms !!"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_8

    .line 1261
    .end local v4    # "parameters":Ljava/lang/String;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "appPrefixCount":I
    .end local v12    # "applicationPrefixFromSMSBody":Ljava/lang/String;
    .end local v13    # "applicationPrefixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "isReceiverMatched":Z
    .end local v25    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "receiverCount":I
    .end local v30    # "receivers":[Landroid/content/pm/ActivityInfo;
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_16

    .line 1263
    if-eqz v16, :cond_17

    const/16 v27, 0x0

    .line 1265
    :cond_16
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sms.mt.parseDirectedSMS] processStatus=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    move/from16 v28, v27

    .line 1266
    .end local v27    # "processStatus":I
    .restart local v28    # "processStatus":I
    goto/16 :goto_0

    .line 1263
    .end local v28    # "processStatus":I
    .restart local v27    # "processStatus":I
    :cond_17
    const/16 v27, -0x1

    goto :goto_a
.end method

.method protected parseDirectedVVM(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0xb

    const/4 v7, 0x1

    .line 1966
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1967
    const-string v7, "parseDirectedVVM(), sms.getMessageBody() is NULL."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 2005
    :goto_0
    return v6

    .line 1971
    :cond_0
    new-array v4, v7, [[B

    .line 1972
    .local v4, "pdus":[[B
    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    aput-object v9, v4, v8

    .line 1977
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//ANDROID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, "//CM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1978
    :cond_1
    const-string v7, "parseDirectedVVM(), No matching string."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 1984
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1985
    .local v5, "pkgManager":Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1987
    .local v3, "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1988
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "com.coremobility.app.vnotes"

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), appInfo.packageName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1991
    const-string v6, "parseDirectedVVM(), VVM App is installed."

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1992
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedVVM([[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 1993
    goto :goto_0

    .line 1996
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1997
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDirectedVVM(), Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 2000
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchDirectedVVM([[B)V

    move v6, v7

    .line 2001
    goto/16 :goto_0

    .line 2004
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "installedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "pkgManager":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v7, "parseDirectedVVM(), VVM Control message is received. But VVM App is not installed."

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1670
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1673
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v0, "com.lge.band"

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1678
    :goto_0
    if-eqz v10, :cond_0

    const-string v0, "com.lge.band"

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1700
    :goto_1
    return v0

    .line 1674
    :catch_0
    move-exception v6

    .line 1675
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "processKizONMessage(), KizON package doesn\'t existed."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1682
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 1683
    .local v9, "msg":Landroid/telephony/SmsMessage;
    if-eqz v9, :cond_3

    .line 1684
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 1685
    .local v8, "messageBody":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1686
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->KIZON_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1688
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processKizONMessage(), Found pattern : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1690
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.lge.band"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const-string v0, "processKizONMessage(), Delivering SMS to : com.lge.band"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1693
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1694
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1696
    const/4 v0, 0x1

    goto :goto_1

    .line 1682
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "messageBody":Ljava/lang/String;
    .end local v9    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto :goto_2

    .restart local v9    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1700
    goto :goto_1
.end method

.method protected processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 1634
    const-string v0, "service.wsandroid.lge.token"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1635
    .local v9, "token":Ljava/lang/String;
    const-string v10, ""

    .line 1636
    .local v10, "web_token":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMcAfeeMessage(), McAfee token : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1638
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1664
    :goto_0
    return v0

    .line 1642
    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_1
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 1643
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_3

    .line 1644
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    .line 1645
    .local v7, "messageBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "kr_operator_web_send"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->MCAFEE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1647
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 1652
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMcAfeeMessage(), token = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", web_token = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1654
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1655
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.wsandroid.suite.lge"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    const-string v0, "processMcAfeeMessage(), Delivering SMS to : com.wsandroid.suite.lge"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1658
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1659
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1660
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1661
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1642
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "messageBody":Ljava/lang/String;
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto/16 :goto_1

    .restart local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1664
    goto/16 :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 57
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    .line 432
    .local v6, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v36

    .line 434
    .local v36, "destPort":I
    const/16 v45, 0x0

    .line 437
    .local v45, "iccSring":Ljava/lang/String;
    const/4 v8, 0x0

    .line 438
    .local v8, "exceedFirstTimePeriod":Z
    const/4 v9, 0x0

    .line 439
    .local v9, "exceedSecondTimePeriod":Z
    const/4 v10, 0x0

    .line 440
    .local v10, "allSegmentReceived":Z
    const/4 v11, 0x0

    .line 441
    .local v11, "missingSegIndex":Ljava/lang/String;
    const/4 v12, 0x0

    .line 444
    .local v12, "stitchRefMsg":Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt] processMessagePart messageCount = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 446
    const/4 v4, 0x1

    if-ne v6, v4, :cond_2

    .line 448
    const-string v4, "[sms.mt] single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 449
    const/4 v4, 0x1

    new-array v7, v4, [[B

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v7, v4

    .line 623
    .local v7, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v17, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 625
    .local v17, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v4, 0xb84

    move/from16 v0, v36

    if-ne v0, v4, :cond_1f

    .line 627
    const-string v19, ""

    .line 628
    .local v19, "smscAddress":Ljava/lang/String;
    const-string v20, ""

    .line 629
    .local v20, "originatingAddress":Ljava/lang/String;
    const/16 v55, -0x1

    .line 633
    .local v55, "result":I
    const/16 v47, 0x0

    .line 637
    .local v47, "isSafeSMSCheck":Z
    new-instance v51, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v51 .. v51}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 638
    .local v51, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v28, v7

    .local v28, "arr$":[[B
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v48, v0

    .local v48, "len$":I
    const/16 v44, 0x0

    .local v44, "i$":I
    :goto_1
    move/from16 v0, v44

    move/from16 v1, v48

    if-ge v0, v1, :cond_1c

    aget-object v52, v28, v44

    .line 640
    .local v52, "pdu":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "kddi_cdma_wap_push"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 641
    const-string v4, "[sms.mt] cdma wap push) "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 642
    invoke-static/range {v52 .. v52}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v49

    .line 643
    .local v49, "msg":Landroid/telephony/SmsMessage;
    if-eqz v49, :cond_1

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    if-nez v4, :cond_18

    .line 638
    .end local v49    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    :goto_2
    add-int/lit8 v44, v44, 0x1

    goto :goto_1

    .line 451
    .end local v7    # "pdus":[[B
    .end local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v19    # "smscAddress":Ljava/lang/String;
    .end local v20    # "originatingAddress":Ljava/lang/String;
    .end local v28    # "arr$":[[B
    .end local v44    # "i$":I
    .end local v47    # "isSafeSMSCheck":Z
    .end local v48    # "len$":I
    .end local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v52    # "pdu":[B
    .end local v55    # "result":I
    :cond_2
    const-string v4, "[sms.mt] not single-part message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 453
    const/16 v34, 0x0

    .line 457
    .local v34, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->queryForAllSegments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 465
    .local v42, "firstTime":J
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    const-string v4, "time"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v56

    .line 467
    .local v56, "timeColumn":I
    move-object/from16 v0, v34

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 469
    .end local v56    # "timeColumn":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 470
    .local v32, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x14

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 472
    .local v38, "dispatchTime":J
    const-wide/32 v4, 0x2932e00

    add-long v4, v4, v42

    cmp-long v4, v32, v4

    if-lez v4, :cond_7

    .line 473
    const/4 v9, 0x1

    .line 477
    :cond_4
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedSecondTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] exceedFirstTimePeriod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 482
    .end local v32    # "currentTime":J
    .end local v38    # "dispatchTime":J
    .end local v42    # "firstTime":J
    :cond_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v35

    .line 483
    .local v35, "cursorCount":I
    move/from16 v0, v35

    if-ge v0, v6, :cond_e

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 492
    if-nez v9, :cond_8

    if-nez v8, :cond_8

    .line 493
    const-string v4, "processMessagePart, [RED] short return"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const/4 v4, 0x0

    .line 617
    if-eqz v34, :cond_6

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 814
    .end local v34    # "cursor":Landroid/database/Cursor;
    .end local v35    # "cursorCount":I
    :cond_6
    :goto_4
    return v4

    .line 474
    .restart local v32    # "currentTime":J
    .restart local v34    # "cursor":Landroid/database/Cursor;
    .restart local v38    # "dispatchTime":J
    .restart local v42    # "firstTime":J
    :cond_7
    add-long v4, v42, v38

    cmp-long v4, v32, v4

    if-lez v4, :cond_4

    .line 475
    const/4 v8, 0x1

    goto :goto_3

    .line 496
    .end local v32    # "currentTime":J
    .end local v38    # "dispatchTime":J
    .end local v42    # "firstTime":J
    .restart local v35    # "cursorCount":I
    :cond_8
    :try_start_1
    const-string v4, "processMessagePart, do not return. It\'s exceeded waiting dispatching time"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 510
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->controlSeperateSmsUicc(Lcom/android/internal/telephony/InboundSmsTracker;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v45

    .line 516
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 517
    if-eqz v9, :cond_f

    .line 518
    const/4 v4, 0x1

    new-array v7, v4, [[B

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v7, v4

    .line 529
    .restart local v7    # "pdus":[[B
    :goto_6
    new-array v7, v6, [[B

    .line 530
    :cond_a
    :goto_7
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 533
    if-eqz v9, :cond_11

    .line 534
    const-string v4, "processMessagePart, [RED] exceedSecondTimePeriod! Do not get pdus from db"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 565
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 566
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleConcatStitching(Lcom/android/internal/telephony/InboundSmsTracker;I[[BZZZLjava/lang/String;Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v11

    .line 571
    :cond_c
    new-instance v17, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 572
    .restart local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v14, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    const-string v5, "kddi_message_duplicate_check"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    const/4 v4, 0x1

    if-eq v6, v4, :cond_16

    .line 576
    array-length v0, v7

    move/from16 v53, v0

    .line 577
    .local v53, "pduCount":I
    move/from16 v0, v53

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    move-object/from16 v50, v0

    .line 578
    .local v50, "msgs":[Landroid/telephony/SmsMessage;
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_8
    move/from16 v0, v41

    move/from16 v1, v53

    if-ge v0, v1, :cond_13

    .line 579
    aget-object v4, v7, v41

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v50, v41
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    add-int/lit8 v41, v41, 0x1

    goto :goto_8

    .line 499
    .end local v7    # "pdus":[[B
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v41    # "i":I
    .end local v50    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v53    # "pduCount":I
    :cond_d
    const/4 v4, 0x0

    .line 617
    if-eqz v34, :cond_6

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 504
    :cond_e
    const/4 v10, 0x1

    .line 505
    :try_start_2
    const-string v4, "processMessagePart, [RED] allSegmentReceived"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 613
    .end local v35    # "cursorCount":I
    :catch_0
    move-exception v40

    .line 614
    .local v40, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 615
    const/4 v4, 0x0

    .line 617
    if-eqz v34, :cond_6

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 520
    .end local v40    # "e":Landroid/database/SQLException;
    .restart local v35    # "cursorCount":I
    :cond_f
    :try_start_4
    new-array v7, v6, [[B

    .restart local v7    # "pdus":[[B
    goto/16 :goto_6

    .line 525
    .end local v7    # "pdus":[[B
    :cond_10
    new-array v7, v6, [[B

    .restart local v7    # "pdus":[[B
    goto/16 :goto_6

    .line 540
    :cond_11
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v5

    sub-int v46, v4, v5

    .line 542
    .local v46, "index":I
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v7, v46

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 545
    if-nez v12, :cond_12

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart, [RED] createFromPdu for stitchRefMsg index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 547
    aget-object v4, v7, v46

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    .line 554
    :cond_12
    if-nez v46, :cond_a

    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 555
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 557
    .local v54, "port":I
    invoke-static/range {v54 .. v54}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v54

    .line 558
    const/4 v4, -0x1

    move/from16 v0, v54

    if-eq v0, v4, :cond_a

    .line 559
    move/from16 v36, v54

    goto/16 :goto_7

    .line 582
    .end local v46    # "index":I
    .end local v54    # "port":I
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v41    # "i":I
    .restart local v50    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v53    # "pduCount":I
    :cond_13
    const/4 v4, 0x0

    aget-object v4, v50, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    instance-of v4, v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v4, :cond_15

    .line 583
    const/4 v4, 0x0

    aget-object v4, v50, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 585
    const-string v4, "processMessagePart(), [KDDI] Broadcast Message!!, No duplicate check"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v31

    .line 587
    .local v31, "componentName":Landroid/content/ComponentName;
    if-eqz v31, :cond_14

    .line 589
    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessagePart(), [KDDI] Delivering SMS to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 593
    :cond_14
    const-string v4, "pdus"

    invoke-virtual {v14, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 594
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v15, "android.permission.RECEIVE_SMS"

    const/16 v16, 0x10

    sget-object v18, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 597
    const/4 v4, 0x1

    .line 617
    if-eqz v34, :cond_6

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 602
    .end local v31    # "componentName":Landroid/content/ComponentName;
    :cond_15
    const/4 v4, 0x0

    :try_start_5
    aget-object v4, v50, v4

    iget-object v4, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v5, 0x0

    aget-object v5, v50, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x0

    aget-object v13, v50, v13

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aget-object v15, v50, v15

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v13, v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->checkDuplicateKddiMessage(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v37

    .line 604
    .local v37, "discard":Z
    if-eqz v37, :cond_16

    .line 606
    const-string v4, "processMessagePart(), [KDDI] discard duplicate Message "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 607
    const/4 v4, 0x0

    .line 617
    if-eqz v34, :cond_6

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 617
    .end local v37    # "discard":Z
    .end local v41    # "i":I
    .end local v50    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v53    # "pduCount":I
    :cond_16
    if-eqz v34, :cond_0

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 617
    .end local v7    # "pdus":[[B
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v35    # "cursorCount":I
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_17

    .line 618
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4

    .line 646
    .end local v34    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "pdus":[[B
    .restart local v17    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v19    # "smscAddress":Ljava/lang/String;
    .restart local v20    # "originatingAddress":Ljava/lang/String;
    .restart local v28    # "arr$":[[B
    .restart local v44    # "i$":I
    .restart local v47    # "isSafeSMSCheck":Z
    .restart local v48    # "len$":I
    .restart local v49    # "msg":Landroid/telephony/SmsMessage;
    .restart local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v52    # "pdu":[B
    .restart local v55    # "result":I
    :cond_18
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v52

    .line 671
    .end local v49    # "msg":Landroid/telephony/SmsMessage;
    :cond_19
    :goto_9
    const/4 v4, 0x0

    move-object/from16 v0, v52

    array-length v5, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 650
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_19

    .line 651
    const-string v4, "3gpp"

    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v49

    .line 653
    .restart local v49    # "msg":Landroid/telephony/SmsMessage;
    if-eqz v49, :cond_19

    .line 654
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v19

    .line 655
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMSforMMSNoti"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-nez v47, :cond_1b

    .line 659
    const/16 v47, 0x1

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->getUserDataForSafeMMS(Landroid/telephony/SmsMessage;)[B

    move-result-object v52

    goto :goto_9

    .line 663
    :cond_1b
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v52

    goto :goto_9

    .line 674
    .end local v49    # "msg":Landroid/telephony/SmsMessage;
    .end local v52    # "pdu":[B
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    invoke-virtual/range {v51 .. v51}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v18, p0

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    .line 679
    const/4 v4, -0x1

    move/from16 v0, v55

    if-eq v0, v4, :cond_1d

    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 684
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 686
    const/4 v4, -0x1

    move/from16 v0, v55

    if-ne v0, v4, :cond_1e

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 689
    .end local v19    # "smscAddress":Ljava/lang/String;
    .end local v20    # "originatingAddress":Ljava/lang/String;
    .end local v28    # "arr$":[[B
    .end local v44    # "i$":I
    .end local v47    # "isSafeSMSCheck":Z
    .end local v48    # "len$":I
    .end local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v55    # "result":I
    :cond_1f
    const/4 v4, -0x1

    move/from16 v0, v36

    if-ne v0, v4, :cond_26

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "public_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 692
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processPublicMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_20

    .line 693
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 699
    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_21

    .line 700
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 705
    :cond_21
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processMcAfeeMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_22

    .line 706
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 711
    :cond_22
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processKizONMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_23

    .line 712
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 717
    :cond_23
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processMobileboxProDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_24

    .line 718
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 723
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "app_directed_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 724
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processDirectedSMS(Lcom/android/internal/telephony/InboundSmsTracker;I[[BLandroid/content/BroadcastReceiver;)I

    move-result v55

    .line 725
    .restart local v55    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v55

    if-eq v0, v4, :cond_25

    .line 726
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 732
    .end local v55    # "result":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "legacy_vvm_not_save"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processLegacyVVM(Lcom/android/internal/telephony/InboundSmsTracker;I[[B)I

    move-result v55

    .line 734
    .restart local v55    # "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt.legacyVVM] processLegacyVVM result =["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 735
    const/4 v4, 0x1

    move/from16 v0, v55

    if-ne v0, v4, :cond_26

    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 737
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->sendMessage(I)V

    .line 738
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 745
    .end local v55    # "result":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "OperatorMessage"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 746
    const-string v4, "operator message"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I

    move-result v55

    .line 748
    .restart local v55    # "result":I
    const/16 v4, 0xb

    move/from16 v0, v55

    if-eq v0, v4, :cond_27

    .line 749
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 754
    .end local v55    # "result":I
    :cond_27
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_FILTER"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .restart local v14    # "intent":Landroid/content/Intent;
    const/16 v30, 0x0

    .line 758
    .local v30, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v29

    .line 760
    .local v29, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v29, :cond_28

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v14}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v30

    .line 765
    :cond_28
    if-eqz v30, :cond_2a

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms.mt] processMessagePart carrierPackages.get(0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 767
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v4, "destport"

    move/from16 v0, v36

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    :goto_a
    const-string v4, "pdus"

    invoke-virtual {v14, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 774
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "seperate_processing_sms_uicc"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 778
    const/4 v4, 0x1

    if-ne v6, v4, :cond_2b

    .line 779
    const-string v4, "indexOnIcc"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    :cond_29
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "trf_no_premium_sms"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 788
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->processTFDM(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 789
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 770
    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->setAndDirectIntent(Landroid/content/Intent;I)V

    goto :goto_a

    .line 781
    :cond_2b
    const-string v4, "indexOnIcc"

    move-object/from16 v0, v45

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 795
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "concat_stitching"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v21, p0

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    .line 796
    invoke-direct/range {v21 .. v27}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleConcatStitching2(IZZZLjava/lang/String;Landroid/content/Intent;)V

    .line 801
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMS"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 802
    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-static {v14, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->makeSafeSmsField(Landroid/content/Intent;[B)V

    .line 807
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "tmus_whitepages_nameid"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v14

    .line 812
    :cond_2f
    const-string v15, "android.permission.RECEIVE_SMS"

    const/16 v16, 0x10

    sget-object v18, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 814
    const/4 v4, 0x1

    goto/16 :goto_4
.end method

.method protected processMessagePartKRTestBed([BLjava/lang/String;IIIJIZLjava/lang/String;Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 38
    .param p1, "pdu"    # [B
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # I
    .param p4, "sequenceNumber"    # I
    .param p5, "messageCount"    # I
    .param p6, "timestamp"    # J
    .param p8, "destPort"    # I
    .param p9, "isCdmaWapPush"    # Z
    .param p10, "serviceCenter"    # Ljava/lang/String;
    .param p11, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1745
    .local v14, "firstTime":J
    const/16 v31, 0x0

    check-cast v31, [[B

    .line 1746
    .local v31, "pdus":[[B
    const/16 v25, 0x0

    .line 1749
    .local v25, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    .line 1750
    .local v32, "refNumber":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 1753
    .local v33, "seqNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v32, v8, v9

    const/4 v9, 0x2

    aput-object v33, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1757
    if-eqz v25, :cond_9

    .line 1759
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1760
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding duplicate message segment from address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " refNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seqNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1763
    .local v29, "oldPduString":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v28

    .line 1764
    .local v28, "oldPdu":[B
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1765
    const-string v4, "Mms Testbed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: dup message segment PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is different from existing PDU of length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1768
    :cond_0
    const/4 v4, 0x1

    .line 1861
    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v11, v31

    .line 1907
    .end local v28    # "oldPdu":[B
    .end local v29    # "oldPduString":Ljava/lang/String;
    .end local v31    # "pdus":[[B
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .local v11, "pdus":[[B
    :cond_2
    :goto_0
    return v4

    .line 1770
    .end local v11    # "pdus":[[B
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1777
    :goto_1
    const-string v7, ""

    .line 1778
    .local v7, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p9, :cond_a

    .line 1779
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v37, "whereTemp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1786
    .end local v37    # "whereTemp":Ljava/lang/StringBuilder;
    :goto_2
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v4, 0x0

    aput-object p2, v36, v4

    const/4 v4, 0x1

    aput-object v32, v36, v4

    .line 1787
    .local v36, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz p9, :cond_b

    .line 1788
    const-string v4, "Mms Testbed"

    const-string v5, "processMessagePart() - KEY_CDMA_MMS_RECEIVE and CDMA WAP PUSH - RawUri query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1801
    :goto_3
    if-eqz v25, :cond_12

    .line 1802
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1803
    .local v13, "cursorCount":I
    add-int/lit8 v4, p5, -0x1

    if-eq v13, v4, :cond_d

    .line 1805
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 1806
    .local v35, "values":Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1807
    const-string v4, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v4, "address"

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v4, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1810
    const-string v4, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1811
    const-string v4, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1812
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_4

    .line 1813
    const-string v4, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1816
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1817
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 1818
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1819
    const-string v4, "time"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1820
    .local v34, "timeColumn":I
    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1823
    .end local v34    # "timeColumn":I
    :cond_5
    const-string v4, "time"

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v14, v15}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1826
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1829
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/InboundSmsHandlerEx$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Ljava/lang/String;IIJ)V

    .end local v13    # "cursorCount":I
    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1832
    :cond_7
    const/4 v4, 0x1

    .line 1861
    if-eqz v25, :cond_8

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto/16 :goto_0

    .line 1772
    .end local v7    # "where":Ljava/lang/String;
    .end local v11    # "pdus":[[B
    .end local v35    # "values":Landroid/content/ContentValues;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    :cond_9
    :try_start_2
    const-string v4, "Mms Testbed"

    const-string v5, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 1857
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    :catch_0
    move-exception v26

    move-object/from16 v11, v31

    .line 1858
    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    .local v26, "e":Landroid/database/SQLException;
    :goto_4
    :try_start_3
    const-string v4, "Mms Testbed"

    const-string v5, "Can\'t access multipart SMS database"

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1859
    const/4 v4, 0x2

    .line 1861
    if-eqz v25, :cond_2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1783
    .end local v11    # "pdus":[[B
    .end local v26    # "e":Landroid/database/SQLException;
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v7, "address=? AND reference_number=?"

    goto/16 :goto_2

    .line 1793
    .restart local v36    # "whereArgs":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "ems_segment_timer"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v8, v36

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_3

    .line 1796
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v8, v36

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_3

    .line 1836
    .restart local v13    # "cursorCount":I
    :cond_d
    move/from16 v0, p5

    new-array v11, v0, [[B
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    move-object/from16 v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, v25

    .line 1837
    :try_start_5
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->handleMsgKRTestbed(IZ[[BLandroid/database/Cursor;I)I

    move-result p8

    .line 1841
    if-eqz p9, :cond_f

    .line 1842
    aput-object p1, v11, p4

    .line 1848
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v5, "cdma_kr_testbed_mms_receive"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p9, :cond_10

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1861
    .end local v13    # "cursorCount":I
    :goto_6
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1865
    :cond_e
    if-nez v11, :cond_13

    .line 1866
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1844
    .restart local v13    # "cursorCount":I
    :cond_f
    add-int/lit8 v4, p4, -0x1

    :try_start_6
    aput-object p1, v11, v4

    goto :goto_5

    .line 1857
    :catch_1
    move-exception v26

    goto :goto_4

    .line 1851
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-virtual {v4, v5, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1861
    .end local v7    # "where":Ljava/lang/String;
    .end local v13    # "cursorCount":I
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    .line 1854
    .end local v11    # "pdus":[[B
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    .restart local v32    # "refNumber":Ljava/lang/String;
    .restart local v33    # "seqNumber":Ljava/lang/String;
    .restart local v36    # "whereArgs":[Ljava/lang/String;
    :cond_12
    :try_start_7
    const-string v4, "Mms Testbed"

    const-string v5, "SMSDispatcher.processMessagePartKRTestBed(): mResolver.query() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto :goto_6

    .line 1869
    :cond_13
    new-instance v18, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1872
    .local v18, "resultReceiver":Landroid/content/BroadcastReceiver;
    if-eqz p9, :cond_16

    .line 1874
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1875
    .local v30, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_8
    move/from16 v0, v27

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 1877
    aget-object v4, v11, v27

    const/4 v5, 0x0

    aget-object v6, v11, v27

    array-length v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1875
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1879
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 1882
    .local v17, "datagram":[B
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_15

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mWapPush:Lcom/android/internal/telephony/WapPushOverSmsEx;

    move-object/from16 v16, v0

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v19, p0

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/WapPushOverSmsEx;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1886
    :cond_15
    const/4 v4, 0x1

    new-array v11, v4, [[B

    .line 1887
    const/4 v4, 0x0

    aput-object v17, v11, v4

    .line 1889
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPortAddressedPdus([[BI)V

    .line 1890
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1895
    .end local v17    # "datagram":[B
    .end local v27    # "i":I
    .end local v30    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_16
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_18

    .line 1896
    const/16 v4, 0xb84

    move/from16 v0, p8

    if-ne v0, v4, :cond_17

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move/from16 v21, p5

    move-object/from16 v22, p10

    move-object/from16 v23, v11

    move-object/from16 v24, v18

    .line 1897
    invoke-direct/range {v19 .. v24}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPduKRTestbed(Ljava/lang/String;ILjava/lang/String;[[BLandroid/content/BroadcastReceiver;)I

    move-result v4

    goto/16 :goto_0

    .line 1900
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPortAddressedPdus([[BI)V

    .line 1907
    :goto_9
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 1905
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchPdus([[B)V

    goto :goto_9

    .line 1861
    .end local v7    # "where":Ljava/lang/String;
    .end local v11    # "pdus":[[B
    .end local v18    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v32    # "refNumber":Ljava/lang/String;
    .end local v33    # "seqNumber":Ljava/lang/String;
    .end local v36    # "whereArgs":[Ljava/lang/String;
    .restart local v31    # "pdus":[[B
    :catchall_1
    move-exception v4

    move-object/from16 v11, v31

    .end local v31    # "pdus":[[B
    .restart local v11    # "pdus":[[B
    goto/16 :goto_7
.end method

.method protected processOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)I
    .locals 11
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1384
    const/4 v4, 0x0

    .line 1385
    .local v4, "isConcat":Z
    const/4 v5, 0x0

    .line 1386
    .local v5, "existsPortAddrs":Z
    const/4 v9, 0x0

    .line 1388
    .local v9, "isGsm":Z
    const/4 v6, 0x0

    .line 1389
    .local v6, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1390
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v6

    .line 1391
    const/4 v9, 0x0

    .line 1397
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "ctc_spam_msg"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v8, :cond_0

    .line 1398
    const/4 v9, 0x1

    .line 1402
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 1404
    .local v10, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v10, :cond_1

    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v2, :cond_1

    .line 1405
    const/4 v4, 0x1

    .line 1408
    :cond_1
    if-eqz v10, :cond_2

    .line 1409
    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v2, :cond_4

    move v5, v0

    .line 1413
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "KT_LBS"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_5

    .line 1414
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    const/16 v2, 0x51

    if-ne v0, v2, :cond_5

    .line 1415
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1417
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1418
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .end local v5    # "existsPortAddrs":Z
    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1434
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "isConcat":Z
    :goto_2
    return v8

    .line 1393
    .end local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v4    # "isConcat":Z
    .restart local v5    # "existsPortAddrs":Z
    :cond_3
    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 1394
    const/4 v9, 0x1

    goto :goto_0

    .restart local v10    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    move v5, v8

    .line 1409
    goto :goto_1

    .line 1426
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v7, "operatorMessageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/telephony/SmsOperatorBasicMessage;>;"
    if-ne v9, v8, :cond_7

    move-object v2, p0

    move-object v3, p2

    move-object v8, p3

    .line 1428
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->addGsmOperatorMessages([[BZZLcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Landroid/content/BroadcastReceiver;)V

    .line 1434
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchOperatorMessage(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;)I

    move-result v8

    goto :goto_2

    .line 1430
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v2, "lgu_dispatch"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1431
    const-string v0, "CdmaSmsLGUMessage"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v6, p2, p3}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected processPublicMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 12
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1706
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 1709
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v0, "com.tion.securitysms"

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1714
    :goto_0
    if-eqz v9, :cond_0

    const-string v0, "com.tion.securitysms"

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1733
    :goto_1
    return v0

    .line 1710
    :catch_0
    move-exception v6

    .line 1711
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "processPublicMessage(), Public package doesn\'t existed."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 1718
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp2"

    :goto_2
    invoke-static {v3, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .line 1719
    .local v8, "msg":Landroid/telephony/SmsMessage;
    if-eqz v8, :cond_3

    .line 1720
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    .line 1721
    .local v7, "messageByte":[B
    if-eqz v7, :cond_3

    .line 1722
    aget-byte v0, v7, v2

    const/16 v3, -0xf

    if-ne v0, v3, :cond_3

    aget-byte v0, v7, v11

    const/16 v3, -0x60

    if-ne v0, v3, :cond_3

    .line 1723
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.lge.android.intent.action.SECURITY_SMS_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "com.tion.securitysms"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string v0, "processPublicMessage(), Delivering SMS to : com.tion.securitysms"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1726
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1727
    const-string v0, "format"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    const-string v2, "com.lge.permission.SECURITY_SMS_RECEIVED"

    const/16 v3, 0x10

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    move v0, v11

    .line 1729
    goto :goto_1

    .line 1718
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "messageByte":[B
    .end local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    const-string v0, "3gpp"

    goto :goto_2

    .restart local v8    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    move v0, v2

    .line 1733
    goto :goto_1
.end method

.method protected processSPTSMessage(Lcom/android/internal/telephony/InboundSmsTracker;[[BLandroid/content/BroadcastReceiver;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1612
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v7, "spts_msg"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1613
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1614
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    const-string v4, "com.lge.software.infocollector"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1615
    const/4 v2, 0x0

    .line 1616
    .local v2, "msg":Landroid/telephony/SmsMessage;
    aget-object v7, p2, v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "3gpp2"

    :goto_0
    invoke-static {v7, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 1617
    if-eqz v2, :cond_1

    .line 1618
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1619
    .local v0, "address":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSPTSMessage(), SPTSAddress : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1620
    if-eqz v0, :cond_1

    const-string v4, "00000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1621
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.spts.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "pdus"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1623
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4, p3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchEx(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    move v4, v5

    .line 1629
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return v4

    .line 1616
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v4, "3gpp"

    goto :goto_0

    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v6

    .line 1629
    goto :goto_1
.end method

.method protected processVVM3Pdu(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v4, 0x0

    .line 1922
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1923
    .local v0, "messageBody":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    .line 1925
    .local v2, "vvm3pdu":[B
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    if-eqz v2, :cond_0

    array-length v5, v2

    if-ge v5, v6, :cond_2

    .line 1926
    :cond_0
    const-string v5, "[sms.mt.vvm3] messageBody length or vvm3pdu length is short. return"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1944
    :cond_1
    :goto_0
    return v4

    .line 1930
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1931
    .local v1, "vvm3Str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] messageBody = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3Str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pdu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1935
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    new-array v3, v5, [B

    .line 1936
    .local v3, "vvm3pduToDispatch":[B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x7

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sms.mt.vvm3] vvm3pduToDispatch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1939
    const-string v5, "UNRECOGNIZED?cmd=STATUS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "MBOXUPDATE?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1940
    :cond_3
    const-string v4, "[sms.mt.vvm3] string match"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 1941
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchVVM3Pdu([B)V

    .line 1942
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setDeliverIntentIfNeeded(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1574
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1576
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez p1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1581
    if-eqz v2, :cond_0

    .line 1583
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1590
    :cond_2
    if-eqz v2, :cond_0

    .line 1592
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1593
    .local v6, "smsPackage":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "com.android.mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1594
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandlerEx;->NEED_TO_CHANGE_DELIVER_ACTION:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 1596
    .local v4, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1599
    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1601
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >>>  SMS_DELIVER_ACTION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDeliverIntentIfNeeded(), Delivering SMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 1595
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
