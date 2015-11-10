.class public Lcom/android/nfc/dhimpl/VNativeNfcManager;
.super Lcom/android/nfc/dhimpl/NativeNfcManager;
.source "VNativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/LDeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;,
        Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;
    }
.end annotation


# static fields
.field private static final EE_WIPE_APDUS:[[B

.field private static final HCE_APPLET_NOT_SELECTED:I = 0x3

.field private static final HCE_APPLET_SELECTED:I = 0x2

.field private static final HCE_APPLET_SELECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VNativeNfcManager"

.field private static final presentCheckCmd:[B


# instance fields
.field private mAppletSelectStatus:I

.field private final mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x5

    .line 29
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->presentCheckCmd:[B

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->EE_WIPE_APDUS:[[B

    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x0t
        -0x50t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x20t
        0x10t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x1et
        0x1t
        0x3t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x30t
        0x30t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x80t
        -0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/VNfcService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/VNfcService;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    .line 76
    iput-object p2, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    .line 77
    return-void
.end method

.method private notifyHostEmuExceedAidTable()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    check-cast v0, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/LDeviceHost$LDeviceHostListener;->onHostCardEmulationExceedAidTable()V

    .line 106
    return-void
.end method


# virtual methods
.method public SetFilterTag(I)Z
    .locals 1
    .param p1, "Enable"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetFilterTag(I)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public SetScreenState(Z)Z
    .locals 1
    .param p1, "Enable"    # Z

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetScreenState(Z)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public checkChipVer()Ljava/lang/String;
    .locals 6

    .prologue
    .line 116
    const-string v0, "unKnown"

    .line 117
    .local v0, "mCheckChipVer":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getChipVer()I

    move-result v1

    .line 119
    .local v1, "mChipVer":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 120
    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v2, "VNativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckChipVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-object v0
.end method

.method public checkFWVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0xffff

    .line 142
    const-string v0, "unKnown"

    .line 143
    .local v0, "mCheckFWVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getFWVersion()I

    move-result v1

    .line 145
    .local v1, "mFWVersion":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 146
    const-string v2, "%d.%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    shr-int/lit8 v5, v1, 0x10

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    and-int v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v2, "VNativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckFWVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    return-object v0
.end method

.method public checkMWVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 129
    const-string v0, "unKnown"

    .line 130
    .local v0, "mcheckMWVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->getMWVersion()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "VNativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcheckMWVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-object v0
.end method

.method public native clearRouting()V
.end method

.method public disableReaderMode()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDisableReaderMode()V

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public native disableRoutingToHost()V
.end method

.method public doDeselectSecureElement()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 86
    return-void
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doDisableReaderMode()V
.end method

.method public native doEnableReaderMode(I)V
.end method

.method public native doGetHWVersionInfo()I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doReceiveData()[B
.end method

.method public native doRfRefresh()V
.end method

.method public native doRouteAid([BII)Z
.end method

.method public doSelectSecureElement()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 82
    return-void
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public native doSendRawFrame([B)Z
.end method

.method public native doSetFilterTag(I)V
.end method

.method public native doSetScreenState(Z)V
.end method

.method public downloadFirmware()Z
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "isSuccess":Z
    const-string v1, "VNativeNfcManager"

    const-string v2, "1downloadFirmware : ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    .line 100
    :goto_0
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : EXIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0

    .line 97
    :cond_0
    const-string v1, "VNativeNfcManager"

    const-string v2, "downloadFirmware : FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePN544Quirks()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public enableReaderMode(I)Z
    .locals 1
    .param p1, "technologies"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doEnableReaderMode(I)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public native enableRoutingToHost()V
.end method

.method public native getChipVer()I
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetHWVersionInfo()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getFWVersion()I
.end method

.method public native getMWVersion()Ljava/lang/String;
.end method

.method public getWipeApdus()[[B
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->EE_WIPE_APDUS:[[B

    return-object v0
.end method

.method protected notifyConnectivityListeners(I)V
    .locals 1
    .param p1, "evtSrc"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onConnectivityEvent(I)V

    .line 300
    return-void
.end method

.method protected notifyHostEmuActivated()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/VNativeNfcManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onHostCardEmulationActivated()V

    .line 264
    return-void
.end method

.method protected notifyHostEmuData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 267
    sget-object v1, Lcom/android/nfc/dhimpl/VNativeNfcManager;->presentCheckCmd:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    if-eq v1, v3, :cond_0

    .line 268
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 269
    .local v0, "errorRsp":[B
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->sendRawFrame([B)Z

    .line 276
    .end local v0    # "errorRsp":[B
    :goto_0
    return-void

    .line 271
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_1

    aget-byte v1, p1, v4

    const/16 v2, 0xa4

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 272
    iput v4, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v1, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onHostCardEmulationData([B)V

    goto :goto_0

    .line 268
    nop

    :array_0
    .array-data 1
        0x6dt
        0x0t
    .end array-data
.end method

.method protected notifyHostEmuDeactivated()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    .line 280
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onHostCardEmulationDeactivated()V

    .line 281
    return-void
.end method

.method public notifyRfRefresh()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected notifySeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeApduReceived([B)V

    .line 312
    return-void
.end method

.method protected notifySeEmvCardRemoval()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeEmvCardRemoval()V

    .line 316
    return-void
.end method

.method protected notifySeFieldActivated()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onRemoteFieldActivated()V

    .line 304
    return-void
.end method

.method protected notifySeFieldDeactivated()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onRemoteFieldDeactivated()V

    .line 308
    return-void
.end method

.method protected notifySeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onSeMifareAccess([B)V

    .line 320
    return-void
.end method

.method protected notifyTargetDeselected()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationDeselected()V

    .line 289
    return-void
.end method

.method protected notifyTransactionListeners([B)V
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mListener:Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;->onCardEmulationAidSelected([B)V

    .line 296
    return-void
.end method

.method public routeAid([BII)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 182
    const/4 v0, 0x1

    .line 187
    .local v0, "status":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doRouteAid([BII)Z

    move-result v0

    .line 190
    return v0
.end method

.method public sendRawFrame([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 164
    const-string v1, "VNativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppletSelectStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 166
    array-length v1, p1

    if-le v1, v5, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    const/16 v2, -0x70

    if-ne v1, v2, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    .line 167
    iput v5, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSendRawFrame([B)Z

    move-result v0

    .line 174
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 175
    new-instance v1, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/VNativeNfcManager;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    :cond_1
    return v4

    .line 169
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager;->mAppletSelectStatus:I

    goto :goto_0
.end method

.method public native setDefaultAidRoute(I)Z
.end method

.method public native unrouteAid([BI)Z
.end method
