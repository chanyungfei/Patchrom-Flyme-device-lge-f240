.class public Lcom/android/nfc/cardemulation/VRegisteredServicesCache;
.super Lcom/android/nfc/cardemulation/LRegisteredServicesCache;
.source "VRegisteredServicesCache.java"


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "VRegisteredServicesCache"


# instance fields
.field private final mExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            "Landroid/nfc/cardemulation/ApduServiceInfoEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public addGsmaOffHostServices(ILandroid/nfc/cardemulation/ApduServiceInfoGsma;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "service"    # Landroid/nfc/cardemulation/ApduServiceInfoGsma;

    .prologue
    .line 59
    sget-boolean v2, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    const-string v3, "VRegisteredServicesCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addGsmaOffHostServices: key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 61
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    const/4 v2, 0x0

    const/16 v3, 0xc7

    invoke-direct {v1, v2, v3}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;-><init>(II)V

    .line 62
    .local v1, "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;

    invoke-direct {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;-><init>(Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;)V

    .line 63
    .local v0, "apduServiceInfoEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v0    # "apduServiceInfoEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    .end local v1    # "esInfo":Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    :cond_0
    sget-object v2, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->sGsmaOffHostServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->updateGsmaOffHostServices()V

    .line 67
    return-void
.end method

.method protected createApduServiceInfoInstance(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolvedService"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 43
    .local v0, "apduServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 44
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoEx;

    invoke-direct {v1, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfoEx;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 45
    .local v1, "apduServiceInfoEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v1    # "apduServiceInfoEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    :cond_0
    return-object v0
.end method

.method public getApduServiceInfoEx(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoEx;
    .locals 1
    .param p1, "apduServiceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfoEx;

    goto :goto_0
.end method

.method public onNfcEnabled()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->invalidateCache(I)V

    .line 35
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->mExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36
    return-void
.end method

.method public removeGsmaOffHostServices(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->DBG:Z

    const-string v1, "VRegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGsmaOffHostServices: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->sGsmaOffHostServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->updateGsmaOffHostServices()V

    .line 74
    return-void
.end method
