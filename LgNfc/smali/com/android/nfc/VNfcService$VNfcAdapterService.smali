.class public Lcom/android/nfc/VNfcService$VNfcAdapterService;
.super Lcom/android/nfc/LNfcService$LNfcAdapterService;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LNfcAdapterService;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .locals 2
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "disableRoutingToHost when power off"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->disableRoutingToHost()V

    .line 344
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/LNfcService$LNfcAdapterService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mExtrasService:Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;

    return-object v0
.end method
