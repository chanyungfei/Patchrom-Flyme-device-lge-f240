.class final Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;
.super Lcom/lge/internal/telephony/ISmsEx$Stub;
.source "UiccSmsControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccSmsControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UiccSmsControllerEx;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-direct {p0}, Lcom/lge/internal/telephony/ISmsEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UiccSmsControllerEx;Lcom/android/internal/telephony/UiccSmsControllerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/UiccSmsControllerEx;
    .param p2, "x1"    # Lcom/android/internal/telephony/UiccSmsControllerEx$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;-><init>(Lcom/android/internal/telephony/UiccSmsControllerEx;)V

    return-void
.end method

.method private getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    .line 321
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 323
    :cond_0
    const/4 v1, 0x0

    .line 327
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/UiccSmsControllerEx;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RIL_UiccSmsControllerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 332
    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "RIL_UiccSmsControllerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 336
    goto :goto_0
.end method


# virtual methods
.method public copySmsToIccEf(I[B[B)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 71
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEf(I[B[B)I

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 74
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEf iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfForSubscriber(I[B[BJ)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "subId"    # J

    .prologue
    .line 342
    invoke-direct {p0, p4, p5}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 343
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEf(I[B[B)I

    move-result v1

    .line 347
    :goto_0
    return v1

    .line 346
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEf iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfPrivate(I[B[BI)I
    .locals 4
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "sms_format"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 156
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 159
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEfPrivate iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copySmsToIccEfPrivateForSubscriber(I[B[BIJ)I
    .locals 3
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B
    .param p4, "sms_format"    # I
    .param p5, "subId"    # J

    .prologue
    .line 165
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 166
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->copySmsToIccEfPrivate(I[B[BI)I

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 169
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "copySmsToIccEfPrivate iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public disableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 297
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->disableGsmBroadcastRange(II)Z

    move-result v1

    .line 301
    :goto_0
    return v1

    .line 300
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "disableGsmBroadcastRange iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoDCDisconnect(I)V
    .locals 4
    .param p1, "timeOut"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 242
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->enableAutoDCDisconnect(I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "enableAutoDCDisconnect iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableGsmBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 287
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->enableGsmBroadcastRange(II)Z

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 290
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "enableGsmBroadcastRange iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEfSms()I
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 81
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getMaxEfSms()I

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 84
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getMaxEfSms iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEfSmsForSubscriber(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 353
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getMaxEfSms()I

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 356
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getMaxEfSms iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscenterAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 48
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 51
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmscenterAddressForSubscriber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 373
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getSmscenterAddress()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    return-object v1

    .line 376
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUiccType()I
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 185
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->getUiccType()I

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 188
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "getUiccType iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "destUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 276
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->insertDBForLGMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    :goto_0
    return-object v1

    .line 279
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "insertDBForLGMessage iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockSendMessage(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v1, 0x0

    .line 416
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 417
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isBlockSendMessage(Ljava/util/List;)Z

    move-result v1

    .line 422
    :goto_0
    return v1

    .line 420
    :cond_0
    const-string v2, "RIL_UiccSmsControllerEx"

    const-string v3, "[UiccSmsControllerEx] isBlockSendMessage(), iccSmsIntMgrEx is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 253
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isFdnEnabled()Z

    move-result v1

    .line 258
    :goto_0
    return v1

    .line 256
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "isFdnEnabled iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFdnEnabledOnSubscription(J)Z
    .locals 3
    .param p1, "subscription"    # J

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 393
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->isFdnEnabled()Z

    move-result v1

    .line 398
    :goto_0
    return v1

    .line 396
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "isFdnEnabled iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 208
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 209
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendEmailoverMultipartText iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 198
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 199
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendEmailoverText iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "replyAddr"    # Ljava/lang/String;
    .param p8, "confirmRead"    # I
    .param p9, "replyOption"    # I
    .param p10, "protocolId"    # I
    .param p11, "isExpectMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 231
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 232
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IIIZ)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendMultipartTextLge iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "cbAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 125
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendMultipartTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendMultipartTextWithCbAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "replyAddr"    # Ljava/lang/String;
    .param p8, "confirmRead"    # I
    .param p9, "replyOption"    # I
    .param p10, "protocolId"    # I
    .param p11, "isExpectMore"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 221
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 222
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IIIZ)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextLge iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "cbAddress"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 115
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 116
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->sendTextWithCbAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "sendTextWithCbAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMultipartTextValidityPeriod(I)V
    .locals 4
    .param p1, "validityperiod"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 37
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setMultipartTextValidityPeriod(I)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setMultipartTextValidityPeriod iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMultipartTextValidityPeriodForSubscriber(IJ)V
    .locals 4
    .param p1, "validityperiod"    # I
    .param p2, "subscription"    # J

    .prologue
    .line 404
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 405
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setMultipartTextValidityPeriod(I)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setMultipartTextValidityPeriod is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsIsRoaming(Z)V
    .locals 4
    .param p1, "isRoaming"    # Z

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 265
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmsIsRoaming(Z)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmsIsRoaming iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsPriority(I)V
    .locals 4
    .param p1, "priority"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 103
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmsPriority(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmsPriority iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmscenterAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 58
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 61
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSmscenterAddressForSubscriber(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # J

    .prologue
    .line 382
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 383
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setSmscenterAddress(Ljava/lang/String;)Z

    move-result v1

    .line 387
    :goto_0
    return v1

    .line 386
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setSmscenterAddress iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUiccType(I)V
    .locals 4
    .param p1, "uiccType"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 176
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->setUiccType(I)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "setUiccType iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z
    .locals 4
    .param p1, "isOnOff"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 308
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->smsReceptionBlockingforNIAPPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 312
    :goto_0
    return v1

    .line 311
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "smsReceptionBlockingforNIAPPolicy iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfMultiMode(II[BI)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsformat"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 136
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 139
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateMessageOnIccEfMultiMode iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateMessageOnIccEfMultiModeForSubscriber(II[BIJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsformat"    # I
    .param p5, "subId"    # J

    .prologue
    .line 145
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 146
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateMessageOnIccEfMultiMode(II[BI)Z

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 149
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateMessageOnIccEfMultiModeForSubscriber iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->this$0:Lcom/android/internal/telephony/UiccSmsControllerEx;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getDefaultSmsSubId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 91
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateSmsOnSimReadStatus(IZ)Z

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 94
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateSmsOnSimReadStatus iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatusForSubscriber(IZJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "read"    # Z
    .param p3, "subId"    # J

    .prologue
    .line 362
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->getIccSmsInterfaceManagerEx(J)Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    move-result-object v0

    .line 363
    .local v0, "iccSmsIntMgrEx":Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateSmsOnSimReadStatus(IZ)Z

    move-result v1

    .line 367
    :goto_0
    return v1

    .line 366
    :cond_0
    const-string v1, "RIL_UiccSmsControllerEx"

    const-string v2, "updateSmsOnSimReadStatus iccSmsIntMgrEx is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method
