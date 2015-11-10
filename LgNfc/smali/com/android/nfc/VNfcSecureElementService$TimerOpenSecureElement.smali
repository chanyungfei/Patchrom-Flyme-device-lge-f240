.class final Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;
.super Ljava/util/TimerTask;
.source "VNfcSecureElementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcSecureElementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimerOpenSecureElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcSecureElementService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcSecureElementService;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/VNfcSecureElementService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/VNfcSecureElementService;

    iget v0, v0, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementHandle:I

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "VNfcSecureElementService"

    const-string v1, "Open SMX timer expired"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/VNfcSecureElementService;

    # getter for: Lcom/android/nfc/VNfcSecureElementService;->mSecureElementService:Lcom/android/nfc/VNfcSecureElementService;
    invoke-static {v0}, Lcom/android/nfc/VNfcSecureElementService;->access$000(Lcom/android/nfc/VNfcSecureElementService;)Lcom/android/nfc/VNfcSecureElementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/VNfcSecureElementService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/VNfcSecureElementService;

    iget v1, v1, Lcom/android/nfc/VNfcSecureElementService;->mSecureElementHandle:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcSecureElementService;->closeSecureElementConnection(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method
