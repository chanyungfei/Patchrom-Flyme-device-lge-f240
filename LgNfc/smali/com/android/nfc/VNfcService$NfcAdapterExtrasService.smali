.class final Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;
.super Landroid/nfc/INfcAdapterExtras$Stub;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _open(Landroid/os/IBinder;)I
    .locals 12
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 793
    iget-object v8, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    monitor-enter v8

    .line 794
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v7}, Lcom/android/nfc/VNfcService;->isNfcEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 795
    const/4 v2, -0x6

    monitor-exit v8

    .line 845
    :goto_0
    return v2

    .line 797
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-boolean v7, v7, Lcom/android/nfc/VNfcService;->mInProvisionMode:Z

    if-eqz v7, :cond_1

    .line 799
    const/4 v2, -0x1

    monitor-exit v8

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 801
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v7}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 805
    const/4 v2, -0x5

    monitor-exit v8

    goto :goto_0

    .line 807
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 808
    const/4 v2, -0x2

    monitor-exit v8

    goto :goto_0

    .line 811
    :cond_3
    const/4 v6, 0x0

    .line 812
    .local v6, "restorePolling":Z
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-boolean v7, v7, Lcom/android/nfc/VNfcService;->mNfcPollingEnabled:Z

    if-eqz v7, :cond_4

    .line 816
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 817
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/nfc/VNfcService;->mNfcPollingEnabled:Z

    .line 818
    const/4 v6, 0x1

    .line 821
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v7}, Lcom/android/nfc/VNfcService;->doOpenSecureElementConnection()I

    move-result v2

    .line 822
    .local v2, "handle":I
    if-gez v2, :cond_6

    .line 824
    if-eqz v6, :cond_5

    .line 825
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v9, v9, Lcom/android/nfc/VNfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 826
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/nfc/VNfcService;->mNfcPollingEnabled:Z

    .line 828
    :cond_5
    monitor-exit v8

    goto :goto_0

    .line 830
    :cond_6
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v9, 0x3

    const/16 v10, 0x7530

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    .line 832
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    new-instance v9, Lcom/android/nfc/VNfcService$OpenSecureElement;

    iget-object v10, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-static {}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v11

    invoke-direct {v9, v10, v11, v2, p1}, Lcom/android/nfc/VNfcService$OpenSecureElement;-><init>(Lcom/android/nfc/VNfcService;IILandroid/os/IBinder;)V

    # setter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v7, v9}, Lcom/android/nfc/VNfcService;->access$302(Lcom/android/nfc/VNfcService;Lcom/android/nfc/VNfcService$OpenSecureElement;)Lcom/android/nfc/VNfcService$OpenSecureElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {p1, v7, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    :goto_1
    :try_start_3
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->getCallingUid()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 842
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v7, v7, Lcom/android/nfc/VNfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 835
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/VNfcService$OpenSecureElement;->binderDied()V

    goto :goto_1

    .line 845
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private _transceive([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v1, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    monitor-enter v1

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/VNfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 884
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v0}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 885
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1
    invoke-static {}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_2

    .line 888
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v1, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mOpenEe:Lcom/android/nfc/VNfcService$OpenSecureElement;
    invoke-static {v1}, Lcom/android/nfc/VNfcService;->access$300(Lcom/android/nfc/VNfcService;)Lcom/android/nfc/VNfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/VNfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/VNfcService;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 766
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 855
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-static {}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/nfc/VNfcService;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 856
    invoke-direct {p0}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 860
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 857
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mEeRoutingState:I
    invoke-static {v0}, Lcom/android/nfc/VNfcService;->access$400(Lcom/android/nfc/VNfcService;)I

    move-result v0

    return v0
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, p2}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 778
    .local v0, "handle":I
    if-gez v0, :cond_0

    .line 779
    const-string v2, "NFCEE open exception."

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 783
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 781
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    # setter for: Lcom/android/nfc/VNfcService;->mEeRoutingState:I
    invoke-static {v2, p2}, Lcom/android/nfc/VNfcService;->access$402(Lcom/android/nfc/VNfcService;I)I

    .line 905
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 906
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 909
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 915
    :goto_0
    return-void

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v3, p0, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/VNfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/VNfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 870
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->_transceive([B)[B

    move-result-object v1

    .line 871
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 872
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .end local v1    # "out":[B
    :goto_0
    return-object v2

    .line 873
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/VNfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method
