.class final Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;
.super Landroid/os/AsyncTask;
.source "VNativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/VNativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HceReceiverTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/VNativeNfcManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/VNativeNfcManager;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 325
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    monitor-enter v2

    .line 329
    :try_start_0
    const-string v1, "VNativeNfcManager"

    const-string v3, "Waiting for an APDU..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doReceiveData()[B

    move-result-object v0

    .line 331
    .local v0, "data":[B
    const-string v1, "VNativeNfcManager"

    const-string v3, "doReceiveData. reutrn.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/nfc/dhimpl/VNativeNfcManager$HceReceiverTask;->this$0:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->notifyHostEmuData([B)V

    .line 335
    :cond_0
    monitor-exit v2

    .line 336
    const/4 v1, 0x0

    return-object v1

    .line 335
    .end local v0    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
