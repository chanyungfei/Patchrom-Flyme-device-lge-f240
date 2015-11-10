.class public Lcom/android/nfc/cardemulation/VAidRoutingManager;
.super Lcom/android/nfc/cardemulation/LAidRoutingManager;
.source "VAidRoutingManager.java"


# static fields
.field static final AID_MATCHING_K:I = 0x2

.field static final AID_MATCHING_L:I = 0x1

.field static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "VAidRoutingManager"


# instance fields
.field final mAidMatchingPlatform:I

.field mPowerForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    sput-boolean v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->doGetAidMatchingPlatform()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    .line 51
    sget-boolean v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v1, "VAidRoutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAidMatchingPlatform=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method clearNfcRoutingTableLocked()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/VNfcService;->clearRouting()V

    .line 66
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 68
    return-void
.end method

.method public configureRoutingforNxp(Ljava/util/HashMap;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRouteAidRoutingMgr:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v20, v0

    const/16 v21, 0xf3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 76
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    .line 80
    :cond_0
    :goto_0
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v21, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mDefaultRoute = 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v7, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 84
    .local v7, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    .local v18, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    .local v16, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 88
    .local v6, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [I

    .line 89
    .local v19, "value":[I
    const/16 v20, 0x0

    aget v17, v19, v20

    .line 90
    .local v17, "route":I
    const/16 v20, 0x1

    aget v15, v19, v20

    .line 91
    .local v15, "power":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultOffHostRoute:I

    move/from16 v17, v0

    .line 94
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "aid":Ljava/lang/String;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 96
    .local v11, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    move/from16 v0, v17

    invoke-virtual {v7, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v21, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#######Routing AID "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to route "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with power "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    .end local v4    # "aid":Ljava/lang/String;
    .end local v6    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    .end local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "power":I
    .end local v16    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v17    # "route":I
    .end local v18    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "value":[I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v20, v0

    const/16 v21, 0xf4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 78
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    goto/16 :goto_0

    .line 104
    .restart local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 105
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 106
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    const-string v23, "Routing table unchanged, not updating"

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v20, 0x0

    monitor-exit v21

    .line 183
    .end local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    return v20

    .line 111
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 112
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 113
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 114
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 131
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 132
    .local v10, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_8

    .line 133
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 136
    .local v9, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 137
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 139
    .restart local v17    # "route":I
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 140
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding AID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for default "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "route, because a conflicting shorter AID will be added"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "to the routing table"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/nfc/VNfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 179
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "defaultRouteAid":Ljava/lang/String;
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "route":I
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 151
    :cond_8
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_e

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 153
    .restart local v17    # "route":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 155
    .local v8, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v20, "*"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 158
    const-string v20, "VAidRoutingManager"

    const-string v22, "This device does not support prefix AIDs."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 160
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Routing prefix AID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to route "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v22

    const/16 v20, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/VNfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_5

    .line 165
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 166
    const-string v20, "VAidRoutingManager"

    const-string v22, "Routing AID in AID_MATCHING_EXACT_OR_PREFIX"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Routing prefix AID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to route "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/nfc/VNfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_5

    .line 172
    :cond_c
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Routing exact AID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to route "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/nfc/VNfcService;->routeAids(Ljava/lang/String;II)V

    goto/16 :goto_5

    .line 151
    .end local v4    # "aid":Ljava/lang/String;
    .end local v8    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 179
    .end local v17    # "route":I
    :cond_e
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/nfc/VNfcService;->commitRouting()V

    .line 183
    const/16 v20, 0x1

    goto/16 :goto_2
.end method

.method public native doGetAidMatchingPlatform()I
.end method

.method public getAidMatchMode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    return v0
.end method

.method public getAidMatchingPlatform()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method

.method public supportsAidPrefixRouting()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
