.class public Lcom/android/nfc/VNfcSecureElementService;
.super Lcom/lge/nfcaddon/INfcSecureElement$Stub;
.source "VNfcSecureElementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;
    }
.end annotation


# static fields
.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DBG:Z

.field static final PREF_SECURE_ELEMENT_ID:Ljava/lang/String; = "secure_element_id"

.field static final PREF_SECURE_ELEMENT_ON:Ljava/lang/String; = "secure_element_on"

.field static final SECURE_ELEMENT_ID_DEFAULT:I = 0x0

.field static final SECURE_ELEMENT_ON_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "VNfcSecureElementService"

.field private static mSelectedSeId:I


# instance fields
.field public isClosed:Z

.field public isOpened:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

.field public mOpenSmxPending:Z

.field public mPollingLoopStarted:Z

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

.field mSecureElementHandle:I

.field private mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

.field private mService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/VNfcSecureElementService;->DBG:Z

    .line 26
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/VNfcSecureElementService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Lcom/android/nfc/dhimpl/VNativeNfcManager;Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "deviceHost"    # Lcom/android/nfc/dhimpl/VNativeNfcManager;
    .param p4, "secureElement"    # Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPollingLoopStarted:Z

    .line 36
    iput-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mService:Lcom/android/nfc/NfcService;

    .line 38
    iput-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    .line 39
    iput-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    .line 40
    iput-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    .line 53
    iput-object p1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    .line 55
    iput-object p4, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    .line 56
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mService:Lcom/android/nfc/NfcService;

    .line 57
    iput-object p2, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 58
    iput-object p0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/VNfcSecureElementService;)Lcom/android/nfc/VNfcSecureElementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/VNfcSecureElementService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    return-object v0
.end method

.method private deselectMultiSecureElement(I)V
    .locals 1
    .param p1, "selectSeID"    # I

    .prologue
    .line 444
    sget-object v0, Lcom/android/nfc/VNfcSecureElementService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement()V

    goto :goto_0
.end method

.method private selectMultiSecureElement(I)V
    .locals 1
    .param p1, "selectSeID"    # I

    .prologue
    .line 452
    sget-object v0, Lcom/android/nfc/VNfcSecureElementService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSePatchEnabled:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement()V

    goto :goto_0
.end method


# virtual methods
.method public activeSwp()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 431
    sget-boolean v0, Lcom/android/nfc/VNfcSecureElementService;->DBG:Z

    const-string v1, "VNfcSecureElementService"

    const-string v2, "activeSwp"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 435
    const-string v0, "VNfcSecureElementService"

    const-string v1, "activeSwp - ERROR_NOT_INITIALIZED"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/16 v0, -0x11

    .line 439
    :goto_0
    return v0

    .line 438
    :cond_0
    const v0, 0xabcdf0

    invoke-direct {p0, v0}, Lcom/android/nfc/VNfcSecureElementService;->selectMultiSecureElement(I)V

    .line 439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeSecureElementConnection(I)I
    .locals 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const/16 v1, -0x11

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    iget-boolean v3, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    if-nez v3, :cond_0

    .line 167
    iget-boolean v3, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    if-eqz v3, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "mCloseSE":Z
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doDisconnect(I)Z

    move-result v0

    .line 175
    if-eqz v0, :cond_3

    .line 181
    iput-boolean v2, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    .line 183
    iput-boolean v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->isPollingLoopStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    const-string v1, "VNfcSecureElementService"

    const-string v3, "Stop Polling Loop"

    invoke-static {v1, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->maybeDisableDiscovery()V

    :goto_1
    move v1, v2

    .line 194
    goto :goto_0

    .line 190
    :cond_2
    const-string v1, "VNfcSecureElementService"

    const-string v3, "Start Polling Loop"

    invoke-static {v1, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->maybeEnableDiscovery()V

    goto :goto_1

    .line 201
    :cond_3
    iput-boolean v2, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->isPollingLoopStarted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    const-string v1, "VNfcSecureElementService"

    const-string v2, "Stop Polling Loop"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->maybeDisableDiscovery()V

    .line 214
    :goto_2
    const/4 v1, -0x5

    goto :goto_0

    .line 210
    :cond_4
    const-string v1, "VNfcSecureElementService"

    const-string v2, "Start Polling Loop"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->maybeEnableDiscovery()V

    goto :goto_2
.end method

.method public deselectSecureElement()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 336
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 337
    const/16 v0, -0x11

    .line 353
    :goto_0
    return v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const/16 v0, -0x14

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v1}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/nfc/VNfcSecureElementService;->deselectMultiSecureElement(I)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/nfc/VNfcSecureElementService;->setSelectedSeId(I)V

    .line 349
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "secure_element_on"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 350
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "secure_element_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public exchangeAPDU(I[B)[B
    .locals 2
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 306
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    if-nez v1, :cond_0

    .line 316
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    .line 328
    .local v0, "response":[B
    goto :goto_0
.end method

.method public getSecureElementList()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "list":[I
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v0

    .line 366
    :cond_0
    return-object v0
.end method

.method public getSecureElementTechList(I)[I
    .locals 2
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 242
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    if-nez v1, :cond_0

    .line 252
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doGetTechList(I)[I

    move-result-object v0

    .line 264
    .local v0, "techList":[I
    goto :goto_0
.end method

.method public getSecureElementUid(I)[B
    .locals 2
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 274
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    if-nez v1, :cond_0

    .line 284
    iget-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doGetUid(I)[B

    move-result-object v0

    .line 296
    .local v0, "uid":[B
    goto :goto_0
.end method

.method public getSelectedSeId()I
    .locals 1

    .prologue
    .line 463
    sget v0, Lcom/android/nfc/VNfcSecureElementService;->mSelectedSeId:I

    return v0
.end method

.method public getSelectedSecureElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 372
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    return v0
.end method

.method isOpenSmxPending()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    return v0
.end method

.method isPollingLoopStarted()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPollingLoopStarted:Z

    return v0
.end method

.method declared-synchronized maybeDisableDiscovery()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->isOpenSmxPending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->disableDiscovery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized maybeEnableDiscovery()V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mService:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    sget v1, Lcom/android/nfc/NfcService;->NFC_POLLING_MODE:I

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->isOpenSmxPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "VNfcSecureElementService"

    const-string v1, "maybeEnableDiscovery inside"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_1
    :try_start_2
    const-string v0, "VNfcSecureElementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mService:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public openSecureElementConnection()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 65
    const-string v2, "VNfcSecureElementService"

    const-string v3, "openSecureElementConnection"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-boolean v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doOpenSecureElementConnection()I

    move-result v0

    .line 80
    .local v0, "handle":I
    if-nez v0, :cond_2

    .line 81
    iput-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    goto :goto_0

    .line 83
    :cond_2
    iput v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementHandle:I

    .line 91
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    goto :goto_0
.end method

.method public openSecureElementConnectionForTTIA(I)I
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 103
    const-string v1, "VNfcSecureElementService"

    const-string v2, "openSecureElementConnectionForTTIA"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElement:Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->openSecureElementConnectionForTTIA(I)I

    move-result v0

    .line 108
    .local v0, "handle":I
    if-nez v0, :cond_0

    .line 109
    iput-boolean v3, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    .line 119
    :goto_0
    return v0

    .line 111
    :cond_0
    iput v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementHandle:I

    .line 115
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->isOpened:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/nfc/VNfcSecureElementService;->isClosed:Z

    .line 117
    iput-boolean v4, p0, Lcom/android/nfc/VNfcSecureElementService;->mOpenSmxPending:Z

    goto :goto_0
.end method

.method public selectSecureElement(I)I
    .locals 3
    .param p1, "seId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 391
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 392
    const/16 v0, -0x11

    .line 413
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 396
    const/16 v0, -0x12

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    const/16 v0, -0x13

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/nfc/VNfcSecureElementService;->setSelectedSeId(I)V

    .line 404
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/VNfcSecureElementService;->selectMultiSecureElement(I)V

    .line 407
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_element_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_element_id"

    iget-object v2, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v2}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 409
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecureElementState(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/VNfcSecureElementService;->selectMultiSecureElement(I)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/VNfcSecureElementService;->deselectMultiSecureElement(I)V

    goto :goto_0
.end method

.method public setSecureElementStateForTTIA(I)I
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "VNfcSecureElementService"

    const-string v1, "In setSecureElementStateForTTIA in LNfcService.java"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 223
    const-string v0, "VNfcSecureElementService"

    const-string v1, "after enforceCallingOrSelfPermission_setSecureElementStateForTTIA in LNfcService.java"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 226
    const-string v0, "VNfcSecureElementService"

    const-string v1, "doSelectSecureElement(mSelectedSeId) In setSecureElementStateForTTIA in LNfcService.java"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 232
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 229
    const-string v0, "VNfcSecureElementService"

    const-string v1, "doDeselectSecureElement(mSelectedSeId) In setSecureElementStateForTTIA in LNfcService.java"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {p0}, Lcom/android/nfc/VNfcSecureElementService;->getSelectedSeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    goto :goto_0
.end method

.method public setSelectedSeId(I)V
    .locals 0
    .param p1, "seID"    # I

    .prologue
    .line 460
    sput p1, Lcom/android/nfc/VNfcSecureElementService;->mSelectedSeId:I

    .line 461
    return-void
.end method

.method public storeSePreference(I)V
    .locals 3
    .param p1, "seId"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 380
    const-string v0, "VNfcSecureElementService"

    const-string v1, "SE Preference stored"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_element_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_element_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    return-void
.end method
