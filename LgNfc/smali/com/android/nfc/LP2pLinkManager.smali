.class public Lcom/android/nfc/LP2pLinkManager;
.super Lcom/android/nfc/P2pLinkManager;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LP2pLinkManager$LSendTask;,
        Lcom/android/nfc/LP2pLinkManager$LConnectTask;,
        Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;
    }
.end annotation


# static fields
.field static final LG_SHARING_SAP:I = 0x1f

.field static final MSG_HANDOVER_CONFLICT:I = 0x35

.field static final MSG_LLCP_DEACTIVATED_EXCEPTION:I = 0x34

.field private static final TAG:Ljava/lang/String; = "LP2pLinkManager"

.field static mDefaultFragmentLength:I


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

.field final mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

.field final mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

.field final mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/LHandoverManager;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V

    .line 60
    iput-object p2, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    .line 61
    iput-object p3, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    .line 62
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 65
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p3}, Lcom/android/nfc/lgsharing/LSharingServer;-><init>(ILcom/android/nfc/lgsharing/LSharingManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 72
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/LHandoverManager;
    .param p3, "sharingManager"    # Lcom/android/nfc/lgsharing/LSharingManager;
    .param p4, "defaultMiu"    # I
    .param p5, "defaultRwSize"    # I
    .param p6, "defaultFragmentLength"    # I

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/LP2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverManager;Lcom/android/nfc/lgsharing/LSharingManager;II)V

    .line 77
    sput p6, Lcom/android/nfc/LP2pLinkManager;->mDefaultFragmentLength:I

    .line 78
    return-void
.end method


# virtual methods
.method protected checkp2pSendConfirmation()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v1, p0}, Lcom/android/nfc/lgsharing/LSharingManager;->sendSharingServices(Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverManager;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/LHandoverManager;->isHandoverServiceBind()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onHandoverConflict()V

    .line 255
    :cond_2
    :goto_0
    return-void

    .line 242
    :cond_3
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 243
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/LP2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 246
    :cond_4
    sget-boolean v1, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v2, "LP2pLinkManager"

    const-string v3, "onP2pSendConfirmationRequested() - Add Exception"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 247
    iget v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/LHandoverManager;->getBeamTitleString(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "title":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    invoke-interface {v1, v0}, Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;->onP2pSendConfirmationRequested_addException(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    goto :goto_0

    .line 247
    .end local v0    # "title":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "LP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LConnectTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 277
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 1
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->start()V

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 94
    return-void

    .line 87
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/LP2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingServer:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer;->stop()V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 447
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->handleMessage(Landroid/os/Message;)Z

    .line 450
    :goto_0
    return v3

    .line 426
    :sswitch_0
    monitor-enter p0

    .line 427
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 429
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_0

    .line 430
    monitor-exit p0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 432
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 434
    sget-boolean v0, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v1, "LP2pLinkManager"

    const-string v2, "onP2pHandoverNotSupported()"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 436
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->onLlcpDeactivated()V

    goto :goto_0

    .line 443
    :sswitch_2
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mContext:Landroid/content/Context;

    const v1, 0x7f08004e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x34 -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic isLlcpActive()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z

    move-result v0

    return v0
.end method

.method protected newP2pEventListener(Landroid/content/Context;)Lcom/android/nfc/P2pEventListener;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    new-instance v0, Lcom/android/nfc/LP2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/LP2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    .line 456
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLEventListener:Lcom/android/nfc/LP2pLinkManager$LP2pEventListener;

    return-object v0
.end method

.method onHandoverConflict()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public onLlcpActivated()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/LHandoverManager;->handoverLLCPActivated()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpActivated()V

    .line 135
    :cond_1
    const-string v0, "LP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    .line 137
    return-void
.end method

.method public onLlcpDeactivated()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingManager;->onLlcpDeactivated()V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 145
    return-void
.end method

.method public bridge synthetic onLlcpFirstPacketReceived()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    return-void
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 2
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 122
    :goto_0
    return-void

    .line 102
    :cond_0
    monitor-enter p0

    .line 103
    :try_start_0
    iget v0, p0, Lcom/android/nfc/LP2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 104
    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 113
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendState:I

    .line 116
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 117
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/LP2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 118
    monitor-exit p0

    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    goto :goto_1

    .line 120
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto :goto_0
.end method

.method public bridge synthetic onP2pCanceled()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pCanceled()V

    return-void
.end method

.method public bridge synthetic onP2pSendConfirmed()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed()V

    return-void
.end method

.method public bridge synthetic onUserSwitched(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    return-void
.end method

.method prepareMessageToSend(Z)V
    .locals 14
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v11, p0, Lcom/android/nfc/LP2pLinkManager;->mNdefCallbackUid:I

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "mValidCallbackPackages":[Ljava/lang/String;
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I

    .line 153
    iget-boolean v10, p0, Lcom/android/nfc/LP2pLinkManager;->mIsSendEnabled:Z

    if-nez v10, :cond_0

    .line 154
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 155
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 156
    monitor-exit p0

    .line 221
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v7, 0x0

    .line 160
    .local v7, "runningPackage":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 161
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 162
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 165
    :cond_1
    if-nez v7, :cond_2

    .line 166
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    const-string v12, "Could not determine running package."

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 168
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 169
    monitor-exit p0

    goto :goto_0

    .line 219
    .end local v5    # "mValidCallbackPackages":[Ljava/lang/String;
    .end local v7    # "runningPackage":Ljava/lang/String;
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 173
    .restart local v5    # "mValidCallbackPackages":[Ljava/lang/String;
    .restart local v7    # "runningPackage":Ljava/lang/String;
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v10, :cond_5

    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "callbackValid":Z
    if-eqz v5, :cond_3

    .line 179
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 180
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    .line 181
    const/4 v1, 0x1

    .line 187
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_6

    .line 190
    :try_start_2
    iget-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v10}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v8

    .line 191
    .local v8, "shareData":Landroid/nfc/BeamShareData;
    iget-object v10, v8, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 192
    iget-object v10, v8, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 193
    iget v10, v8, Landroid/nfc/BeamShareData;->flags:I

    iput v10, p0, Lcom/android/nfc/LP2pLinkManager;->mSendFlags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 179
    .end local v8    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed NDEF callback: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1    # "callbackValid":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/nfc/LP2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 209
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    const-string v12, "Disabling default Beam behavior"

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 211
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 217
    :goto_3
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMessageToSend = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mUrisToSend = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 219
    monitor-exit p0

    goto/16 :goto_0

    .line 202
    .restart local v1    # "callbackValid":Z
    :cond_6
    sget-boolean v10, Lcom/android/nfc/LP2pLinkManager;->DBG:Z

    const-string v11, "LP2pLinkManager"

    const-string v12, "Last registered callback is not running in the foreground."

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    .end local v1    # "callbackValid":Z
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/nfc/LP2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 214
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/LP2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public sendNdefMessage()V
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/LP2pLinkManager;->cancelSendNdefMessage()V

    .line 265
    new-instance v0, Lcom/android/nfc/LP2pLinkManager$LSendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/LP2pLinkManager$LSendTask;-><init>(Lcom/android/nfc/LP2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 266
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    monitor-exit p0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 0
    .param p1, "x0"    # Landroid/nfc/IAppCallback;
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    return-void
.end method
