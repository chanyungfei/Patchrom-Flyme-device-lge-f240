.class public Lcom/android/nfc/handover/LHandoverTransfer;
.super Lcom/android/nfc/handover/HandoverTransfer;
.source "LHandoverTransfer.java"


# static fields
.field static final BEAM_DIR:Ljava/lang/String; = "Download"

.field static final MEDIA_SCAN_CHECK_MS:I = 0x7d0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field static final MSG_MEDIA_SCAN_FAIL:I = 0x1

.field protected static final PREF:Ljava/lang/String; = "NfcHandoverPrefs"

.field protected static final PREF_INCOMING:Ljava/lang/String; = "incoming"

.field protected static final PREF_NOTIFICATION_ID:Ljava/lang/String; = "notificationID"

.field private static final TAG:Ljava/lang/String; = "LHandoverTransfer"


# instance fields
.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field public mSendMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/handover/HandoverTransfer;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V

    .line 65
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/handover/LHandoverTransfer;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mSendMimeType:Ljava/lang/String;

    .line 70
    :cond_0
    const-string v0, "NfcHandoverPrefs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    .line 71
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notificationID"

    iget v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "incoming"

    iget-boolean v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static initialNotification(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 409
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 410
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v6, "NfcHandoverPrefs"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 415
    .local v3, "prefs":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 418
    const-string v6, "incoming"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 419
    .local v0, "incoming":Z
    const-string v6, "notificationID"

    invoke-interface {v3, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 420
    .local v5, "transferId":I
    const-string v6, "LHandoverTransfer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initialNotification - incoming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", transferId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-ltz v5, :cond_0

    .line 426
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 427
    .local v4, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "incoming"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v6, "notificationID"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 431
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v1, "notBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 436
    if-eqz v0, :cond_2

    sget v6, Lcom/lge/internal/R$drawable;->stat_sys_download_complete2:I

    :goto_1
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 439
    invoke-static {p0, v1}, Lcom/android/nfc/handover/LHandoverTransfer;->setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 441
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v5, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 436
    :cond_2
    sget v6, Lcom/lge/internal/R$drawable;->stat_sys_upload_complete:I

    goto :goto_1
.end method

.method public static setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    const v1, 0x7f080006

    .line 403
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 404
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 405
    return-void
.end method


# virtual methods
.method buildViewIntent()Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 224
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object v6

    .line 228
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    if-nez v7, :cond_2

    .line 229
    const-string v7, "LHandoverTransfer"

    const-string v8, "Invalid Sequence : mMimeTypes is null"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v7, "HandoverAutoAppLaunch"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    .line 242
    :cond_3
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 248
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 249
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    if-eqz v4, :cond_5

    const-string v7, "image/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "video/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 253
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 257
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "filePathIndex":I
    if-lez v3, :cond_0

    .line 261
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "bucket":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "bucketId":Ljava/lang/String;
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "bucketId"

    invoke-virtual {v7, v8, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 265
    .local v5, "path":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v6, "viewIntent":Landroid/content/Intent;
    const-string v7, "mediaTypes"

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 270
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "bucketId":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "filePathIndex":I
    .end local v5    # "path":Landroid/net/Uri;
    .end local v6    # "viewIntent":Landroid/content/Intent;
    :cond_5
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v6

    .line 271
    .restart local v6    # "viewIntent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 272
    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverTransfer;->cancel()V

    .line 124
    iget v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mBluetoothTransferId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 125
    const-string v0, "LHandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_CANCELLED, mBluetoothTransferId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mBluetoothTransferId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LHandoverTransfer;->updateStateAndNotification(I)V

    .line 129
    :cond_0
    return-void
.end method

.method checkCancellingStatus()Z
    .locals 2

    .prologue
    .line 394
    iget v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/LHandoverTransfer;->updateStateAndNotification(I)V

    .line 399
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkSendIntentWhenNotificationTouch()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "mimeType":Ljava/lang/String;
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "audio/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 99
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 105
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/LHandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "newFile":Ljava/io/File;
    return-object v0
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "srcFile"    # Ljava/io/File;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 307
    :cond_1
    :goto_0
    return-object v0

    .line 303
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {p3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/LHandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBeamDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "Download"

    return-object v0
.end method

.method protected getFileMimeType(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/android/nfc/handover/LHandoverTransfer;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "mediaMimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const-string v2, "LHandoverTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change MimeType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object v1, v0

    .line 294
    :cond_0
    return-object v1
.end method

.method protected getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/android/nfc/handover/LMimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 455
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 457
    const-string v3, "LHandoverTransfer"

    const-string v4, "Media scan timeout/fail"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    .local v2, "mPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 461
    const-string v3, "LHandoverTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    .end local v0    # "dstFile":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mPath":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverTransfer;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    return v3
.end method

.method protected isRequireMediaScannerMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 472
    const-string v0, "LHandoverTransfer"

    const-string v1, "transfer failed already"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 475
    :cond_1
    if-nez p2, :cond_2

    .line 477
    :try_start_1
    const-string v0, "LHandoverTransfer"

    const-string v1, "Media scan fail"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    :goto_1
    iget v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2}, Lcom/android/nfc/handover/HandoverTransfer;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected parseFilePath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/:*?\"<>|"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z
    .locals 10
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;
    .param p2, "result"    # Z

    .prologue
    const v5, 0x7f080005

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 336
    iget-boolean v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/lge/internal/R$drawable;->stat_sys_download_complete2:I

    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 339
    if-eqz p2, :cond_6

    .line 340
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 341
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 342
    iget-boolean v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f080009

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 344
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v1

    .line 346
    .local v1, "viewIntent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 347
    const-string v2, "LHandoverTransfer"

    const-string v4, "Invalid Sequence : Intent doesn\'t make since serveral problem(in buildViewIntent method)"

    invoke-static {v2, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 377
    .end local v1    # "viewIntent":Landroid/content/Intent;
    :goto_1
    return v2

    .line 336
    :cond_0
    sget v2, Lcom/lge/internal/R$drawable;->stat_sys_upload_complete:I

    goto :goto_0

    .line 352
    .restart local v1    # "viewIntent":Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "lge_ext/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    const-string v2, "LHandoverTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast : com.lge.nfc.handover.action.RECEIVE_DONE, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "com.lge.nfc.handover.action.RECEIVE_DONE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 357
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.NFC"

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v3

    .line 358
    goto :goto_1

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    const/4 v6, 0x0

    invoke-static {v2, v5, v1, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 365
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mSuccessCount:I

    const/4 v5, 0x2

    if-lt v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverTransfer;->checkSendIntentWhenNotificationTouch()Z

    move-result v2

    if-ne v2, v4, :cond_5

    .line 366
    :cond_3
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 376
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "viewIntent":Landroid/content/Intent;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    move v2, v4

    .line 377
    goto :goto_1

    .line 368
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v1    # "viewIntent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f08004f

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "%d"

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mSuccessCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 373
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "viewIntent":Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/nfc/handover/LHandoverTransfer;->setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_2
.end method

.method setDownloadNotificationInfo(Landroid/app/Notification$Builder;)V
    .locals 4
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 313
    iget-boolean v1, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "beamString":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 320
    iget-boolean v1, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    if-eqz v1, :cond_1

    const v1, 0x1080081

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 322
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 323
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 324
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 325
    const v1, 0x7f020002

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 329
    return-void

    .line 316
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_0

    .line 320
    :cond_1
    const v1, 0x1080088

    goto :goto_1
.end method

.method updateNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    const-string v5, "LHandoverTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(incoming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mIncoming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 140
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-eq v5, v12, :cond_0

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "incoming"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "notificationID"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :cond_1
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-ne v5, v9, :cond_7

    .line 152
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/LHandoverTransfer;->setDownloadNotificationInfo(Landroid/app/Notification$Builder;)V

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "progress":F
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTotalCount:I

    if-lez v5, :cond_3

    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTotalCount:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 157
    .local v3, "progressUnit":F
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mCurrentCount:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mProgress:F

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 159
    .end local v3    # "progressUnit":F
    :cond_3
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTotalCount:I

    if-lez v5, :cond_6

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    .line 160
    const/16 v5, 0x64

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 212
    .end local v2    # "progress":F
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 213
    :cond_5
    :goto_1
    return-void

    .line 162
    .restart local v2    # "progress":F
    :cond_6
    const/16 v5, 0x64

    invoke-virtual {v1, v5, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 170
    .end local v2    # "progress":F
    :cond_7
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-ne v5, v10, :cond_8

    const-string v5, "HandoverAutoAppLaunch"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    const-string v5, "LHandoverTransfer"

    const-string v6, "STATE_SUCCESS, HandoverAutoAppLaunch is false"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v1, v9}, Lcom/android/nfc/handover/LHandoverTransfer;->setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 177
    :cond_8
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-ne v5, v10, :cond_b

    const-string v5, "HandoverAutoAppLaunch"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 179
    const-string v5, "LHandoverTransfer"

    const-string v6, "STATE_SUCCESS, HandoverAutoAppLaunch is true"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v4

    .line 182
    .local v4, "viewIntent":Landroid/content/Intent;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lge_ext/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 184
    const-string v5, "LHandoverTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBroadcast : com.lge.nfc.handover.action.RECEIVE_DONE, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v5, "com.lge.nfc.handover.action.RECEIVE_DONE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 187
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_9
    const/4 v0, 0x0

    .line 192
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_a

    .line 193
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 195
    :cond_a
    if-eqz v0, :cond_5

    .line 197
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 198
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mTransferId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 199
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 204
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "viewIntent":Landroid/content/Intent;
    :cond_b
    iget v5, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    if-ne v5, v12, :cond_c

    .line 205
    invoke-virtual {p0, v1, v8}, Lcom/android/nfc/handover/LHandoverTransfer;->setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    .line 209
    :cond_c
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    goto/16 :goto_1
.end method

.method updateStateAndNotification(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 448
    iget v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    :cond_0
    return-void
.end method
