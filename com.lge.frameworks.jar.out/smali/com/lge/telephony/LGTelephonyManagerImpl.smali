.class public Lcom/lge/telephony/LGTelephonyManagerImpl;
.super Ljava/lang/Object;
.source "LGTelephonyManagerImpl.java"

# interfaces
.implements Lcom/lge/telephony/ILGTelephonyManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "LGTelephonyManagerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 48
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;
    .locals 1

    .prologue
    .line 53
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/IPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private uknight_get_data_result(I[B)[B
    .locals 7
    .param p1, "cumuDataSize"    # I
    .param p2, "logDataTemp"    # [B

    .prologue
    const/4 v3, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uknightGetData()-- cumuDataSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 200
    :goto_0
    return-object v2

    .line 179
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v4

    const v5, 0xffff

    invoke-interface {v4, v5}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v1

    .line 180
    .local v1, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    if-nez v1, :cond_1

    .line 181
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    array-length v4, p2

    if-ge p1, v4, :cond_2

    .line 186
    new-array v2, p1, [B

    .line 187
    .local v2, "logDataResult":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2, v4, v2, v5, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uknightGetData()-- logDataResult.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    .end local v2    # "logDataResult":[B
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    move-object v2, v3

    .line 200
    goto :goto_0

    .line 191
    .restart local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :cond_2
    :try_start_1
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uknightGetData()-- logData.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    .line 192
    goto :goto_0

    .line 196
    .end local v1    # "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDeviceIdForVZW(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getSubscriberInfoEx()Lcom/lge/internal/telephony/IPhoneSubInfoEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/IPhoneSubInfoEx;->getDeviceIdForVZW(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 264
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaPhoneType()I
    .locals 2

    .prologue
    .line 275
    const-string v1, "KDDI"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 277
    .local v0, "mode":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    const/4 v1, 0x1

    .line 285
    .end local v0    # "mode":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->getMobileQualityInformation()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move-object v1, v2

    .line 251
    goto :goto_0

    .line 252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 253
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 326
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 328
    const-string v0, "us"

    .line 336
    :goto_0
    return-object v0

    .line 329
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    const-string v0, "us"

    goto :goto_0

    .line 336
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 308
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 310
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "currentPhoneType"    # I

    .prologue
    .line 291
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 293
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const/16 v0, 0xd

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 369
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 372
    :cond_0
    const-string v0, "us"

    .line 375
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 343
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 346
    :cond_0
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "simState"    # I

    .prologue
    .line 356
    const-string v0, "US"

    const-string v1, "SPR"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "ril.card_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 359
    :cond_0
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public moca_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 730
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 731
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 732
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 736
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p1, :cond_1

    .line 738
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 744
    :cond_1
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "moca_alarm_event:: reset"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 746
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 748
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 750
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 752
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_alarm_event_reg(I)Z
    .locals 6
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 705
    const-string v3, "LGTelephonyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moca_alarm_event_reg event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 710
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 712
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return v2

    .line 716
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaAlarmEventReg(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 718
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 719
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_check_mem()[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1061
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "moca_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1065
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 1066
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "telephony is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v2

    .line 1069
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaCheckMem()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 1070
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1072
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1073
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_get_RFParameter(I)[B
    .locals 12
    .param p1, "kindOfRFParameter"    # I

    .prologue
    const/4 v8, 0x0

    .line 861
    const/4 v6, 0x0

    .line 862
    .local v6, "mocaRFParamTemp":[B
    const/4 v5, 0x0

    .line 863
    .local v5, "mocaRFParamResult":[B
    const/4 v4, 0x0

    .line 864
    .local v4, "mocaRFParamResp":Lcom/lge/internal/telephony/MOCARFParameterResponse;
    const/4 v3, 0x0

    .line 865
    .local v3, "getRFParamTotBufNum":I
    const/4 v1, 0x0

    .line 866
    .local v1, "getRFParamCurBufNum":I
    const/4 v2, 0x0

    .line 867
    .local v2, "getRFParamCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter(), kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 870
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 871
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 874
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 875
    if-nez v4, :cond_1

    .line 876
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaRFParamResp = telephony.mocaGetRFParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 934
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 935
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 880
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->send_buf_num:I

    .line 881
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 882
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRFParamTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 884
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 893
    add-int/lit8 v1, v1, 0x1

    .line 894
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 895
    if-nez v4, :cond_4

    .line 896
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaRFParamResp = (MOCARFParameterResponse)telephony.mocaGetRFParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 936
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 887
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRFParamTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eqz v3, :cond_2

    .line 889
    const/4 v3, 0x0

    goto :goto_1

    .line 900
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 901
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaRFParamTemp.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 905
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 906
    iget v9, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    add-int/2addr v2, v9

    .line 907
    if-ne v1, v3, :cond_2

    .line 908
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCARFParameterResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 911
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetRFParameter(II)Lcom/lge/internal/telephony/MOCARFParameterResponse;

    move-result-object v4

    .line 912
    if-nez v4, :cond_7

    .line 913
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetRFParameter(kindOfRFParameter, 0xffff) is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCARFParameterResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 917
    :cond_7
    if-nez v2, :cond_8

    .line 918
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter()-- getRFParamTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_RFParameter()-- kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "getRFParamCurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 923
    new-array v5, v2, [B

    .line 924
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 925
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] mocaRFParamResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 927
    goto/16 :goto_0

    .line 930
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] kindOfRFParameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_RFParameter] mocaRFParamTemp.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 932
    goto/16 :goto_0
.end method

.method public moca_get_data()[B
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 761
    const/4 v6, 0x0

    .line 762
    .local v6, "mocaLogData":[B
    const/4 v5, 0x0

    .line 763
    .local v5, "mocaGetDataResult":[B
    const/4 v4, 0x0

    .line 764
    .local v4, "mocaGetDataResp":Lcom/lge/internal/telephony/MOCADataResponse;
    const/4 v3, 0x0

    .line 765
    .local v3, "getDataTotBufNum":I
    const/4 v1, 0x0

    .line 766
    .local v1, "getDataCurBufNum":I
    const/4 v2, 0x0

    .line 768
    .local v2, "getDataCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "moca_get_data()"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 773
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 775
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 779
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 781
    if-nez v4, :cond_1

    .line 783
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaGetDataResp = telephony.mocaGetData(getDataCurBufNum)"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 850
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 851
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 788
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCADataResponse;->send_buf_num:I

    .line 789
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDataTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 792
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 793
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 804
    add-int/lit8 v1, v1, 0x1

    .line 805
    invoke-interface {v7, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 806
    if-nez v4, :cond_4

    .line 807
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaGetDataResp = (MOCADataResponse)telephony.mocaGetData("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 852
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 853
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 796
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "getDataTotBufNum is Invalid"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-eqz v3, :cond_2

    .line 798
    const/4 v3, 0x0

    goto :goto_1

    .line 811
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 812
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaLogData.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 817
    iget v9, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    add-int/2addr v2, v9

    .line 818
    if-ne v1, v3, :cond_2

    .line 819
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getData] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCADataResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 824
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetData(I)Lcom/lge/internal/telephony/MOCADataResponse;

    move-result-object v4

    .line 827
    if-nez v4, :cond_7

    .line 828
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : mocaGetDataResp is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 831
    :cond_7
    if-nez v2, :cond_8

    .line 832
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- getDataCurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- getDataTotBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 836
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 837
    new-array v5, v2, [B

    .line 838
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 839
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- mocaGetDataResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 840
    goto/16 :goto_0

    .line 843
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_data()-- mocaLogData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 844
    goto/16 :goto_0
.end method

.method public moca_get_misc(I)[B
    .locals 12
    .param p1, "kindOfData"    # I

    .prologue
    const/4 v8, 0x0

    .line 945
    const/4 v6, 0x0

    .line 946
    .local v6, "mocaMiscTemp":[B
    const/4 v5, 0x0

    .line 947
    .local v5, "mocaMiscResult":[B
    const/4 v4, 0x0

    .line 948
    .local v4, "mocaMiscResp":Lcom/lge/internal/telephony/MOCAMiscResponse;
    const/4 v3, 0x0

    .line 949
    .local v3, "getMiscTotBufNum":I
    const/4 v1, 0x0

    .line 950
    .local v1, "getMiscCurBufNum":I
    const/4 v2, 0x0

    .line 951
    .local v2, "getMiscCurDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moca_get_misc()++, kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 954
    .local v7, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 955
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "telephony is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 958
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 959
    if-nez v4, :cond_1

    .line 960
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "mocaMiscResp = telephony.mocaGetMisc(kindOfData, getMiscCurBufNum);"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getMiscCurBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1023
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 965
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v3, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->send_buf_num:I

    .line 966
    if-lez v3, :cond_3

    const/16 v9, 0x1000

    if-ge v3, v9, :cond_3

    .line 967
    mul-int/lit16 v9, v3, 0x7f8

    new-array v6, v9, [B

    .line 968
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_2
    :goto_1
    if-ge v1, v3, :cond_6

    .line 980
    add-int/lit8 v1, v1, 0x1

    .line 981
    invoke-interface {v7, p1, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 982
    if-nez v4, :cond_4

    .line 983
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mocaMiscResp = (MOCAMiscResponse)telephony.mocaGetMisc("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ");"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1025
    .end local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v0

    .line 1026
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 972
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    .restart local v7    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    if-eqz v3, :cond_2

    .line 974
    const/4 v3, 0x0

    goto :goto_1

    .line 987
    :cond_4
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v9, v2

    array-length v10, v6

    if-le v9, v10, :cond_5

    .line 988
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getRFParam] mocaMiscTemp.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 992
    :cond_5
    iget-object v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-static {v9, v10, v6, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 993
    iget v9, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    add-int/2addr v2, v9

    .line 994
    if-ne v1, v3, :cond_2

    .line 995
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getMisc] CurBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CurDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Resp.data_len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/lge/internal/telephony/MOCAMiscResponse;->data_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 999
    :cond_6
    const v9, 0xffff

    invoke-interface {v7, p1, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaGetMisc(II)Lcom/lge/internal/telephony/MOCAMiscResponse;

    move-result-object v4

    .line 1001
    if-nez v4, :cond_7

    .line 1002
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : MOCAMiscResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1005
    :cond_7
    if-nez v2, :cond_8

    .line 1006
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMiscCurDataSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] getMiscTotBufNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    :cond_8
    array-length v9, v6

    if-ge v2, v9, :cond_9

    .line 1013
    new-array v5, v2, [B

    .line 1014
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v5, v10, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1015
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mocaMiscResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 1016
    goto/16 :goto_0

    .line 1019
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[moca_get_misc] kindOfData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", logData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v6

    .line 1020
    goto/16 :goto_0
.end method

.method public moca_set_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 676
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 677
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 678
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 682
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p1, :cond_1

    .line 684
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 690
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 691
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 693
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 695
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 696
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 697
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 698
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_set_log([B[B)[B
    .locals 7
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 647
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 649
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 650
    const-string v4, "LGTelephonyManagerImpl"

    const-string v5, "telephony is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v3

    .line 654
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    if-eqz p2, :cond_1

    .line 656
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_log:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 661
    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 662
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 663
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetLog([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 665
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :catch_0
    move-exception v0

    .line 666
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 667
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 668
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public moca_set_mem(I)Z
    .locals 7
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 1035
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 1036
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 1056
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return v3

    .line 1040
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 1041
    const/4 v2, 0x0

    .line 1042
    .local v2, "unset":I
    move v2, p1

    .line 1044
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z

    move-result v3

    goto :goto_0

    .line 1047
    .end local v2    # "unset":I
    :cond_1
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moca_set_mem:: percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->mocaSetMem(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 1051
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1053
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 494
    if-nez p1, :cond_2

    .line 495
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 496
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 497
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 498
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 516
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 501
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 504
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 506
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 509
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 511
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 513
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 514
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_check_mem()[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 625
    const-string v3, "LGTelephonyManagerImpl"

    const-string v4, "oem_ssa_check_mem"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 629
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 638
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v2

    .line 632
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaCheckMem()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 633
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 634
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 635
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 636
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_get_data()[B
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 522
    const/4 v4, 0x0

    .line 523
    .local v4, "logDataTemp":[B
    const/4 v3, 0x0

    .line 524
    .local v3, "logDataResult":[B
    const/4 v5, 0x0

    .line 525
    .local v5, "oemSsaDataResp":Lcom/lge/internal/telephony/OEMSSADataResponse;
    const/4 v7, 0x0

    .line 526
    .local v7, "totBufNum":I
    const/4 v1, 0x0

    .line 527
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 528
    .local v0, "cumuDataSize":I
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "oemSsaGetData()++"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 531
    .local v6, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v6, :cond_0

    .line 591
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :goto_0
    return-object v8

    .line 534
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 535
    if-nez v5, :cond_1

    .line 536
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 586
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v2

    .line 587
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_1
    :try_start_1
    iget v7, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->send_buf_num:I

    .line 540
    if-lez v7, :cond_3

    const/16 v9, 0x1000

    if-ge v7, v9, :cond_3

    .line 541
    mul-int/lit16 v9, v7, 0x7f8

    new-array v4, v9, [B

    .line 542
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "totBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", local buffer size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    :goto_1
    if-ge v1, v7, :cond_6

    .line 551
    add-int/lit8 v1, v1, 0x1

    .line 552
    invoke-interface {v6, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 553
    if-nez v5, :cond_4

    .line 554
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 588
    .end local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_1
    move-exception v2

    .line 589
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 545
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .restart local v6    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_3
    :try_start_2
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "totBufNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is Invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v7, :cond_2

    .line 547
    const/4 v7, 0x0

    goto :goto_1

    .line 557
    :cond_4
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v9, v0

    array-length v10, v4

    if-le v9, v10, :cond_5

    .line 558
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 561
    :cond_5
    iget-object v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data:[B

    const/4 v10, 0x0

    iget v11, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    invoke-static {v9, v10, v4, v0, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 562
    iget v9, v5, Lcom/lge/internal/telephony/OEMSSADataResponse;->data_len:I

    add-int/2addr v0, v9

    goto :goto_1

    .line 567
    :cond_6
    const v9, 0xffff

    invoke-interface {v6, v9}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaGetData(I)Lcom/lge/internal/telephony/OEMSSADataResponse;

    move-result-object v5

    .line 568
    if-nez v5, :cond_7

    .line 569
    const-string v9, "LGTelephonyManagerImpl"

    const-string v10, "Internal Start ERROR : OEMSSADataResponse is NULL"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    :cond_7
    if-nez v0, :cond_8

    .line 573
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- cumuDataSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    :cond_8
    array-length v9, v4

    if-ge v0, v9, :cond_9

    .line 577
    new-array v3, v0, [B

    .line 578
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v9, v3, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 579
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- logDataResult.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v3

    .line 580
    goto/16 :goto_0

    .line 583
    :cond_9
    const-string v9, "LGTelephonyManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemSsaGetData()-- logData.length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v4

    .line 584
    goto/16 :goto_0
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 464
    if-nez p1, :cond_2

    .line 465
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 466
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 467
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 468
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 486
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 471
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 474
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_hdv_alarm_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 476
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 479
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaHdvAlarmEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 481
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_event([B)[B
    .locals 7
    .param p1, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 435
    if-nez p1, :cond_2

    .line 436
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 437
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 438
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 439
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 457
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 442
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B

    move-result-object v3

    goto :goto_0

    .line 445
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_event:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 447
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 450
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetEvent([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 452
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 454
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 455
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_log([B[B)[B
    .locals 7
    .param p1, "startcode"    # [B
    .param p2, "mask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 407
    if-nez p2, :cond_2

    .line 408
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [B

    .line 409
    .local v2, "unset":[B
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    .line 410
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 411
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 429
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_0
    :goto_0
    return-object v3

    .line 414
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":[B
    :cond_1
    invoke-interface {v1, p1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B

    move-result-object v3

    goto :goto_0

    .line 417
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":[B
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_log:: mask.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 419
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 422
    invoke-interface {v1, p1, p2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetLog([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 424
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 427
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public oem_ssa_set_mem(I)Z
    .locals 7
    .param p1, "percent"    # I

    .prologue
    const/4 v3, 0x0

    .line 597
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 598
    const/4 v2, 0x0

    .line 599
    .local v2, "unset":I
    move v2, p1

    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 601
    .local v1, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_1

    .line 619
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_0
    :goto_0
    return v3

    .line 604
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .restart local v2    # "unset":I
    :cond_1
    invoke-interface {v1, v2}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z

    move-result v3

    goto :goto_0

    .line 607
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    .end local v2    # "unset":I
    :cond_2
    const-string v4, "LGTelephonyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oem_ssa_set_mem:: percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 609
    .restart local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v1, :cond_0

    .line 612
    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->oemSsaSetMem(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 614
    .end local v1    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 616
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetVoiceMessageCount()V
    .locals 2

    .prologue
    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    .line 391
    .local v0, "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Lcom/lge/internal/telephony/ITelephonyEx;->resetVoiceMessageCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "telephony":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->startMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->stopMobileQualityInformation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public uknight_event_set([B)[B
    .locals 4
    .param p1, "mask"    # [B

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [B

    .line 81
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 82
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B

    move-result-object v2

    .line 92
    .end local v1    # "unset":[B
    :goto_0
    return-object v2

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightEventSet([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_get_data()[B
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    .local v5, "logDataTemp":[B
    const/4 v4, 0x0

    .line 120
    .local v4, "logDataResult":[B
    const/4 v3, 0x0

    .line 121
    .local v3, "knDataResp":Lcom/lge/internal/telephony/KNDataResponse;
    const/4 v6, 0x0

    .line 122
    .local v6, "totBufNum":I
    const/4 v1, 0x0

    .line 123
    .local v1, "curBufNum":I
    const/4 v0, 0x0

    .line 125
    .local v0, "cumuDataSize":I
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "uknightGetData()++"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 128
    if-nez v3, :cond_0

    .line 129
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Start ERROR : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-object v7

    .line 133
    :cond_0
    iget v6, v3, Lcom/lge/internal/telephony/KNDataResponse;->send_buf_num:I

    .line 134
    if-lez v6, :cond_1

    const/16 v8, 0x1000

    if-ge v6, v8, :cond_1

    .line 136
    mul-int/lit16 v8, v6, 0x7f8

    new-array v5, v8, [B

    .line 137
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "totBufNum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", local buffer size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1
    if-ge v1, v6, :cond_4

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightGetData(I)Lcom/lge/internal/telephony/KNDataResponse;

    move-result-object v3

    .line 146
    if-nez v3, :cond_2

    .line 147
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : KNDataResponse is NULL"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    move-object v7, v4

    .line 170
    goto :goto_0

    .line 139
    :cond_1
    :try_start_1
    const-string v8, "LGTelephonyManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "totBufNum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is Invalid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v6, 0x0

    goto :goto_1

    .line 151
    :cond_2
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    add-int/2addr v8, v0

    array-length v9, v5

    if-le v8, v9, :cond_3

    .line 152
    const-string v8, "LGTelephonyManagerImpl"

    const-string v9, "Internal Loop ERROR  : TOO Large data"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v2

    .line 167
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    iget-object v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data:[B

    const/4 v9, 0x0

    iget v10, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    invoke-static {v8, v9, v5, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 158
    iget v8, v3, Lcom/lge/internal/telephony/KNDataResponse;->data_len:I

    add-int/2addr v0, v8

    goto :goto_1

    .line 163
    :cond_4
    invoke-direct {p0, v0, v5}, Lcom/lge/telephony/LGTelephonyManagerImpl;->uknight_get_data_result(I[B)[B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_2
.end method

.method public uknight_log_set([B)[B
    .locals 5
    .param p1, "mask"    # [B

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [B

    .line 62
    .local v1, "unset":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 63
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B

    move-result-object v2

    .line 74
    .end local v1    # "unset":[B
    :goto_0
    return-object v2

    .line 66
    :cond_0
    const-string v2, "LGTelephonyManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uknight_log_set:: mask.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightLogSet([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_mem_check()[I
    .locals 2

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemCheck()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_mem_set(I)Z
    .locals 2
    .param p1, "persent"    # I

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightMemSet(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public uknight_state_change_set(I)Z
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/lge/telephony/LGTelephonyManagerImpl;->getITelephonyEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/internal/telephony/ITelephonyEx;->uknightStateChangeSet(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
