.class Lcom/android/nfc/LNfcService$LEnableDisableTask;
.super Lcom/android/nfc/NfcService$EnableDisableTask;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method bootInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 709
    const-string v1, "LNfcService"

    const-string v2, "bootInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "LNfcService"

    const-string v2, "checking on firmware download"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 713
    .local v0, "airplaneOverride":Z
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->setBootComplete()V

    .line 716
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "first_boot"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    const-string v1, "LNfcService"

    const-string v2, "First Boot"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "first_boot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 719
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 723
    :cond_0
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    const-string v1, "LNfcService"

    const-string v2, "Factory Mode. Skip BootInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 729
    :cond_2
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v1, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 730
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 731
    :cond_3
    const-string v1, "LNfcService"

    const-string v2, "NFC is on. Doing normal stuff"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    goto :goto_0

    .line 735
    :cond_4
    const-string v1, "LNfcService"

    const-string v2, "NFC is on. But Airplane mode enable"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 737
    invoke-virtual {p0, v3, v3}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 738
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 749
    :goto_1
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    const-string v1, "LNfcService"

    const-string v2, "[KR_SKT] NFC is off. mDeviceHost init /deinit"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->initialize()Z

    .line 752
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    goto :goto_0

    .line 741
    :cond_5
    const-string v1, "LNfcService"

    const-string v2, "NFC is off. Checking firmware version"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 743
    invoke-virtual {p0, v3, v3}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 744
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 745
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    goto :goto_1
.end method

.method varargs checkCurrentState([Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 654
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 665
    :pswitch_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 676
    :pswitch_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 687
    :pswitch_2
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    .line 698
    :pswitch_3
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 657
    :pswitch_4
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSysState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :pswitch_5
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :pswitch_6
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDiscoveryState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :pswitch_7
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mP2pState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 665
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 676
    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 687
    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_7
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method checkSecureElementConfiguration()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method disableInternal()Z
    .locals 5

    .prologue
    const/16 v4, 0x29

    const/4 v3, 0x0

    .line 869
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 891
    :goto_0
    return v0

    .line 873
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 876
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/nfc/LNfcService;->mState:I

    .line 877
    invoke-super {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    move-result v0

    .line 879
    .local v0, "result":Z
    const-string v1, "LNfcService"

    const-string v2, "disableInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    .line 882
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    .line 883
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 885
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 886
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 887
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 889
    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 590
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 602
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkCurrentState([Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    :goto_0
    return-object v4

    .line 597
    :pswitch_1
    const-string v0, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from bad state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 615
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 649
    :goto_1
    :pswitch_2
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 617
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    goto :goto_1

    .line 620
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_1

    .line 623
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_1

    .line 626
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->downloadFirmware()V

    .line 628
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_1

    .line 632
    :pswitch_7
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enablePowerSavingMode(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 635
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableSavedSetting()V

    goto :goto_1

    .line 638
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    .line 639
    const/16 v0, 0x35

    invoke-static {v0}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    goto :goto_1

    .line 642
    :pswitch_a
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_3
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_4
    invoke-virtual {p0, v2, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcPowerStatus(ZZ)V

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    .line 594
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method downloadFirmware()V
    .locals 2

    .prologue
    .line 928
    const-string v0, "LNfcService"

    const-string v1, "Dummy Firmware download!!! This Message MUST NOT be printed!!!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v0, "LNfcService"

    const-string v1, "loading TASK_BOOT"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method enableCardEmulationManager()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcEnabled()V

    .line 707
    :cond_0
    return-void
.end method

.method enableInternal()Z
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method enableInternal(Z)Z
    .locals 4
    .param p1, "isApplyRoutingForce"    # Z

    .prologue
    .line 767
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v0

    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    move-result v0

    return v0
.end method

.method enableInternal(ZZZZ)Z
    .locals 9
    .param p1, "isApplyRoutingForce"    # Z
    .param p2, "cardOn"    # Z
    .param p3, "discoveryOn"    # Z
    .param p4, "p2pOn"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "cardModeChange":Z
    const/4 v2, 0x0

    .line 776
    .local v2, "rwModeChange":Z
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 777
    const-string v6, "LNfcService"

    const-string v7, "enableInternal"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/4 v0, 0x1

    .line 779
    const/4 v2, 0x1

    .line 780
    if-eqz p3, :cond_0

    .line 781
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 783
    :cond_0
    const/16 v6, 0x2a

    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 785
    new-instance v3, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v7, "enableInternal"

    const v8, 0x15f90

    invoke-direct {v3, v6, v7, v8}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 786
    .local v3, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 788
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 791
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 795
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v6

    if-nez v6, :cond_1

    .line 796
    const-string v5, "LNfcService"

    const-string v6, "Error enabling NFC"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 798
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 814
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 861
    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :goto_0
    return v4

    .line 807
    .restart local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 811
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 814
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 817
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->initSoundPool()V

    .line 819
    const/16 v6, 0x2b

    invoke-static {v6}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 823
    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_2
    invoke-static {p2}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_9

    :cond_3
    move v0, v5

    .line 824
    :goto_1
    invoke-static {p3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v2, :cond_a

    :cond_4
    move v2, v5

    .line 825
    :goto_2
    invoke-static {p4}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 827
    if-eqz v0, :cond_5

    .line 828
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkSecureElementConfiguration()V

    .line 831
    :cond_5
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 832
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v6

    .line 833
    :try_start_4
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 835
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 837
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 845
    :goto_3
    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    .line 846
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/LNfcService;->applyRouting(Z)V

    .line 849
    :cond_7
    if-eqz v0, :cond_8

    .line 850
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableCardEmulationManager()V

    .line 853
    :cond_8
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardOn()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    :goto_4
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 854
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x17

    :goto_5
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 855
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x21

    :goto_6
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 857
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    :goto_7
    invoke-virtual {p0, v4, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 858
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 859
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    move v4, v5

    .line 861
    goto/16 :goto_0

    .line 801
    .restart local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "LNfcService"

    const-string v6, "Error enabling NFC"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 804
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 807
    :try_start_6
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 814
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto/16 :goto_0

    .line 807
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_7
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 814
    :catchall_1
    move-exception v4

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v4

    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_9
    move v0, v4

    .line 823
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 824
    goto/16 :goto_2

    .line 837
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 839
    :cond_b
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v6, v4, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    goto :goto_3

    .line 853
    :cond_c
    const/16 v4, 0xb

    goto :goto_4

    .line 854
    :cond_d
    const/16 v4, 0x15

    goto :goto_5

    .line 855
    :cond_e
    const/16 v4, 0x1f

    goto :goto_6

    :cond_f
    move v4, v5

    .line 857
    goto :goto_7
.end method

.method enablePowerSavingMode(Z)V
    .locals 6
    .param p1, "isRestoreMode"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 907
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v3, v0}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 909
    :cond_0
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 912
    .local v0, "cardOn":Z
    :goto_0
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC system is initialized. Doing normal stuff - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    .line 918
    .end local v0    # "cardOn":Z
    :goto_1
    if-eqz p1, :cond_1

    .line 921
    const/16 v2, 0x33

    invoke-static {v2}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    .line 922
    .local v1, "result":Z
    const-string v2, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chage WirelessCharging Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .end local v1    # "result":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 909
    goto :goto_0

    .line 915
    :cond_3
    const-string v2, "LNfcService"

    const-string v3, "NFC system is NOT initialized."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method enableSavedSetting()V
    .locals 4

    .prologue
    .line 896
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    .line 901
    :cond_1
    const/16 v1, 0x33

    invoke-static {v1}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v0

    .line 902
    .local v0, "result":Z
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chage WirelessCharging Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method onCardEmulationModeCallback(ZI)V
    .locals 1
    .param p1, "callbackEnable"    # Z
    .param p2, "status"    # I

    .prologue
    .line 1060
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onCardEmulationModeCallback(I)V

    .line 1063
    :cond_0
    return-void
.end method

.method onNfcControllerCallback(ZZ)V
    .locals 1
    .param p1, "callbackEnable"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1054
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onNfcControllerCallback(Z)V

    .line 1057
    :cond_0
    return-void
.end method

.method sendNfcAddonStateChangeIntent()V
    .locals 4

    .prologue
    .line 1030
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNfcAddonStateChangeIntent : (Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v0, "intentAddon":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1040
    return-void
.end method

.method updateCardModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 964
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 965
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 967
    monitor-exit v1

    .line 979
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 971
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 973
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 975
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 977
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 978
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateDiscoveryModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 982
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 983
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 985
    monitor-exit v1

    .line 997
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 989
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 991
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 993
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 996
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNfcAdapterState(IZ)V
    .locals 4
    .param p1, "newState"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1017
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v1, v1, Lcom/android/nfc/LNfcService;->mState:I

    if-ne p1, v1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1020
    :cond_0
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNfcAdapterState : (Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput p1, v1, Lcom/android/nfc/LNfcService;->mState:I

    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1025
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method updateNfcIndicator()V
    .locals 2

    .prologue
    .line 1044
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1046
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->removeNfcIndicatorIcon(Landroid/content/Context;)V

    .line 1051
    :goto_0
    return-void

    .line 1048
    :cond_0
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->updateNfcIndicatorIcon(Landroid/content/Context;)V

    goto :goto_0
.end method

.method updateNfcPowerStatus(ZZ)V
    .locals 2
    .param p1, "isRequireEnable"    # Z
    .param p2, "callbackEnable"    # Z

    .prologue
    .line 937
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 938
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    .line 939
    .local v0, "ret":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->onNfcControllerCallback(ZZ)V

    .line 943
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_0
.end method

.method updateP2pModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1001
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 1003
    monitor-exit v1

    .line 1014
    :goto_0
    return-void

    .line 1005
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 1009
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1010
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1013
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSystemState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 947
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 948
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 950
    monitor-exit v1

    .line 961
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 954
    const/16 v0, 0x29

    if-ne p1, v0, :cond_1

    .line 955
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 959
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 960
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
