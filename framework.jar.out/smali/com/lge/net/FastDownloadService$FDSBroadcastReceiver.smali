.class Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FDSBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method private constructor <init>(Lcom/lge/net/FastDownloadService;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/net/FastDownloadService;Lcom/lge/net/FastDownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/net/FastDownloadService;
    .param p2, "x1"    # Lcom/lge/net/FastDownloadService$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;-><init>(Lcom/lge/net/FastDownloadService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "action":Ljava/lang/String;
    const/4 v3, 0x0

    .line 391
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    const/4 v4, 0x0

    .line 393
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 394
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    check-cast v4, Landroid/net/NetworkInfo;

    .line 396
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 397
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "networkTypeName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 399
    .local v1, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received CONNECTIVITY_ACTION_IMMEDIATE for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " detailedState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 401
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v6, :cond_4

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 404
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$202(Lcom/lge/net/FastDownloadService;Z)Z

    .line 516
    .end local v1    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v5    # "networkTypeName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 405
    .restart local v1    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v5    # "networkTypeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 406
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mHipriConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$302(Lcom/lge/net/FastDownloadService;Z)Z

    .line 407
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->stopNetStatPoll()V

    .line 410
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v11}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 413
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$602(Lcom/lge/net/FastDownloadService;Z)Z

    .line 414
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->stopNetStatPoll()V

    .line 419
    :cond_3
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v12}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto :goto_0

    .line 422
    :cond_4
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v6, :cond_9

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is disconnected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_5

    .line 425
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$202(Lcom/lge/net/FastDownloadService;Z)Z

    .line 426
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->stopNetStatPoll()V

    goto/16 :goto_0

    .line 431
    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 432
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mHipriConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$302(Lcom/lge/net/FastDownloadService;Z)Z

    .line 433
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 435
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->stopNetStatPoll()V

    .line 436
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->updateBandwidthCache()V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$800(Lcom/lge/net/FastDownloadService;)V

    .line 439
    :cond_6
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v11}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto/16 :goto_0

    .line 441
    :cond_7
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 442
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiConnected:Z
    invoke-static {v6, v9}, Lcom/lge/net/FastDownloadService;->access$602(Lcom/lge/net/FastDownloadService;Z)Z

    .line 443
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 445
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->stopNetStatPoll()V

    .line 447
    :cond_8
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->resetBandwidthCache()V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$900(Lcom/lge/net/FastDownloadService;)V

    .line 449
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v12}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto/16 :goto_0

    .line 452
    :cond_9
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v6, :cond_0

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is connected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 456
    :try_start_0
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mConnectivtyManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$1000(Lcom/lge/net/FastDownloadService;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "linkProperties: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_b

    .line 463
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mDefaultMobileConnected:Z
    invoke-static {v6, v8}, Lcom/lge/net/FastDownloadService;->access$202(Lcom/lge/net/FastDownloadService;Z)Z

    .line 464
    if-eqz v3, :cond_a

    .line 465
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1102(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->getLocalAddress(Landroid/net/LinkProperties;)[B
    invoke-static {v7, v3}, Lcom/lge/net/FastDownloadService;->access$1300(Lcom/lge/net/FastDownloadService;Landroid/net/LinkProperties;)[B

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileLocalAddress:[B
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1202(Lcom/lge/net/FastDownloadService;[B)[B

    .line 468
    :cond_a
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 470
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->startNetStatPoll()V

    goto/16 :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception of getLinkProperties - e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_d

    .line 474
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mHipriConnected:Z
    invoke-static {v6, v8}, Lcom/lge/net/FastDownloadService;->access$302(Lcom/lge/net/FastDownloadService;Z)Z

    .line 476
    if-eqz v3, :cond_c

    .line 477
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1102(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->getLocalAddress(Landroid/net/LinkProperties;)[B
    invoke-static {v7, v3}, Lcom/lge/net/FastDownloadService;->access$1300(Lcom/lge/net/FastDownloadService;Landroid/net/LinkProperties;)[B

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mMobileLocalAddress:[B
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1202(Lcom/lge/net/FastDownloadService;[B)[B

    .line 481
    :cond_c
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 482
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$1400(Lcom/lge/net/FastDownloadService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v8}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    .line 485
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 486
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->startNetStatPoll()V

    goto/16 :goto_0

    .line 490
    :cond_d
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 491
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiConnected:Z
    invoke-static {v6, v8}, Lcom/lge/net/FastDownloadService;->access$602(Lcom/lge/net/FastDownloadService;Z)Z

    .line 492
    if-eqz v3, :cond_e

    .line 493
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1502(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v7, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # invokes: Lcom/lge/net/FastDownloadService;->getLocalAddress(Landroid/net/LinkProperties;)[B
    invoke-static {v7, v3}, Lcom/lge/net/FastDownloadService;->access$1300(Lcom/lge/net/FastDownloadService;Landroid/net/LinkProperties;)[B

    move-result-object v7

    # setter for: Lcom/lge/net/FastDownloadService;->mWifiLocalAddress:[B
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$1602(Lcom/lge/net/FastDownloadService;[B)[B

    .line 497
    :cond_e
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsMultiBearer:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$400(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mIsPollStatsRunning:Z
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$700(Lcom/lge/net/FastDownloadService;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 499
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    iget-object v6, v6, Lcom/lge/net/FastDownloadService;->mBandwidthTracker:Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;

    invoke-virtual {v6}, Lcom/lge/net/FastDownloadService$FDSBandwidthTracker;->startNetStatPoll()V

    .line 501
    :cond_f
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mFDSUsageList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$1400(Lcom/lge/net/FastDownloadService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 503
    iget-object v6, p0, Lcom/lge/net/FastDownloadService$FDSBroadcastReceiver;->this$0:Lcom/lge/net/FastDownloadService;

    const/4 v7, 0x3

    # invokes: Lcom/lge/net/FastDownloadService;->eventCallback(I)V
    invoke-static {v6, v7}, Lcom/lge/net/FastDownloadService;->access$500(Lcom/lge/net/FastDownloadService;I)V

    goto/16 :goto_0

    .line 509
    .end local v1    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v5    # "networkTypeName":Ljava/lang/String;
    :cond_10
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    check-cast v4, Landroid/net/NetworkInfo;

    .line 512
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received CONNECTIVITY_ACTION for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " detailedState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
