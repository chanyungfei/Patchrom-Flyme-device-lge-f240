.class final Lcom/android/nfc/VNfcService$VNfcServiceHandler;
.super Lcom/android/nfc/LNfcService$LNfcServiceHandler;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 457
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 579
    invoke-super/range {p0 .. p1}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 459
    :sswitch_0
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v23, "MSG_ROUTE_AID"

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 461
    .local v21, "route":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 462
    .local v19, "power":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 463
    .local v4, "aid":Ljava/lang/String;
    const/16 v20, 0x0

    .line 465
    .local v20, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v22, v0

    invoke-static {v4}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->routeAid([BII)Z

    move-result v20

    .line 467
    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/nfc/VNfcService;->mIsOverflowPopup:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/nfc/VNfcService;->mIsOverflowPopup:Z

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/VNfcService;->onHostCardEmulationExceedAidTable()V

    goto :goto_0

    .line 476
    .end local v4    # "aid":Ljava/lang/String;
    .end local v19    # "power":I
    .end local v20    # "result":Z
    .end local v21    # "route":I
    :sswitch_1
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v23, "MSG_SET_SCREEN_STATE"

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 478
    .local v11, "enable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->SetFilterTag(I)Z

    goto :goto_0

    .line 482
    .end local v11    # "enable":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/nfc/VNfcService;->mIsOverflowPopup:Z

    .line 483
    const/4 v9, 0x0

    .line 484
    .local v9, "commit":Z
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v23, "MSG_COMMIT_ROUTING"

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 486
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 487
    const/4 v9, 0x1

    .line 491
    :goto_1
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    if-eqz v9, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->commitRouting()Z

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static/range {v22 .. v22}, Lcom/android/nfc/VNfcService;->access$000(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v10

    .line 496
    .local v10, "defaultRoute":I
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Set default route "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->setDefaultAidRoute(I)Z

    .line 498
    new-instance v22, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 489
    .end local v10    # "defaultRoute":I
    :cond_1
    :try_start_1
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "Not committing routing because discovery is disabled."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 503
    .end local v9    # "commit":Z
    :sswitch_3
    sget-object v22, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v23, "MSG_CLEAR_ROUTING"

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->clearRouting()V

    goto/16 :goto_0

    .line 508
    :sswitch_4
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "Card Emulation message"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static/range {v22 .. v22}, Lcom/android/nfc/VNfcService;->access$000(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->this$0:Lcom/android/nfc/VNfcService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/nfc/VNfcService;->mVCardEmulationManager:Lcom/android/nfc/cardemulation/VCardEmulationManager;
    invoke-static/range {v22 .. v22}, Lcom/android/nfc/VNfcService;->access$000(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/cardemulation/VCardEmulationManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onOffHostAidSelected()V

    .line 515
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v4, v22

    check-cast v4, [B

    .line 517
    .local v4, "aid":[B
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v5, "aidIntent":Landroid/content/Intent;
    const-string v22, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v22, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 520
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "Broadcasting com.android.nfc_extras.action.AID_SELECTED"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 524
    .end local v4    # "aid":[B
    .end local v5    # "aidIntent":Landroid/content/Intent;
    :sswitch_5
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "SE EVENT CONNECTIVITY"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v12, "eventConnectivityIntent":Landroid/content/Intent;
    const-string v22, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    .end local v12    # "eventConnectivityIntent":Landroid/content/Intent;
    :sswitch_6
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "Card Removal message"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v8, Landroid/content/Intent;

    const-string v22, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v8, "cardRemovalIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 536
    .end local v8    # "cardRemovalIntent":Landroid/content/Intent;
    :sswitch_7
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "APDU Received message"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v6, v22

    check-cast v6, [B

    .line 539
    .local v6, "apduBytes":[B
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v7, "apduReceivedIntent":Landroid/content/Intent;
    const-string v22, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    if-eqz v6, :cond_3

    array-length v0, v6

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 542
    const-string v22, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 544
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 547
    .end local v6    # "apduBytes":[B
    .end local v7    # "apduReceivedIntent":Landroid/content/Intent;
    :sswitch_8
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "MIFARE access message"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v18, v22

    check-cast v18, [B

    .line 550
    .local v18, "mifareCmd":[B
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v16, "mifareAccessIntent":Landroid/content/Intent;
    const-string v22, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 553
    const/16 v22, 0x1

    aget-byte v22, v18, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 554
    .local v17, "mifareBlock":I
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Mifare Block="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v22, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    .end local v17    # "mifareBlock":I
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 561
    .end local v16    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v18    # "mifareCmd":[B
    :sswitch_9
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "Target Deselected"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v13, Landroid/content/Intent;

    const-string v22, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 566
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_a
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v14, Landroid/content/Intent;

    const-string v22, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v14, "listenModeActivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 573
    .end local v14    # "listenModeActivated":Landroid/content/Intent;
    :sswitch_b
    sget-boolean v22, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v23, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v24, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v15, Landroid/content/Intent;

    const-string v22, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v15, "listenModeDeactivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/VNfcService$VNfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2b -> :sswitch_9
        0x2e -> :sswitch_7
        0x2f -> :sswitch_6
        0x30 -> :sswitch_8
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_5
        0x34 -> :sswitch_1
    .end sparse-switch
.end method
