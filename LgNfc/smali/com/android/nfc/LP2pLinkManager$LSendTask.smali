.class Lcom/android/nfc/LP2pLinkManager$LSendTask;
.super Lcom/android/nfc/P2pLinkManager$SendTask;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LP2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LSendTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LP2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/LP2pLinkManager;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;)I
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, "response":Landroid/nfc/NdefMessage;
    const/4 v1, 0x1

    .line 309
    .local v1, "handoverRunning":Z
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v6, :cond_1

    .line 310
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 311
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 312
    .local v2, "request":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_2

    .line 314
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v6, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 323
    if-nez v3, :cond_3

    .line 332
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :cond_1
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v6, :cond_5

    .line 336
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 337
    .restart local v2    # "request":Landroid/nfc/NdefMessage;
    if-nez v2, :cond_4

    .line 338
    sget-boolean v5, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v6, "LP2pLinkManager"

    const-string v7, "request from mHandoverManager.createHandoverRequestMessage is null"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v5, 0x1

    .line 350
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_1
    return v5

    .line 315
    .restart local v2    # "request":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HandoverRequestMessageRetry"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 320
    throw v0

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v1, 0x0

    .line 330
    goto :goto_0

    .line 341
    :cond_4
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v6, v2}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    .line 342
    .local v4, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 344
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    .end local v4    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_5
    if-eqz v3, :cond_2

    .line 347
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v6, p1, v3}, Lcom/android/nfc/handover/LHandoverManager;->doLgeHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 350
    const/4 v5, 0x0

    goto :goto_1
.end method

.method doWPSHandover(Landroid/nfc/NdefMessage;)I
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, "response":Landroid/nfc/NdefMessage;
    const/4 v1, 0x1

    .line 358
    .local v1, "handoverRunning":Z
    const-string v4, "LP2pLinkManager"

    const-string v5, "Trying - doWPSHandover"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/LHandoverManager;->getWPSRequestMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 362
    .local v2, "request":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_1

    .line 364
    :try_start_0
    sget-boolean v4, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v5, "LP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWPSHandover : request - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 366
    sget-boolean v4, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v5, "LP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWPSHandover : reponse - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v1, 0x0

    .line 380
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HandoverRequestMessageRetry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    throw v0

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v4, "LP2pLinkManager"

    const-string v5, "doWPSHandover : HANDOVER_UNSUPPORTED"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v4, 0x2

    .line 383
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :goto_1
    return v4

    .line 381
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v4, v3}, Lcom/android/nfc/handover/LHandoverManager;->doWPSHandover(Landroid/nfc/NdefMessage;)V

    .line 383
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendresultMessageforfinishBeamUI(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    :cond_0
    return-void
.end method

.method protected tryWPSHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/nfc/LP2pLinkManager$LSendTask;->doWPSHandover(Landroid/nfc/NdefMessage;)I

    move-result v0

    .line 401
    .local v0, "handoverResult":I
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v3, "LP2pLinkManager"

    const-string v4, "Trying WPShandover request"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 403
    packed-switch v0, :pswitch_data_0

    .line 417
    :goto_0
    return v1

    .line 405
    :pswitch_0
    const/4 v1, 0x1

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    const/4 v1, 0x0

    .line 409
    goto :goto_0

    .line 411
    :pswitch_2
    const/4 v1, 0x0

    .line 412
    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/LP2pLinkManager;->onHandoverUnsupported()V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
