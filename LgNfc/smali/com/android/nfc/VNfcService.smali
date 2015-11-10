.class public Lcom/android/nfc/VNfcService;
.super Lcom/android/nfc/LNfcService;
.source "VNfcService.java"

# interfaces
.implements Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/VNfcService$OpenSecureElement;,
        Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/VNfcService$VNfcServiceHandler;,
        Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;,
        Lcom/android/nfc/VNfcService$VNfcAdapterService;,
        Lcom/android/nfc/VNfcService$VEnableDisableTask;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field static final MSG_CARD_EMULATION:I = 0x2a

.field static final MSG_CLEAR_ROUTING:I = 0x29

.field static final MSG_CONNECTIVITY_EVENT:I = 0x33

.field static final MSG_SET_SCREEN_STATE:I = 0x34

.field static final MSG_SE_APDU_RECEIVED:I = 0x2e

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0x2f

.field static final MSG_SE_FIELD_ACTIVATED:I = 0x2c

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x2d

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0x31

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0x32

.field static final MSG_SE_MIFARE_ACCESS:I = 0x30

.field static final MSG_TARGET_DESELECTED:I = 0x2b

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_ALWAYS:I = 0x5

.field static final ROUTE_ON_WHEN_POWER_ON:I = 0x4

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field static final ROUTE_ON_WHEN_SCREEN_UNLOCK:I = 0x3

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field static TAG:Ljava/lang/String; = null

.field static final TASK_EE_WIPE:I = 0x4

.field public static final UICC_ID_TYPE:I = 0x2

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field protected static sService:Lcom/android/nfc/VNfcService;


# instance fields
.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mExtrasService:Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;

.field private mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

.field private mHceRoutingState:I

.field mIsOverflowPopup:Z

.field mIsRouteForced:Z

.field mIsRoutingTableDirty:Z

.field mNfcHceRouteEnabled:Z

.field mNfcPollingEnabled:Z

.field private mNfcServiceNxp:Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;

.field mNfceeRouteEnabled:Z

.field private mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

.field private mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

.field private mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

.field protected mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    .line 81
    const-string v0, "NfcServiceNXP"

    sput-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 8
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService;-><init>(Landroid/app/Application;)V

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mSePackages:Ljava/util/HashSet;

    .line 221
    iput-boolean v7, p0, Lcom/android/nfc/VNfcService;->mIsOverflowPopup:Z

    .line 452
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    .line 229
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NfcServiceNXP is Start"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sput-object p0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    .line 233
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcAdapterService;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 235
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 236
    const-string v0, "nfcaddon"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcAddOnService:Lcom/android/nfc/LNfcService$LNfcServiceAddonService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 238
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    .line 239
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    .line 240
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    check-cast v0, Lcom/android/nfc/DeviceHost;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 242
    new-instance v0, Lcom/android/nfc/LP2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    iget-object v4, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpMiu()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 246
    new-instance v0, Lcom/android/nfc/LNfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-boolean v3, p0, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/LNfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 248
    new-instance v0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mNfcServiceNxp:Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;

    .line 249
    const-string v0, "nfcvendor"

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mNfcServiceNxp:Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcCommon;->addNfcService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 251
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcTest;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/VNativeNfcTest;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    .line 252
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    .line 253
    new-instance v0, Lcom/android/nfc/VNfcSecureElementService;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    iget-object v4, p0, Lcom/android/nfc/VNfcService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/VNfcSecureElementService;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/android/nfc/dhimpl/VNativeNfcManager;Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    .line 255
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    .line 258
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 263
    :cond_0
    sget-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSupportWalletType:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;->st:Lcom/lge/nfcconfig/NfcConfigure$SupportWalletList;

    if-ne v0, v1, :cond_1

    .line 264
    new-instance v0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/VNfcService;)V

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mExtrasService:Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;

    .line 269
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/VNfcService;->mEeRoutingState:I

    .line 270
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/VNfcService;->mHceRoutingState:I

    .line 271
    iput-boolean v6, p0, Lcom/android/nfc/VNfcService;->mIsRoutingTableDirty:Z

    .line 273
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_2

    .line 295
    :cond_2
    sget-object v0, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mVendorStablePatch:Z

    if-ne v0, v6, :cond_3

    .line 296
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "TASK_FIRMWARE_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$VNfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcSecureElementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/VNfcService;Lcom/android/nfc/VNfcService$OpenSecureElement;)Lcom/android/nfc/VNfcService$OpenSecureElement;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;
    .param p1, "x1"    # Lcom/android/nfc/VNfcService$OpenSecureElement;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/VNfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/nfc/VNfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/nfc/VNfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/VNfcService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/nfc/VNfcService;->mEeRoutingState:I

    return p1
.end method

.method public static getInstance()Lcom/android/nfc/VNfcService;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/nfc/VNfcService;->sService:Lcom/android/nfc/VNfcService;

    return-object v0
.end method

.method private setDefaultRoute(I)Z
    .locals 2
    .param p1, "routeLoc"    # I

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setDefaultAidRoute(I)Z

    move-result v0

    .line 1058
    .local v0, "ret":Z
    return v0
.end method


# virtual methods
.method public SelectSecureElement()V
    .locals 5

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v1

    .line 1080
    .local v1, "seList":[I
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    return-void
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 739
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_2

    .line 743
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/VNfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_3

    .line 746
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 750
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 751
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/VNfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->doDisconnect(I)V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;

    .line 753
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "applyRouting -8"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcService;->applyRouting(Z)V

    .line 755
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    return-void
.end method

.method protected changeHceRouteWhenNoApp()V
    .locals 3

    .prologue
    .line 600
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "changeHceRouteWhenNoApp"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    :cond_0
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "changeHceRouteWhenNoApp - Not updating routing table because NFC is off."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 605
    :cond_2
    iget v0, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 609
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 610
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 612
    sget-boolean v0, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-HCE OFF - no app"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    .line 614
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->disableRoutingToHost()V

    goto :goto_0
.end method

.method public clearRouting()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1050
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1054
    return-void
.end method

.method protected computeEmulationParameters(ZI)V
    .locals 7
    .param p1, "force"    # Z
    .param p2, "screenState"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 963
    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 964
    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    if-ne v1, v4, :cond_6

    .line 965
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->maybeDisconnectTarget()V

    .line 966
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1, v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->SetScreenState(Z)Z

    .line 967
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "SCREEN_STATE_OFF"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/nfc/VNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    const-string v1, "SecureElementType"

    const-string v2, "INITVALUE"

    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 980
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "configure EE routing"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget v1, p0, Lcom/android/nfc/VNfcService;->mEeRoutingState:I

    if-ne v1, v6, :cond_8

    if-ne p2, v6, :cond_8

    .line 982
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    if-nez v1, :cond_2

    .line 983
    :cond_1
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-EE ON"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iput-boolean v4, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    .line 985
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->SelectSecureElement()V

    .line 1004
    :cond_2
    :goto_1
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "configure HCE routing"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget v1, p0, Lcom/android/nfc/VNfcService;->mHceRoutingState:I

    if-ne v1, v3, :cond_c

    if-lt p2, v3, :cond_c

    sget-object v1, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1007
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    if-nez v1, :cond_4

    .line 1008
    :cond_3
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-HCE ON"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iput-boolean v4, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    .line 1010
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->enableRoutingToHost()V

    .line 1024
    :cond_4
    :goto_2
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configure routing table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/nfc/VNfcService;->mIsRoutingTableDirty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsRoutingTableDirty:Z

    if-eqz v1, :cond_5

    .line 1027
    :try_start_0
    sget-object v1, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    iget-object v3, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(II)Z

    move-result v0

    .line 1030
    .local v0, "routingOffhost":Z
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setDefaultAidRoute(I)Z

    .line 1031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/VNfcService;->mIsRoutingTableDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v0    # "routingOffhost":Z
    :cond_5
    :goto_4
    return-void

    .line 969
    :cond_6
    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    if-ne v1, v3, :cond_7

    .line 970
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1, v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->SetScreenState(Z)Z

    .line 971
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "SCREEN_STATE_ON_LOCKED"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_7
    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    if-ne v1, v6, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->SetScreenState(Z)Z

    .line 974
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "SCREEN_STATE_ON_UNLOCKED"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    :cond_8
    iget v1, p0, Lcom/android/nfc/VNfcService;->mEeRoutingState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    if-lt p2, v4, :cond_a

    .line 989
    if-nez p1, :cond_9

    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    if-nez v1, :cond_2

    .line 990
    :cond_9
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-EE ON"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iput-boolean v4, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    .line 992
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->SelectSecureElement()V

    goto/16 :goto_1

    .line 996
    :cond_a
    if-nez p1, :cond_b

    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    if-eqz v1, :cond_2

    .line 997
    :cond_b
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-EE OFF"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iput-boolean v5, p0, Lcom/android/nfc/VNfcService;->mNfceeRouteEnabled:Z

    .line 999
    invoke-virtual {p0}, Lcom/android/nfc/VNfcService;->deSelectSecureElement()V

    goto/16 :goto_1

    .line 1014
    :cond_c
    if-nez p1, :cond_d

    iget-boolean v1, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    if-eqz v1, :cond_4

    .line 1015
    :cond_d
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NFC-HCE OFF"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iput-boolean v5, p0, Lcom/android/nfc/VNfcService;->mNfcHceRouteEnabled:Z

    .line 1017
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->disableRoutingToHost()V

    goto/16 :goto_2

    .line 1030
    .restart local v0    # "routingOffhost":Z
    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_3

    .line 1032
    .end local v0    # "routingOffhost":Z
    :catch_0
    move-exception v1

    goto :goto_4
.end method

.method protected configureScreenState()V
    .locals 3

    .prologue
    .line 587
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    iget v1, p0, Lcom/android/nfc/VNfcService;->mScreenState:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->setScreenState(I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "NFC is already turned off."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deSelectSecureElement()V
    .locals 5

    .prologue
    .line 1087
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v1

    .line 1088
    .local v1, "seList":[I
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 728
    return-void

    .line 726
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doOpenSecureElementConnection()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 713
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/VNfcService;->doTransceiveNoLock(I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 626
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_2
    return-void
.end method

.method public getDefaultSecureElement()I
    .locals 3

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v0

    .line 1071
    .local v0, "seList":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1073
    :cond_0
    const/4 v1, -0x1

    .line 1075
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/nfc/VNfcService$VEnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/VNfcService$VEnableDisableTask;-><init>(Lcom/android/nfc/VNfcService;)V

    return-object v0
.end method

.method public onCardEmulationAidSelected([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 650
    :cond_0
    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 652
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 641
    :cond_0
    const/16 v0, 0x2b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 643
    return-void
.end method

.method public onConnectivityEvent(I)V
    .locals 3
    .param p1, "evtSrc"    # I

    .prologue
    .line 656
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectivityEvent : Source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/16 v0, 0x33

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 658
    return-void
.end method

.method public onSeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 684
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 686
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .locals 2

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 691
    :cond_0
    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 693
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 663
    :cond_0
    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 665
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationActivated()V

    .line 668
    :cond_1
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 673
    :cond_0
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 675
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 678
    :cond_1
    return-void
.end method

.method public onSeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 698
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/VNfcService;->sendMessage(ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method protected receivedShutDownIntent()V
    .locals 3

    .prologue
    .line 1104
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "Device is shutting down."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    sget-object v0, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v2, "uicc"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->disableRoutingToHost()V

    .line 1108
    :cond_0
    return-void
.end method

.method public routeAids(Ljava/lang/String;II)V
    .locals 8
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1038
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/nfc/VNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getRouteAidsPowerState()I

    move-result p3

    .line 1040
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1041
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1042
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1043
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1044
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1045
    sget-boolean v1, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "routeAids : aid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rounte-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " powerState-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 447
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 448
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method
