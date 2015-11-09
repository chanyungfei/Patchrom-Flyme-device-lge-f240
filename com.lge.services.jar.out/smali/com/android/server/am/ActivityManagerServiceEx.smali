.class public Lcom/android/server/am/ActivityManagerServiceEx;
.super Lcom/android/server/am/ActivityManagerService;
.source "ActivityManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final BLOCK_BENCH_OFF_NETWROK_MSG:Ljava/lang/String; = "Turn off Network Connection to run Benchmark app"

.field static final DEBUG:Z = false

.field static final SHOW_OFF_NETWORK_MSG:I = 0x98

.field static final SHOW_TOAST_APP_BLOCK_MSG:I = 0x97

.field static final TAG_EX:Ljava/lang/String; = "ActivityManagerServiceEx"

.field static final UPDATE_GUESTMODE_LISTG_MSG:I = 0x96


# instance fields
.field mATList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lge/frameworks/IActivityTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mExtendedBinderInternal:Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

.field private mGuestModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mGuestModeWhiteListSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandlerEx:Landroid/os/Handler;

.field mIsInGuestMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mIsInGuestMode:Z

    .line 66
    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

    .line 125
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceEx$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceEx$1;-><init>(Lcom/android/server/am/ActivityManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandlerEx:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceEx$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceEx$2;-><init>(Lcom/android/server/am/ActivityManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    const-string v0, "ActivityManagerServiceEx"

    const-string v1, "create ActivityManagerServiceEx"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/am/ActivityManagerServiceEx;Lcom/android/server/am/ActivityManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceEx;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceEx;->updateGuestModeList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceEx;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceEx;->showAppBlockToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceEx;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceEx;->showBenchmarkAppBlockToast()V

    return-void
.end method

.method private getGuestModeAppList(Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "intentIndex"    # I

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    :try_start_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 267
    .local v2, "intentDescription":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 268
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 269
    const-string v4, "favorites"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v4, "ActivityManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to Guest Mode List."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 281
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v4, "ActivityManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to Guest Mode List."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 290
    .end local v2    # "intentDescription":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "Desktop items loading interrupted:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private showAppBlockToast()V
    .locals 4

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 326
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->guest_mode_toast_string:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method

.method private showBenchmarkAppBlockToast()V
    .locals 4

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x98

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 338
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v2, "Turn off Network Connection to run Benchmark app"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    return-void
.end method

.method private updateGuestModeList()V
    .locals 21

    .prologue
    .line 222
    const-string v11, "com.lge.launcher2.settings"

    .line 223
    .local v11, "AUTHORITY":Ljava/lang/String;
    const-string v15, "favorites"

    .line 224
    .local v15, "TABLE_FAVORITES":Ljava/lang/String;
    const-string v14, "essentialapplicationlist"

    .line 225
    .local v14, "TABLE_ESSENTIAL":Ljava/lang/String;
    const-string v13, "notify"

    .line 226
    .local v13, "PARAMETER_NOTIFY":Ljava/lang/String;
    const-string v5, "content://com.lge.launcher2.settings/favorites?notify=true"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 227
    .local v4, "CONTENT_URI":Landroid/net/Uri;
    const-string v5, "content://com.lge.launcher2.settings/essentialapplicationlist?notify=true"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 228
    .local v12, "CONTENT_URI_ESSENTIAL":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 229
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string v20, "container=-103"

    .line 230
    .local v20, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "container=-103"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 231
    .local v17, "favorCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    move-object v6, v12

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 233
    .local v16, "essentCur":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 236
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 237
    :try_start_0
    const-string v5, "intent"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 238
    .local v18, "intentIndex":I
    const-string v5, "packageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 243
    .local v19, "packageIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 245
    const-string v5, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/ActivityManagerServiceEx;->getGuestModeAppList(Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 246
    const-string v5, "essentialapplicationlist"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/ActivityManagerServiceEx;->getGuestModeAppList(Ljava/lang/String;Landroid/database/Cursor;I)V

    .line 247
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v17, :cond_0

    .line 250
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_0
    if-eqz v16, :cond_1

    .line 253
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 256
    .end local v18    # "intentIndex":I
    .end local v19    # "packageIndex":I
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    :try_start_2
    const-string v5, "ActivityManagerServiceEx"

    const-string v6, "Cursor is null."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    if-eqz v17, :cond_3

    .line 250
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_3
    if-eqz v16, :cond_1

    .line 253
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 247
    .restart local v18    # "intentIndex":I
    .restart local v19    # "packageIndex":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    .end local v18    # "intentIndex":I
    .end local v19    # "packageIndex":I
    :catchall_1
    move-exception v5

    if-eqz v17, :cond_4

    .line 250
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_4
    if-eqz v16, :cond_5

    .line 253
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method


# virtual methods
.method public activityResumeNotification(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return-void

    .line 414
    :cond_0
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    .line 420
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 421
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/frameworks/IActivityTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .local v3, "trigger":Lcom/lge/frameworks/IActivityTrigger;
    if-eqz v3, :cond_1

    .line 424
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "activity":Ljava/lang/String;
    invoke-interface {v3, v0}, Lcom/lge/frameworks/IActivityTrigger;->activityResuming(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v0    # "activity":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 429
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 439
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "trigger":Lcom/lge/frameworks/IActivityTrigger;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public activityStartNotification(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string v3, "ActivityManagerServiceEx"

    const-string v4, "intent is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 378
    :cond_0
    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/frameworks/IActivityTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .local v2, "trigger":Lcom/lge/frameworks/IActivityTrigger;
    if-eqz v2, :cond_1

    .line 388
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "activity":Ljava/lang/String;
    invoke-interface {v2, v0}, Lcom/lge/frameworks/IActivityTrigger;->activityStarting(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v0    # "activity":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 402
    .end local v1    # "i":I
    .end local v2    # "trigger":Lcom/lge/frameworks/IActivityTrigger;
    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 393
    .restart local v1    # "i":I
    .restart local v2    # "trigger":Lcom/lge/frameworks/IActivityTrigger;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public checkGuestModeList(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 298
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeWhiteListSet:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    const-string v5, "ActivityManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exist in Guest Mode List: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v6

    .line 318
    :goto_0
    return v4

    .line 302
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 304
    .local v1, "checkMeta":Ljava/lang/Boolean;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 305
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.lge.guestmode.ALWAYSSTART"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 310
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    const-string v5, "ActivityManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " always start in Guest Mode."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v6

    goto :goto_0

    .line 321
    .end local v1    # "checkMeta":Ljava/lang/Boolean;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 306
    .restart local v1    # "checkMeta":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "ActivityManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get ApplicationInfo of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "ActivityManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find in Guest Mode List: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 316
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x97

    iput v4, v3, Landroid/os/Message;->what:I

    .line 317
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandlerEx:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method

.method public checkIsBenchmarkAppToBlock(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    invoke-static {p1}, Lcom/lge/internal/FingerprintProtector;->isBenchmarkToBlock(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v4, :cond_0

    .line 345
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 347
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "ConnectivityManager is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v3

    .line 350
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 351
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    .line 352
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "netInfo is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 356
    const-string v3, "ActivityManagerServiceEx"

    const-string v5, "Block Benchmark app due to network connection"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 358
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x98

    iput v3, v1, Landroid/os/Message;->what:I

    .line 359
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mHandlerEx:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v4

    .line 360
    goto :goto_0

    .line 362
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v4, "ActivityManagerServiceEx"

    const-string v5, "Benchmark app was caught but network is off. permit the Benchmark app to launch"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkIsInGuestMode()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mIsInGuestMode:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 452
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mExtendedBinderInternal:Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 458
    :goto_0
    return v1

    .line 455
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method public requestBugReport()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/cappuccino/IMdm;->googleErrorReportDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "MDM"

    const-string v1, "requestBugReport : LGMDM Block Google Error Report"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/ActivityManagerService;->requestBugReport()V

    goto :goto_0
.end method

.method final setGuestModeReceiver()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mGuestModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const-string v1, "ActivityManagerServiceEx"

    const-string v2, "setGuestModeReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public switchUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 464
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->getAllowMultiUser(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    move-result v0

    goto :goto_0
.end method

.method public systemReady(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "goingCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceEx;->setGuestModeReceiver()V

    .line 111
    const-string v0, "ActivityManagerServiceEx"

    const-string v1, "setGuestModeReceiver by ActivityManagerServiceEx"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public updateScreenShotList(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/am/ActivityManagerServiceEx;->mThumbnailHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 476
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    const-string v2, "darkgray"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 477
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 478
    .local v0, "res":Z
    const-string v2, "ActivityManagerServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail Image change = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v0    # "res":Z
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
