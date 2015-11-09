.class public Lcom/android/internal/telephony/ePDGinterface;
.super Ljava/lang/Object;
.source "ePDGinterface.java"


# static fields
.field public static final DISCONNECTED_DONE:I = 0x3e4

.field private static final EVENT_EPDG_WIFI:I = 0x1f7

.field private static final EVENT_PCSCF_ADDR_CHANGED:I = 0x1fa

.field private static final EVENT_PCSCF_DONE:I = 0x1f9

.field private static final EVENT_QOS_CHANGED:I = 0x1f8

.field public static final PCS_CH:I = 0x3e5

.field public static final PCS_INFO:I = 0x3e6

.field public static final QOS_INFO:I = 0x3e7

.field private static final RIL_REQUEST_ePDG_DEACTIVATE_DATA_CALL:I = 0x1f6

.field private static final RIL_REQUEST_ePDG_SETUP_DATA_CALL:I = 0x1f5

.field static final numofpdn:I = 0x5


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private ePDGList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ePDGMode:Z

.field public ePDGSetting:I

.field ePDGSetupDataCallResult:Ljava/lang/Object;

.field mConnMgr:Landroid/net/IConnectivityManager;

.field public mIMScid:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsUsingLGWifi:I

.field public mIsWifiConnected:Z

.field mMyRil:Lcom/android/internal/telephony/RIL;

.field public mPcscfAddr:[Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSendingisAv:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field mePDGHandler:Landroid/os/Handler;

.field public myaddr:[I

.field public myfeature:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 4
    .param p1, "myRIL"    # Lcom/android/internal/telephony/RIL;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "con"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "ePDGInterface"

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->LOG_TAG:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGSetupDataCallResult:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    .line 99
    iput v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mIsWifiConnected:Z

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    .line 105
    iput v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mIsUsingLGWifi:I

    .line 107
    iput v1, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    .line 110
    iput v1, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGSetting:I

    .line 112
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    .line 116
    new-instance v0, Lcom/android/internal/telephony/ePDGinterface$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ePDGinterface$1;-><init>(Lcom/android/internal/telephony/ePDGinterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/ePDGinterface$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ePDGinterface$2;-><init>(Lcom/android/internal/telephony/ePDGinterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    .line 228
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    .line 229
    iput-object p2, p0, Lcom/android/internal/telephony/ePDGinterface;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput v0, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/ePDGinterface;->getEPDGOnOff()V

    .line 233
    iget-boolean v0, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->setePDGinterface(Lcom/android/internal/telephony/ePDGinterface;)V

    .line 250
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForDataQosChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForPcscfAddrChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    :cond_2
    return-void

    .line 104
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ePDGinterface;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ePDGinterface;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ePDGinterface;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ePDGinterface;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ePDGinterface;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ePDGinterface;->onQoSChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ePDGinterface;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ePDGinterface;->onGetPcscfAddressCompleted(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ePDGinterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ePDGinterface;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/ePDGinterface;->onNotifyPCS()V

    return-void
.end method

.method static ePDGcommandString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 908
    sparse-switch p0, :sswitch_data_0

    .line 913
    const-string v0, "unknown ePDG req"

    :goto_0
    return-object v0

    .line 910
    :sswitch_0
    const-string v0, "RIL_REQUEST_VSS_ePDG_SET_PREF_TECH"

    goto :goto_0

    .line 911
    :sswitch_1
    const-string v0, "RIL_REQUEST_WIFI_AVAILABLE"

    goto :goto_0

    .line 912
    :sswitch_2
    const-string v0, "UNSOL_EPCSTATUS"

    goto :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x172 -> :sswitch_0
        0x173 -> :sswitch_1
        0x41c -> :sswitch_2
    .end sparse-switch
.end method

.method static isePDGrequest(I)Z
    .locals 1
    .param p0, "reqorunsol"    # I

    .prologue
    const/4 v0, 0x1

    .line 833
    sparse-switch p0, :sswitch_data_0

    .line 842
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x172 -> :sswitch_0
        0x173 -> :sswitch_0
        0x41c -> :sswitch_0
    .end sparse-switch
.end method

.method private onGetPcscfAddressCompleted(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 809
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "onGetPcscfAddressCompleted, there is Exception"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 815
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/16 v1, 0x3e6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/net/IConnectivityManager;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onNotifyPCS()V
    .locals 12

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/16 v1, 0x3e5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/net/IConnectivityManager;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onQoSChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 773
    const-string v0, "onGetQoSChanged : ENTRY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 775
    const/4 v5, 0x0

    .line 781
    .local v5, "result":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 783
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v5    # "result":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 784
    .restart local v5    # "result":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GET QoS Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/net/IConnectivityManager;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 788
    :cond_0
    const-string v0, "onQoSChanged : EXIT with Error, result is not String object"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static revinetAddressToInt(Ljava/net/Inet4Address;)I
    .locals 3
    .param p0, "inetAddr"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 926
    .local v0, "addr":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public ConvtRespEPDGSetupDataCall(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Ljava/lang/String;)V
    .locals 30
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .param p2, "apntype"    # Ljava/lang/String;

    .prologue
    .line 480
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 481
    .local v3, "eVersion":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 482
    .local v4, "eStatus":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 483
    .local v5, "eCid":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 484
    .local v6, "eActive":I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 485
    .local v7, "eType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 486
    .local v8, "eIfname":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 487
    .local v19, "addresses":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v23, v0

    .line 488
    .local v23, "dnses":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v24, v0

    .line 489
    .local v24, "gateways":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 490
    .local v12, "suggestedRetryTime":I
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v17, "EPcscf":Ljava/lang/StringBuffer;
    const/16 v28, 0x0

    .line 496
    .local v28, "isIMSPDN":Z
    if-nez p2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    if-ne v5, v2, :cond_d

    .line 498
    const/16 v21, 0x0

    .line 499
    .local v21, "bPcscfAddrChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    if-eqz v21, :cond_a

    .line 526
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    move-object/from16 v20, v0

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    aget-object v18, v20, v26

    .line 528
    .local v18, "addr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 502
    .end local v18    # "addr":Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v29    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 503
    :cond_2
    const/16 v21, 0x1

    goto :goto_0

    .line 505
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    array-length v2, v2

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v9, v9

    if-eq v2, v9, :cond_4

    .line 506
    const/16 v21, 0x1

    goto :goto_0

    .line 510
    :cond_4
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    aget-object v2, v2, v25

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    aget-object v2, v2, v25

    if-nez v2, :cond_6

    .line 510
    :cond_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    aget-object v2, v2, v25

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    aget-object v2, v2, v25

    if-nez v2, :cond_8

    .line 516
    :cond_7
    const/16 v21, 0x1

    .line 517
    goto :goto_0

    .line 519
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    aget-object v2, v2, v25

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    aget-object v9, v9, v25

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 520
    const/16 v21, 0x1

    .line 521
    goto/16 :goto_0

    .line 531
    .end local v25    # "i":I
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v29    # "len$":I
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] pcscf addr changed!! : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 532
    new-instance v27, Landroid/content/Intent;

    const-string v2, "com.lge.internal.telephony.pcscf-changed"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v27, "intent_pcscf":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v21    # "bPcscfAddrChanged":Z
    .end local v26    # "i$":I
    .end local v27    # "intent_pcscf":Landroid/content/Intent;
    .end local v29    # "len$":I
    :cond_a
    :goto_3
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 553
    .local v14, "EAddr":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 554
    .local v15, "EDnses":Ljava/lang/StringBuffer;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    .local v16, "EGateways":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] ConvtRespEPDGSetupDataCall : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 558
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 559
    .local v22, "currentCid":Ljava/lang/Integer;
    if-ltz v5, :cond_c

    if-eqz v6, :cond_c

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 561
    if-eqz v28, :cond_b

    .line 563
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "now we set ims cid as : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 566
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_c
    move-object/from16 v20, v19

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    aget-object v18, v20, v26

    .line 570
    .restart local v18    # "addr":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 538
    .end local v14    # "EAddr":Ljava/lang/StringBuffer;
    .end local v15    # "EDnses":Ljava/lang/StringBuffer;
    .end local v16    # "EGateways":Ljava/lang/StringBuffer;
    .end local v18    # "addr":Ljava/lang/String;
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v22    # "currentCid":Ljava/lang/Integer;
    .end local v26    # "i$":I
    .end local v29    # "len$":I
    :cond_d
    const-string v2, "ims"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 539
    if-eqz v28, :cond_a

    .line 541
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ePDGinterface;->mPcscfAddr:[Ljava/lang/String;

    move-object/from16 v20, v0

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    aget-object v18, v20, v26

    .line 543
    .restart local v18    # "addr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 547
    .end local v18    # "addr":Ljava/lang/String;
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] apntype is not null. pcscf addr : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 573
    .restart local v14    # "EAddr":Ljava/lang/StringBuffer;
    .restart local v15    # "EDnses":Ljava/lang/StringBuffer;
    .restart local v16    # "EGateways":Ljava/lang/StringBuffer;
    .restart local v22    # "currentCid":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_10

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 575
    :cond_10
    move-object/from16 v20, v23

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    aget-object v18, v20, v26

    .line 576
    .restart local v18    # "addr":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 579
    .end local v18    # "addr":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v23

    array-length v2, v0

    if-lez v2, :cond_12

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 581
    :cond_12
    move-object/from16 v20, v24

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    aget-object v18, v20, v26

    .line 582
    .restart local v18    # "addr":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 585
    .end local v18    # "addr":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v24

    array-length v2, v0

    if-lez v2, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 586
    :cond_14
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ePDGinterface;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 587
    return-void
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 7
    .param p1, "apntype"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 309
    move v1, p3

    .line 310
    .local v1, "eReason":I
    const/4 v3, 0x0

    .line 312
    .local v3, "num":I
    iget-object v5, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v6, 0x1f6

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 314
    .local v2, "msgResult":Landroid/os/Message;
    const/16 v5, 0x29

    invoke-static {v5, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 316
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 321
    const-string v5, "RIL_REQUEST_ePDG_DEACTIVATE_DATA_CALL send ======>"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 323
    .local v0, "currentCid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget v5, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    if-ne p2, v5, :cond_0

    .line 326
    const/16 v5, 0x63

    iput v5, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    .line 328
    :cond_0
    return-void
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "apntype"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3, p8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, "msgResult":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v2, Lcom/android/internal/telephony/RIL;->testmode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iput-object p7, v2, Lcom/android/internal/telephony/RIL;->Emulprotocol:Ljava/lang/String;

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->emulNetworkState(ILandroid/os/Message;)V

    .line 376
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v2, Lcom/android/internal/telephony/RIL;->testmode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/RIL;->emulNetworkState(ILandroid/os/Message;)V

    goto :goto_0

    .line 351
    :cond_1
    const/16 v2, 0x1b

    invoke-static {v2, v0}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 354
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto/16 :goto_0
.end method

.method public getEPDGOnOff()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "isEPDGVendor":Z
    const/4 v0, 0x1

    .line 263
    .local v0, "ePDGSetting":Z
    const-string v2, ""

    .line 265
    .local v2, "isePDGsupportChipset":Ljava/lang/String;
    const-string v5, "ro.board.platform"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isePDGsupportChipset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 269
    iget v5, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    if-ne v5, v4, :cond_3

    .line 271
    const-string v5, "msm8974"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "msm8992"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    :cond_0
    const/4 v1, 0x1

    .line 276
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    .line 303
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ePDG Feature : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    if-ne v3, v4, :cond_b

    const-string v3, "On"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 304
    return-void

    .line 278
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_7

    .line 280
    const-string v5, "msm8974"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "msm8916"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "msm8992"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    :cond_4
    const/4 v1, 0x1

    .line 286
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    goto :goto_0

    .line 288
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_a

    .line 290
    const-string v5, "msm8916"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 292
    const/4 v1, 0x1

    .line 296
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    move v3, v4

    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    goto :goto_0

    .line 300
    :cond_a
    iput-boolean v3, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGMode:Z

    goto :goto_0

    .line 303
    :cond_b
    const-string v3, "Off"

    goto :goto_1
.end method

.method public getPcscfAddress(ILjava/lang/String;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "ipv"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    const/16 v2, 0x1f9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 678
    .local v0, "msgResult":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/RIL;->getPcscfAddress(ILjava/lang/String;Landroid/os/Message;)V

    .line 679
    return-void
.end method

.method public isDualTypeConnectionOperator()Z
    .locals 2

    .prologue
    .line 931
    iget v0, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 919
    const-string v0, "ePDGInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void
.end method

.method makeAddrString(Ljava/lang/String;)V
    .locals 8
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 702
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 705
    .local v2, "i":I
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 707
    .local v0, "addr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v2

    .line 708
    add-int/lit8 v2, v2, 0x1

    .line 709
    const/4 v6, 0x6

    if-ne v2, v6, :cond_1

    .line 712
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    return-void

    .line 705
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "version"    # I
    .param p2, "status"    # I
    .param p3, "cid"    # I
    .param p4, "active"    # I
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "ifname"    # Ljava/lang/String;
    .param p7, "addresses"    # Ljava/lang/String;
    .param p8, "dnses"    # Ljava/lang/String;
    .param p9, "gateways"    # Ljava/lang/String;
    .param p10, "suggestedRetryTime"    # I
    .param p11, "apntype"    # Ljava/lang/String;

    .prologue
    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/net/IConnectivityManager;->notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v12

    .line 596
    .local v12, "e":Landroid/os/RemoteException;
    const-string v0, "notifyEPDGCallResult RemoteException !!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyToEPDGClient([I)V
    .locals 8
    .param p1, "status"    # [I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyToEPDGClient <======  status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profileID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 397
    const/4 v2, 0x0

    .line 400
    .local v2, "extendedRAT":I
    aget v2, p1, v7

    .line 401
    aget v0, p1, v6

    .line 404
    .local v0, "cid":I
    if-nez v2, :cond_0

    .line 406
    const-string v3, "extendedRAT reported UNKNOWN!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 410
    :cond_0
    aget v3, p1, v5

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    .line 412
    iget v3, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    if-ne v3, v5, :cond_1

    aget v3, p1, v5

    if-eq v3, v5, :cond_1

    .line 414
    const-string v3, "it is not ims pdn so go out!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 417
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/ePDGinterface;->myfeature:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    :cond_2
    aget v3, p1, v5

    if-eq v3, v6, :cond_4

    .line 419
    iget v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    if-eq v3, v0, :cond_3

    .line 421
    const-string v3, "it is not ims pdn so go out!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    const-string v3, "profile id is not 2 but cid is match so it is IMS PDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 431
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    invoke-interface {v3, v2}, Landroid/net/IConnectivityManager;->ePDGHandOverStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ePDG] notifyToEPDGClient RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processCallBackUnSoli(ILjava/lang/Object;)V
    .locals 0
    .param p1, "requestCommand"    # I
    .param p2, "qcrildata"    # Ljava/lang/Object;

    .prologue
    .line 893
    packed-switch p1, :pswitch_data_0

    .line 903
    .end local p2    # "qcrildata":Ljava/lang/Object;
    :goto_0
    return-void

    .line 896
    .restart local p2    # "qcrildata":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, [I

    .end local p2    # "qcrildata":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ePDGinterface;->notifyToEPDGClient([I)V

    goto :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch 0x41c
        :pswitch_0
    .end packed-switch
.end method

.method public processSoli(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "requestCommand"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "ret":Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized solicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 889
    :pswitch_0
    return-object v0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x172
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processSolicited(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "requestCommand"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "ret":Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized solicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 859
    :pswitch_0
    return-object v0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x172
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processUnSoli(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "requestCommand"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "ret":Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized unsolicited response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 873
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 867
    .restart local v0    # "ret":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x41c
        :pswitch_0
    .end packed-switch
.end method

.method public responseDataCallList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "dcrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v0, 0x0

    .line 605
    .local v0, "eActive":I
    const/4 v2, 0x0

    .line 606
    .local v2, "found":Z
    const/4 v6, 0x0

    .line 608
    .local v6, "mycid":I
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 610
    .local v7, "num":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ePDG] responseDataCallList start size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 612
    if-nez v7, :cond_1

    .line 671
    :cond_0
    return-void

    .line 617
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 619
    .local v5, "listclone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 621
    .local v1, "eCid":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 622
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 624
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 626
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-eq v6, v8, :cond_3

    .line 628
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " list cid= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 631
    :cond_3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 635
    if-nez v0, :cond_6

    .line 637
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "notused"

    invoke-interface {v8, v9, v6, v10, v11}, Landroid/net/IConnectivityManager;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 638
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    iget v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    if-ne v6, v8, :cond_4

    .line 641
    const/16 v8, 0x63

    iput v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    .line 650
    :cond_4
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyEPDGPDNStatus send :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 653
    :goto_3
    const/4 v2, 0x1

    .line 656
    :cond_5
    if-nez v2, :cond_2

    .line 658
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not exist, so this is disconnected!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 660
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "NotUsed"

    invoke-interface {v8, v9, v6, v10, v11}, Landroid/net/IConnectivityManager;->notifyEPDGPDNStatus(IIILjava/lang/String;)V

    .line 661
    iget-object v8, p0, Lcom/android/internal/telephony/ePDGinterface;->ePDGList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    iget v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I

    if-ne v6, v8, :cond_2

    .line 664
    const/16 v8, 0x63

    iput v8, p0, Lcom/android/internal/telephony/ePDGinterface;->mIMScid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 666
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 646
    :cond_6
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/ePDGinterface;->ConvtRespEPDGSetupDataCall(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 651
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public responseSetePDGPrefTech(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 685
    const-string v1, "responseSetePDGPrefTech-entered"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mConnMgr:Landroid/net/IConnectivityManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->ePDGPrefTechdone(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] responseSetePDGPrefTech RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendWifiStatustoModem(ZLjava/util/Collection;Ljava/lang/String;)V
    .locals 9
    .param p1, "isavail"    # Z
    .param p3, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "address":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/16 v8, 0x1f7

    const/4 v7, 0x0

    .line 716
    const/4 v3, 0x0

    .line 717
    .local v3, "myAddr":Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 720
    .local v4, "mywifiAddr":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]sendWifiStatustoModem: macAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 722
    if-nez p1, :cond_0

    .line 725
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v7, v5, v7, v6}, Lcom/android/internal/telephony/ePDGinterface;->setWifiAvaiable(I[IILandroid/os/Message;)V

    .line 765
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ePDGinterface;->makeAddrString(Ljava/lang/String;)V

    .line 735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x6

    if-ge v1, v5, :cond_1

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG] macAddr ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 740
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 742
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 745
    .local v0, "adr":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 749
    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 752
    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Lcom/android/internal/telephony/ePDGinterface;->revinetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v4

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]we found IPv4 addr!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 764
    .end local v0    # "adr":Landroid/net/LinkAddress;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/ePDGinterface;->myaddr:[I

    iget-object v7, p0, Lcom/android/internal/telephony/ePDGinterface;->mePDGHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/internal/telephony/ePDGinterface;->setWifiAvaiable(I[IILandroid/os/Message;)V

    goto :goto_0

    .line 759
    .restart local v0    # "adr":Landroid/net/LinkAddress;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EPDG]some strange addr in the list!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setWifiAvaiable(I[IILandroid/os/Message;)V
    .locals 5
    .param p1, "isAvaialbe"    # I
    .param p2, "macAddr"    # [I
    .param p3, "IPv4Addr"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x6

    .line 439
    const-string v2, "setWifiAvaiable entered ======>"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 441
    const/16 v2, 0x173

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 444
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez p1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    if-nez v2, :cond_0

    .line 476
    :goto_0
    return-void

    .line 449
    :cond_0
    if-nez p2, :cond_1

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 453
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_2

    .line 460
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 464
    :cond_2
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iput p1, p0, Lcom/android/internal/telephony/ePDGinterface;->mSendingisAv:I

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isAvaialbe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ipv4Addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 473
    const-string v2, "setWifiAvaiable send ======>"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setePDGsetprefTest(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "data_pref"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 381
    const/16 v1, 0x172

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 383
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,data_tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ePDGinterface;->log(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/ePDGinterface;->mMyRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 390
    return-void
.end method
