.class public Lcom/android/nfc/cardemulation/VRegisteredAidCache;
.super Lcom/android/nfc/cardemulation/LRegisteredAidCache;
.source "VRegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;
    }
.end annotation


# static fields
.field static final POWER_STATE_ALL:I = 0x7

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "VRegisteredAidCache"


# instance fields
.field final mAidToOffHostServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

.field mHostAIDPowerState:I

.field mNextTapComponent:Landroid/content/ComponentName;

.field mServicesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

.field mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VAidRoutingManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "routingManager"    # Lcom/android/nfc/cardemulation/VAidRoutingManager;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LAidRoutingManager;)V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mAidToOffHostServices:Ljava/util/TreeMap;

    .line 68
    iput-object p2, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mCallback:Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredServicesCache;Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/VRegisteredServicesCache;
    .param p3, "callback"    # Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mAidToOffHostServices:Ljava/util/TreeMap;

    .line 75
    iput-object p2, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    .line 76
    new-instance v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    .line 77
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 78
    iput-object p3, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mCallback:Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

    .line 80
    iput-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 81
    iput-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 86
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mHostAIDPowerState:I

    .line 89
    return-void
.end method


# virtual methods
.method public onRoutingTableChanged()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "VRegisteredAidCache"

    const-string v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->generateAidCacheLocked()V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected preProcessAid(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 99
    :cond_0
    return-void
.end method

.method updateRoutingLocked()V
    .locals 14

    .prologue
    .line 103
    iget-boolean v10, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mNfcEnabled:Z

    if-nez v10, :cond_0

    .line 104
    sget-boolean v10, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->DBG:Z

    const-string v11, "VRegisteredAidCache"

    const-string v12, "Not updating routing table because NFC is off."

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 110
    .local v8, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    iget-object v10, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 113
    .local v6, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v10, :cond_2

    .line 114
    sget-boolean v10, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->DBG:Z

    const-string v11, "VRegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not routing AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on request."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v10, :cond_4

    .line 123
    iget-object v10, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    iget-object v11, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v10, v11}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->getApduServiceInfoEx(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoEx;

    move-result-object v2

    .line 124
    .local v2, "defaultServiceEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;

    move-result-object v9

    .line 127
    .local v9, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v4

    .line 132
    .local v4, "isOnHost":Z
    const/16 v5, 0xc7

    .line 163
    .local v5, "powerstate":I
    if-eqz v4, :cond_3

    const/4 v7, 0x0

    .line 164
    .local v7, "route":I
    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v7, v10, v11

    const/4 v11, 0x1

    aput v5, v10, v11

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v7    # "route":I
    :cond_3
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;->getSeId()I

    move-result v7

    goto :goto_2

    .line 165
    .end local v2    # "defaultServiceEx":Landroid/nfc/cardemulation/ApduServiceInfoEx;
    .end local v4    # "isOnHost":Z
    .end local v5    # "powerstate":I
    .end local v9    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfoEx$ESeInfo;
    :cond_4
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 168
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 169
    :cond_5
    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 171
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 174
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v6    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_6
    iget-object v10, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-virtual {v10, v8}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->configureRoutingforNxp(Ljava/util/HashMap;)Z

    goto/16 :goto_0

    .line 168
    nop

    :array_0
    .array-data 4
        0x0
        0xc7
    .end array-data

    .line 171
    :array_1
    .array-data 4
        0x0
        0xc7
    .end array-data
.end method
