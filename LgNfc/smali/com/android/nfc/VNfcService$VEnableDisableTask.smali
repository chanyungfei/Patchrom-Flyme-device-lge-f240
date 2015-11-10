.class Lcom/android/nfc/VNfcService$VEnableDisableTask;
.super Lcom/android/nfc/LNfcService$LEnableDisableTask;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method downloadFirmware()V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    const-string v2, "downloadFirmware"

    const v3, 0x15f90

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 311
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 313
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v1, v1, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->downloadFirmware()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NXP Firmware downloading Success"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 321
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "loading TASK_BOOT"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 317
    :cond_0
    sget-object v1, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v2, "NXP Firmware downloading Fail"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method enableCardEmulationManager()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/VNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/VNfcService;->access$000(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcEnabled()V

    .line 332
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/VNfcService;->mIsRoutingTableDirty:Z

    .line 334
    :cond_0
    return-void
.end method
