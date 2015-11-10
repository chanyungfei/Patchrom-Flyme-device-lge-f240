.class Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;
.super Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VNfcAdapterNxpService"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;-><init>()V

    .line 354
    const-string v0, "VNfcAdapterNxpService"

    iput-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DefaultRouteSet(IZZZ)V
    .locals 0
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    return-void
.end method

.method public MifareCLTRouteSet(IZZZ)V
    .locals 0
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    return-void
.end method

.method public MifareDesfireRouteSet(IZZZ)V
    .locals 0
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 440
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;
    invoke-static {v0}, Lcom/android/nfc/VNfcService;->access$200(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcSecureElementService;

    move-result-object v0

    return-object v0
.end method

.method public setScreenOffCondition(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 384
    iget-object v2, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/VNfcService;->access$100(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 386
    if-ne v1, p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 387
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VNfcAdapterNxpService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mHandler:Lcom/android/nfc/VNfcService$VNfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/VNfcService;->access$100(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$VNfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .locals 1
    .param p1, "entries"    # [Lcom/vzw/nfc/RouteEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method
