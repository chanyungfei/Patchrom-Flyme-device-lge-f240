.class public Lcom/android/nfc/LNfcService$LNfcAdapterService;
.super Lcom/android/nfc/NfcService$NfcAdapterService;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .locals 5
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1147
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1149
    const-string v0, "LNfcService"

    const-string v1, "disable"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v3, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1151
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->manageShutdown()V

    .line 1154
    sget-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v2, "na"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v4, v0, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    .line 1176
    :goto_0
    return v4

    .line 1162
    :cond_0
    if-eqz p1, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1164
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1165
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1166
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public disableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1207
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1209
    const-string v0, "LNfcService"

    const-string v1, "disableNdefPush"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1212
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1213
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1215
    return v4
.end method

.method public enable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1118
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1120
    const-string v2, "LNfcService"

    const-string v3, "enable"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->saveAirplaneSetting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return v0

    .line 1124
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->saveNfcOnSetting(Z)V

    .line 1131
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1135
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1139
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1141
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1142
    goto :goto_0
.end method

.method public enableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1190
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1192
    const-string v2, "LNfcService"

    const-string v3, "enableNdefPush"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 1199
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1200
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1201
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v2}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1202
    goto :goto_0
.end method

.method public getState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1220
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1221
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v2, v2, Lcom/android/nfc/LNfcService;->mOffReturn:Z

    if-eqz v2, :cond_0

    .line 1222
    monitor-exit v1

    .line 1237
    :goto_0
    return v0

    .line 1224
    :cond_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    .line 1227
    const/4 v0, 0x3

    monitor-exit v1

    goto :goto_0

    .line 1239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1228
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    .line 1231
    :cond_2
    const/4 v0, 0x2

    monitor-exit v1

    goto :goto_0

    .line 1232
    :cond_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    .line 1235
    :cond_4
    const/4 v0, 0x4

    monitor-exit v1

    goto :goto_0

    .line 1237
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isNdefPushEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1181
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1182
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcAdapterService;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
