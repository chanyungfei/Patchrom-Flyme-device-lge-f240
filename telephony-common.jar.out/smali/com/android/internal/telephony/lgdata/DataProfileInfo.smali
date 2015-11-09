.class public final Lcom/android/internal/telephony/lgdata/DataProfileInfo;
.super Lcom/android/internal/telephony/dataconnection/DataProfile;
.source "DataProfileInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA] "

.field private static PDP_TYPE_IPV4:I = 0x0

.field private static PDP_TYPE_IPV4V6:I = 0x0

.field private static PDP_TYPE_IPV6:I = 0x0

.field private static PROFILE_ATT_DEFAULT:I = 0x0

.field private static PROFILE_ATT_EMERGENCY:I = 0x0

.field private static PROFILE_ATT_IMS:I = 0x0

.field private static PROFILE_CMCC_DEFAULT:I = 0x0

.field private static PROFILE_CMCC_IMS:I = 0x0

.field private static PROFILE_DEFAULT:I = 0x0

.field private static PROFILE_DUN:I = 0x0

.field private static PROFILE_EMERGENCY:I = 0x0

.field private static PROFILE_FOTA:I = 0x0

.field private static PROFILE_IMS:I = 0x0

.field private static PROFILE_INITIAL_ATTACH:I = 0x0

.field public static final PROFILE_KDDI_ADMIN:I = 0x3

.field public static final PROFILE_KDDI_DEFAULT:I = 0x2

.field public static final PROFILE_KDDI_DUN:I = 0x4

.field public static final PROFILE_KDDI_EMERGENCY:I = 0x6

.field public static final PROFILE_KDDI_IMS:I = 0x1

.field public static final PROFILE_KDDI_XCAP:I = 0x5

.field public static final PROFILE_KR_DEFAULT:I = 0x2

.field public static final PROFILE_KR_IMS:I = 0x1

.field public static final PROFILE_KR_INITIAL_ATTACH:I = 0x1

.field public static PROFILE_OPEN_DEFAULT:I = 0x0

.field public static PROFILE_OPEN_IMS:I = 0x0

.field private static PROFILE_SPCS_DEFAULT:I = 0x0

.field private static PROFILE_SPCS_DUN:I = 0x0

.field private static PROFILE_SPCS_FOTA:I = 0x0

.field private static PROFILE_TMUS_CBS:I = 0x0

.field private static PROFILE_TMUS_DEFAULT:I = 0x0

.field private static PROFILE_TMUS_EMERGENCY:I = 0x0

.field private static PROFILE_TMUS_IMS:I = 0x0

.field private static PROFILE_USC_DEFAULT:I = 0x0

.field private static PROFILE_USC_IMS:I = 0x0

.field private static PROFILE_USC_USCAPP:I = 0x0

.field public static final PROFILE_VZW800:I = 0x5

.field public static final PROFILE_VZWAPP:I = 0x4

.field public static final PROFILE_VZW_ADMIN:I = 0x2

.field public static final PROFILE_VZW_DEFAULT:I = 0x3

.field public static final PROFILE_VZW_EMERGENCY:I = 0x6

.field public static final PROFILE_VZW_IMS:I = 0x1

.field public static final VZW_DATA_PROFILE_ADMIN:I = 0x2

.field public static final VZW_DATA_PROFILE_DEFAULT:I = 0x3

.field public static final VZW_DATA_PROFILE_EMERGENCY:I = 0x6

.field public static final VZW_DATA_PROFILE_IMS:I = 0x1

.field public static final VZW_DATA_PROFILE_VZW800:I = 0x5

.field public static final VZW_DATA_PROFILE_VZWAPP:I = 0x4

.field private static featureSet:I


# instance fields
.field public KT_LTE_IMS_APN:Ljava/lang/String;

.field public SKT_LTE_IMS_APN:Ljava/lang/String;

.field public SKT_LTE_Roaming_APN:Ljava/lang/String;

.field public UPLUS_LTE_IMS_APN:Ljava/lang/String;

.field public ehrpdProfileId:I

.field public emergencyPDN:Z

.field public inactivityTimer:I

.field public pcscfNeeded:Z

.field private roaming:Z

.field public triggerEsmInfoRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 34
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 35
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 37
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 38
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 39
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 40
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 41
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 42
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 55
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 56
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 57
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 59
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 60
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 61
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_EMERGENCY:I

    .line 62
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_CBS:I

    .line 71
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 72
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 73
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 75
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 76
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 77
    sput v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 79
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 80
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 83
    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    .line 84
    sput v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 105
    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move v7, v1

    move v8, v4

    move v9, v4

    move v10, v4

    move v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 95
    const-string v0, "lte-roaming.sktelecom.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 96
    const-string v0, "ims"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 97
    const-string v0, "ims.ktfwing.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 98
    const-string v0, "imsv6.lguplus.co.kr"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZIZZIII)V
    .locals 13
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "pcscfNeeded"    # Z
    .param p8, "esmInfo"    # Z
    .param p9, "emergencyPDN"    # Z
    .param p10, "inactivityTimer"    # I
    .param p11, "enabled"    # Z
    .param p12, "roaming"    # Z
    .param p13, "maxConns"    # I
    .param p14, "maxConnsTime"    # I
    .param p15, "waitTime"    # I

    .prologue
    .line 114
    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p14

    move/from16 v10, p13

    move/from16 v11, p15

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 95
    const-string v1, "lte-roaming.sktelecom.com"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 96
    const-string v1, "ims"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 97
    const-string v1, "ims.ktfwing.com"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 98
    const-string v1, "imsv6.lguplus.co.kr"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 115
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needEhrpdProfileUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->type:I

    .line 120
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 121
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 123
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 124
    move/from16 v0, p10

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 127
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V
    .locals 13
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "roaming"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 132
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    :goto_0
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    move v4, v12

    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v9, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v10, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget-boolean v11, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 95
    const-string v0, "lte-roaming.sktelecom.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 96
    const-string v0, "ims"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 97
    const-string v0, "ims.ktfwing.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 98
    const-string v0, "imsv6.lguplus.co.kr"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    .line 136
    iput-boolean p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needEhrpdProfileUpdate()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v12

    :goto_2
    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->type:I

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needPcscfAddrRequest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 144
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    if-nez v0, :cond_1

    .line 146
    const-string v0, "ims"

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IMS"

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needTriggerEsmInfoRequest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 153
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-ne v0, v1, :cond_3

    :cond_2
    move v12, v7

    :cond_3
    iput-boolean v12, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getInactivityTimer(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 158
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->inactivityTimer:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 165
    return-void

    .line 132
    :cond_5
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    goto/16 :goto_1

    :cond_7
    move v0, v7

    .line 139
    goto :goto_2
.end method

.method public static getModemProfileID(I[Ljava/lang/String;)I
    .locals 8
    .param p0, "featureSet"    # I
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 333
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    const-string v5, "*"

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-nez v5, :cond_4

    .line 335
    :cond_0
    if-ne p0, v4, :cond_2

    .line 520
    :cond_1
    :goto_0
    return v0

    .line 338
    :cond_2
    if-ne p0, v0, :cond_3

    .line 339
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    goto :goto_0

    .line 341
    :cond_3
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto :goto_0

    .line 343
    :cond_4
    const-string v5, "DataProfileInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] <<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-ne p0, v4, :cond_a

    .line 346
    const-string v4, "default"

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto :goto_0

    .line 352
    :cond_5
    const-string v0, "admin"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_6
    const-string v0, "vzwapp"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 356
    goto :goto_0

    .line 358
    :cond_7
    const-string v0, "vzw800"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    const/4 v0, 0x5

    goto :goto_0

    .line 361
    :cond_8
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto :goto_0

    :cond_9
    move v0, v3

    .line 365
    goto :goto_0

    .line 368
    :cond_a
    const/16 v5, 0x9

    if-ne p0, v5, :cond_f

    .line 369
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 370
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto :goto_0

    .line 372
    :cond_b
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 373
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    goto/16 :goto_0

    .line 375
    :cond_c
    const-string v0, "fota"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 376
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    goto/16 :goto_0

    .line 378
    :cond_d
    const-string v0, "dun"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 379
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    goto/16 :goto_0

    :cond_e
    move v0, v3

    .line 382
    goto/16 :goto_0

    .line 385
    :cond_f
    const/16 v5, 0xb

    if-ne p0, v5, :cond_15

    .line 386
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 387
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 389
    :cond_10
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 390
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    goto/16 :goto_0

    .line 392
    :cond_11
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 393
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    goto/16 :goto_0

    .line 394
    :cond_12
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 395
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_EMERGENCY:I

    goto/16 :goto_0

    .line 397
    :cond_13
    const-string v0, "cbs"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 398
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_CBS:I

    goto/16 :goto_0

    :cond_14
    move v0, v3

    .line 401
    goto/16 :goto_0

    .line 404
    :cond_15
    const/16 v5, 0x8

    if-ne p0, v5, :cond_1c

    .line 405
    const-string v5, "default"

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v0, v1

    .line 406
    goto/16 :goto_0

    .line 407
    :cond_16
    const-string v1, "admin"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v4

    .line 410
    goto/16 :goto_0

    .line 411
    :cond_17
    const-string v0, "dun"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    .line 412
    goto/16 :goto_0

    .line 413
    :cond_18
    const-string v0, "xcap"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 414
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 415
    :cond_19
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 416
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 417
    :cond_1a
    const-string v0, "*"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v4

    .line 418
    goto/16 :goto_0

    :cond_1b
    move v0, v3

    .line 420
    goto/16 :goto_0

    .line 423
    :cond_1c
    if-ne p0, v2, :cond_21

    .line 424
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 425
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 427
    :cond_1d
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 428
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    goto/16 :goto_0

    .line 430
    :cond_1e
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 431
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    goto/16 :goto_0

    .line 433
    :cond_1f
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 434
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    goto/16 :goto_0

    :cond_20
    move v0, v3

    .line 437
    goto/16 :goto_0

    .line 440
    :cond_21
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_27

    .line 441
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 442
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 444
    :cond_22
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "*"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 446
    :cond_23
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    goto/16 :goto_0

    .line 448
    :cond_24
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 449
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    goto/16 :goto_0

    .line 451
    :cond_25
    const-string v0, "usccapp"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 452
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    goto/16 :goto_0

    :cond_26
    move v0, v3

    .line 455
    goto/16 :goto_0

    .line 458
    :cond_27
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_2b

    .line 459
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 460
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 462
    :cond_28
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 463
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    goto/16 :goto_0

    .line 465
    :cond_29
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 466
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    goto/16 :goto_0

    :cond_2a
    move v0, v3

    .line 469
    goto/16 :goto_0

    .line 472
    :cond_2b
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_2e

    .line 473
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "*"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 476
    :cond_2c
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    :cond_2d
    move v0, v3

    .line 479
    goto/16 :goto_0

    .line 482
    :cond_2e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_33

    .line 483
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 484
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 486
    :cond_2f
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "*"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 488
    :cond_30
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_DEFAULT:I

    goto/16 :goto_0

    .line 490
    :cond_31
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 491
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    goto/16 :goto_0

    :cond_32
    move v0, v3

    .line 494
    goto/16 :goto_0

    .line 498
    :cond_33
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 499
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 501
    :cond_34
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 502
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto/16 :goto_0

    .line 504
    :cond_35
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 505
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-eqz v0, :cond_36

    const/16 v0, 0x8

    if-ne p0, v0, :cond_37

    .line 507
    :cond_36
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 510
    :cond_37
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    goto/16 :goto_0

    .line 513
    :cond_38
    const-string v0, "fota"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 514
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    goto/16 :goto_0

    .line 516
    :cond_39
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 517
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto/16 :goto_0

    .line 520
    :cond_3a
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0
.end method

.method public static toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/lgdata/DataProfileInfo;)Landroid/os/Parcel;
    .locals 4
    .param p0, "pc"    # Landroid/os/Parcel;
    .param p1, "dps"    # [Lcom/android/internal/telephony/lgdata/DataProfileInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 610
    if-nez p0, :cond_1

    .line 611
    const/4 p0, 0x0

    .line 636
    .end local p0    # "pc":Landroid/os/Parcel;
    :cond_0
    return-object p0

    .line 614
    .restart local p0    # "pc":Landroid/os/Parcel;
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 616
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->type:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxConns:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->waitTime:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    aget-object v1, p1, v0

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->enabled:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    aget-object v1, p1, v0

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    aget-object v1, p1, v0

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    aget-object v1, p1, v0

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 626
    goto :goto_1

    :cond_3
    move v1, v3

    .line 628
    goto :goto_2

    :cond_4
    move v1, v3

    .line 629
    goto :goto_3

    :cond_5
    move v1, v3

    .line 630
    goto :goto_4
.end method


# virtual methods
.method public getEhrpdProfileID()I
    .locals 7

    .prologue
    const/16 v0, 0x9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v1, 0x66

    .line 537
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 538
    const-string v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msm8994"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 539
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-ne v1, v2, :cond_1

    .line 540
    const/4 v0, 0x7

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v1, v4, :cond_2

    .line 542
    const/16 v0, 0x8

    goto :goto_0

    .line 543
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-eq v1, v5, :cond_0

    .line 545
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v6, :cond_3

    .line 546
    const/16 v0, 0xa

    goto :goto_0

    .line 547
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 548
    const/16 v0, 0xb

    goto :goto_0

    .line 552
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 553
    goto :goto_0

    .line 554
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v4, :cond_6

    .line 555
    const/16 v0, 0x68

    goto :goto_0

    .line 556
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v5, :cond_7

    .line 557
    const/16 v0, 0x67

    goto :goto_0

    .line 558
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v6, :cond_8

    .line 559
    const/16 v0, 0x65

    goto :goto_0

    .line 560
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 561
    const/16 v0, 0x69

    goto :goto_0

    .line 564
    :cond_9
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    if-ne v2, v0, :cond_11

    .line 565
    const-string v2, "ro.product.board"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msm8994"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 566
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    if-ne v1, v2, :cond_a

    .line 567
    const/16 v0, 0xa

    goto :goto_0

    .line 569
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    if-ne v1, v2, :cond_b

    .line 570
    const/16 v0, 0xa

    goto :goto_0

    .line 572
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v1, v2, :cond_c

    .line 573
    const/16 v0, 0xb

    goto :goto_0

    .line 575
    :cond_c
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    if-ne v1, v2, :cond_0

    .line 576
    const/16 v0, 0xc

    goto :goto_0

    .line 582
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    if-ne v0, v2, :cond_e

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :cond_e
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    if-ne v0, v2, :cond_f

    move v0, v1

    .line 586
    goto/16 :goto_0

    .line 588
    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v0, v1, :cond_10

    .line 589
    const/16 v0, 0x67

    goto/16 :goto_0

    .line 591
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    if-ne v0, v1, :cond_15

    .line 592
    const/16 v0, 0x68

    goto/16 :goto_0

    .line 596
    :cond_11
    sget v0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_15

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v4, :cond_12

    move v0, v1

    .line 598
    goto/16 :goto_0

    .line 599
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v5, :cond_13

    .line 600
    const/16 v0, 0x68

    goto/16 :goto_0

    .line 601
    :cond_13
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 602
    const/16 v0, 0x67

    goto/16 :goto_0

    .line 603
    :cond_14
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-ne v0, v6, :cond_15

    .line 604
    const/16 v0, 0x65

    goto/16 :goto_0

    .line 606
    :cond_15
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    add-int/lit8 v0, v0, 0x64

    goto/16 :goto_0
.end method

.method public getInactivityTimer(Lcom/android/internal/telephony/dataconnection/ApnSetting;)I
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "inactivityTimer":I
    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    packed-switch v1, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return v0

    .line 302
    :pswitch_1
    const/16 v0, 0x59f

    .line 303
    goto :goto_0

    .line 305
    :pswitch_2
    const/16 v0, 0xd98

    .line 306
    goto :goto_0

    .line 309
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v1, v2, :cond_0

    .line 310
    const/16 v0, 0xf

    goto :goto_0

    .line 312
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->inactivityTimer:I

    .line 315
    goto :goto_0

    .line 317
    :pswitch_4
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 318
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 320
    const/4 v0, 0x5

    goto :goto_0

    .line 322
    :cond_2
    const/16 v0, 0x3c

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public isProfileDefault()Z
    .locals 2

    .prologue
    .line 528
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v1, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    if-ne v0, v1, :cond_0

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needEhrpdProfileUpdate()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 277
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    if-ne v2, v1, :cond_2

    .line 278
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0

    .line 287
    :cond_2
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 291
    goto :goto_0
.end method

.method public needPcscfAddrRequest()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 175
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 178
    :cond_3
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 180
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-eq v2, v3, :cond_4

    const-string v2, "ims"

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "IMS"

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :cond_5
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    if-ne v2, v4, :cond_7

    .line 185
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-eq v2, v1, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_6
    move v0, v1

    .line 186
    goto :goto_0

    .line 190
    :cond_7
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_9

    .line 192
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 195
    :cond_9
    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_d

    .line 196
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_OPEN_IMS:I

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_b

    :cond_a
    move v0, v1

    goto :goto_0

    .line 199
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE_FOR_IA_TYPE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    .line 205
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-eq v2, v3, :cond_e

    sget v2, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    if-ne v2, v3, :cond_0

    :cond_e
    move v0, v1

    .line 208
    goto/16 :goto_0
.end method

.method public needTriggerEsmInfoRequest()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 215
    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    sget v4, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    if-ne v3, v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v3}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "triggerEsmInfoRequestForMobility":I
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "networkOperator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 225
    .local v1, "retval":Z
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] needTriggerEsmInfoRequest(), networkOperator["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], apn["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], roaming["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v3, "SKT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    :cond_2
    const-string v3, "[LGE_DATA] "

    const-string v4, "[USIM Mobility] [Domestic region]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    goto :goto_0

    .line 235
    :cond_3
    const-string v3, "[LGE_DATA] "

    const-string v4, "[USIM Mobility] Other cases, return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x1

    goto :goto_0

    .line 240
    :cond_4
    const-string v3, "KT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_5

    .line 243
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns false in domestic network with default APN."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 247
    :cond_5
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns true in other cases."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 252
    :cond_6
    const-string v3, "LGU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_7

    .line 255
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns false in domestic network with default APN."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 259
    :cond_7
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns true in other cases."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 267
    .end local v0    # "networkOperator":Ljava/lang/String;
    .end local v1    # "retval":Z
    .end local v2    # "triggerEsmInfoRequestForMobility":I
    :cond_8
    sget v3, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->featureSet:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_0

    .line 272
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[DataProfileInfo] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxConns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->waitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
