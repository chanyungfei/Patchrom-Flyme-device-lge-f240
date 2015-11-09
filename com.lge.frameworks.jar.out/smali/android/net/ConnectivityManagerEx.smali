.class public Landroid/net/ConnectivityManagerEx;
.super Landroid/net/ConnectivityManager;
.source "ConnectivityManagerEx.java"


# static fields
.field public static final TYPE_MOBILE_ADMIN:I = 0x16

.field public static final TYPE_MOBILE_EMERGENCY:I = 0x14

.field public static final TYPE_MOBILE_VZW800:I = 0x11

.field public static final TYPE_MOBILE_VZWAPP:I = 0x10


# instance fields
.field private final mServiceEx:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "service"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 34
    invoke-interface {p1}, Landroid/net/IConnectivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    .line 35
    return-void
.end method


# virtual methods
.method public ePDGHandOverStatus(I)V
    .locals 2
    .param p1, "extendedRAT"    # I

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->ePDGHandOverStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public ePDGlisten(Landroid/net/ePDGStateListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/net/ePDGStateListener;
    .param p2, "events"    # I

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    iget-object v2, p1, Landroid/net/ePDGStateListener;->callback:Landroid/net/IePDGStateListener;

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->ePDGlisten(Landroid/net/IePDGStateListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDebugInfo(II)[D
    .locals 2
    .param p1, "infotype"    # I
    .param p2, "itemnum"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getDebugInfo(II)[D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLteRssi()I
    .locals 2

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getLteRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 56
    .local v2, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 61
    .end local v2    # "it":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNetPrefer(Ljava/lang/String;)I
    .locals 2
    .param p1, "reqtype"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetPrefer(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setFQDN(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setFQDN(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startusingEPDGFeature(Ljava/lang/String;)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startusingEPDGFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopusingEPDGFeature(Ljava/lang/String;)I
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManagerEx;->mServiceEx:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->stopusingEPDGFeature(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
