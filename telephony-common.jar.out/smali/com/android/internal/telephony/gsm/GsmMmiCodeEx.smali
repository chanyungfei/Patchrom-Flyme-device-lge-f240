.class public Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
.super Lcom/android/internal/telephony/gsm/GsmMmiCode;
.source "GsmMmiCodeEx.java"


# static fields
.field static final GLOBALDEV_CS:Ljava/lang/String; = "+19085594899"

.field static final KT_CF_STATUS_00:I = 0x0

.field static final KT_CF_STATUS_04:I = 0x4

.field static final KT_CF_STATUS_06:I = 0x6

.field static final KT_CF_STATUS_07:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "GsmMmiCodeEx"

.field static final MATCH_GROUP_GLOBALDEV_DIALNUM:I = 0x5

.field static final MATCH_GROUP_GLOBALDEV_DIALPREFIX:I = 0x4

.field static final SC_CLIRO_KOREA:Ljava/lang/String; = "230"

.field static final SC_CLIR_KOREA:Ljava/lang/String; = "23"

.field static final SC_GLOBALDEV_CLIR_INVK:Ljava/lang/String; = "67"

.field static final SC_GLOBALDEV_CLIR_SUPP:Ljava/lang/String; = "82"

.field static final SC_GLOBALDEV_CS:Ljava/lang/String; = "611"

.field static final SC_GLOBALDEV_VM:Ljava/lang/String; = "86"

.field static final SC_KOREA_TEMPCODE1:Ljava/lang/String; = "61"

.field static final SC_KOREA_TEMPCODE2:Ljava/lang/String; = "62"

.field static final SC_KOREA_TEMPCODE3:Ljava/lang/String; = "63"

.field static final SC_KOREA_TEMPCODE4:Ljava/lang/String; = "65"

.field static final SC_KOREA_TEMPCODE5:Ljava/lang/String; = "22"

.field static final SC_VDF_ONNET1:Ljava/lang/String; = "153"

.field static final SC_VDF_ONNET2:Ljava/lang/String; = "45"

.field static final SC_VDF_ONNET3:Ljava/lang/String; = "132"

.field static sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "((\\*)(\\d{2})(\\+{0,1})(\\d{0,}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 77
    return-void
.end method

.method private getTemplateForCFAallConditionalKT(ILjava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "status"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "needTimeTemplate"    # Z

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "template":Ljava/lang/CharSequence;
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 260
    if-eqz p3, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    :cond_2
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const-string v1, "ccfTemplateNotForwarded"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_3
    if-eqz p3, :cond_4

    .line 278
    const-string v1, "ccfTemplateRegisteredTime"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_4
    const-string v1, "ccfTemplateRegistered"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 1
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->checkShortCodeCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .locals 11
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 82
    const/4 v4, 0x0

    .line 85
    .local v4, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    const/4 v6, 0x0

    const-string v7, "vzw_gfit"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->sPatternSuppServiceGlobalDev:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 87
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 89
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mAction:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "DialCode":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "DialPrefix":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "DialNumber":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 95
    const-string v6, "86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const/4 v4, 0x0

    move-object v5, v4

    .line 163
    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .local v5, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    :goto_0
    return-object v5

    .line 98
    .end local v5    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .restart local v0    # "DialCode":Ljava/lang/String;
    .restart local v1    # "DialNumber":Ljava/lang/String;
    .restart local v2    # "DialPrefix":Ljava/lang/String;
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    :cond_0
    const-string v6, "611"

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    const/4 v4, 0x0

    move-object v5, v4

    .line 100
    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .restart local v5    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    goto :goto_0

    .line 101
    .end local v5    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    :cond_1
    const-string v6, "67"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 116
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 117
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 118
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mPoundString:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mAction:Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    .line 121
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSia:Ljava/lang/String;

    .line 122
    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSib:Ljava/lang/String;

    .line 123
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSic:Ljava/lang/String;

    .line 124
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mPwd:Ljava/lang/String;

    .line 125
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    .line 131
    iget-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 135
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mPoundString:Ljava/lang/String;

    .line 160
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    const-string v6, "GsmMmiCodeEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newFromDialString().. return ret.dialingNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v5, v4

    .line 163
    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .restart local v5    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    goto/16 :goto_0

    .line 104
    .end local v5    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    .restart local v0    # "DialCode":Ljava/lang/String;
    .restart local v1    # "DialNumber":Ljava/lang/String;
    .restart local v2    # "DialPrefix":Ljava/lang/String;
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    :cond_5
    const-string v6, "82"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*31#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 139
    .end local v0    # "DialCode":Ljava/lang/String;
    .end local v1    # "DialNumber":Ljava/lang/String;
    .end local v2    # "DialPrefix":Ljava/lang/String;
    :cond_6
    if-eqz p0, :cond_7

    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "KR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 145
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 146
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mPoundString:Ljava/lang/String;

    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 149
    const/4 v4, 0x0

    goto :goto_2

    .line 151
    :cond_8
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "KR"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 154
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;

    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    invoke-direct {v4, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 155
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method protected callForwardingEnabledForKT(Lcom/android/internal/telephony/CallForwardInfo;Z)Z
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "cffEnabled"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const-string v1, "KT_CFU_FROM_JB"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 p2, 0x1

    .line 334
    :goto_0
    const-string v0, "GsmMmiCodeEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KT Call Fowarding cffEnableds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    return p2

    .line 333
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected displayCallForwardingReason(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->LGECfuMmi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    :goto_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->LGECfbMmi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->LGECfnryMmi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    sget v1, Lcom/lge/internal/R$string;->LGECfnrMmi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getCLIRModeKorea()I
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x2

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKTCallForwardingStatus(Lcom/android/internal/telephony/CallForwardInfo;Z)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "needTimeTemplate"    # Z

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "template":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const-string v2, "KT_CFU_FROM_JB"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "GsmMmiCodeEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KT Call Fowarding info.status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v2, "004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget-object v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->getTemplateForCFAallConditionalKT(ILjava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 297
    if-eqz p2, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_3
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_5
    if-eqz p2, :cond_6

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mContext:Landroid/content/Context;

    const v2, 0x10400f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KR"

    const-string v1, "KT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "CCfMmi"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected isTemporaryModeCLIRKorea()Z
    .locals 3

    .prologue
    .line 204
    const-string v0, "GsmMmiCodeEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTemporaryModeCLIRKorea() : mSc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialingNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTemporaryModeKTKorea()Z
    .locals 3

    .prologue
    .line 219
    const-string v0, "GsmMmiCodeEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTemporaryModeKTKorea() : mSc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDialingNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "63"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mDialingNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTemporaryModeSKTKorea()Z
    .locals 3

    .prologue
    .line 210
    const-string v0, "GsmMmiCodeEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTemporaryModeSKTKorea() : mSc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "63"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected isVDFOneNetServiceCode()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "153"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "132"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 382
    const-string v0, "support_volte_call_waiting"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    .line 384
    const-string v0, "GsmMmiCodeEx"

    const-string v1, "CW set complete. try to query status"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 388
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCodeEx;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :goto_0
    return-object v1

    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
