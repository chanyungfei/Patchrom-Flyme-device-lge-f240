.class public Lcom/android/nfc/cardemulation/VCardEmulationManager;
.super Lcom/android/nfc/cardemulation/LCardEmulationManager;
.source "VCardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;


# static fields
.field static final TAG:Ljava/lang/String; = "VCardEmulationManager"


# instance fields
.field mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

.field mVHostEmulationManager:Lcom/android/nfc/cardemulation/VHostEmulationManager;

.field private mVRoute:I

.field mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 38
    new-instance v1, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    .line 39
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 40
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    sput-object v1, Lcom/android/nfc/cardemulation/VCardEmulationManager;->sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    .line 42
    new-instance v1, Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-direct {v1, p1, v2, p0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredServicesCache;Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    .line 43
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 45
    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v1, p1, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 47
    new-instance v1, Lcom/android/nfc/cardemulation/LPreferredServices;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/nfc/cardemulation/LPreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 49
    new-instance v1, Lcom/android/nfc/cardemulation/VHostEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-direct {v1, p1, v2}, Lcom/android/nfc/cardemulation/VHostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredAidCache;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVHostEmulationManager:Lcom/android/nfc/cardemulation/VHostEmulationManager;

    .line 50
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVHostEmulationManager:Lcom/android/nfc/cardemulation/VHostEmulationManager;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->getDefaultRoute()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 62
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->initialize()V

    .line 63
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VCardEmulationManager"

    const-string v2, "get default destination - Exception"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onHostCardEmulationDeactivated()V

    goto :goto_0
.end method

.method public onNfcEnabled()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "VCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNfcEnabled() enter - mVRoute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initDefaultRoutePath(I)V

    .line 70
    iget v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->initRoutingTable(I)V

    .line 71
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->onNfcEnabled()V

    .line 73
    return-void
.end method

.method public onRoutingTableChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->onRoutingTableChanged()V

    .line 100
    return-void
.end method

.method public setDefaultRouteDest(I)V
    .locals 3
    .param p1, "route"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcDisabled()V

    .line 78
    const-string v0, "VCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "route = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput p1, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVRoute:I

    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VCardEmulationManager;->onNfcEnabled()V

    .line 82
    return-void
.end method

.method public setScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VCardEmulationManager;->mVHostEmulationManager:Lcom/android/nfc/cardemulation/VHostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/VHostEmulationManager;->setScreenState(I)V

    .line 96
    return-void
.end method
