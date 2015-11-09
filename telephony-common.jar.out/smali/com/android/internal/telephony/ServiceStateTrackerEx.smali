.class public abstract Lcom/android/internal/telephony/ServiceStateTrackerEx;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "ServiceStateTrackerEx.java"


# static fields
.field protected static final DBG_CALL:Z

.field protected static final EVENT_APN_CHANGED:I = 0x34

.field protected static final EVENT_DELAYED_RAC_IND:I = 0x8fe

.field protected static final EVENT_DELAYED_RADIO_POWER_OFF:I = 0x66

.field protected static final EVENT_DELAY_TEST_ASSIST_DIAL:I = 0x79

.field protected static final EVENT_GET_EHRPD_INFO_DONE:I = 0x65

.field protected static final EVENT_GET_LTE_INFO_DONE:I = 0x64

.field protected static final EVENT_HDR_ROAMING_INDICATOR:I = 0x69

.field protected static final EVENT_LOG_RADIO_INFO_RECEIVED:I = 0x3fb

.field protected static final EVENT_LTE_EHRPD_FORCED_CHANGED:I = 0x6a

.field protected static final EVENT_LTE_ROAMING_INDICATOR:I = 0x6b

.field protected static final EVENT_RAC_UPDATE_IND:I = 0x8ff

.field protected static final EVENT_SIB16_TIME:I = 0x6f

.field private static mBackUpSavedAtTime:J

.field private static mBackUpSavedTime:J

.field private static mPlmnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSavedNeedFixZone:Z

.field private static mSavedZoneDst:Z

.field private static mSavedZoneOffset:I

.field private static mSavedZoneTime:J


# instance fields
.field protected absTime:J

.field protected isValidSIB16Time:Z

.field protected mAfterDialNumber:Ljava/lang/String;

.field protected mBeforeDialNumber:Ljava/lang/String;

.field private mCr:Landroid/content/ContentResolver;

.field mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

.field protected mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mEhrpdInfo:[Ljava/lang/String;

.field protected mFakeMCC:Ljava/lang/String;

.field protected mFakePhoneType:I

.field protected mFakeRI:I

.field protected mFakeRoaming:I

.field protected mFakeSID:Ljava/lang/String;

.field protected mFromContact:I

.field protected mIsVzwTestOn:Z

.field protected mLgDataRoaming:Z

.field protected mLgVoiceRoaming:Z

.field protected mNeedToUpdateSpnForSubId:Z

.field protected mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

.field protected mPowerOffDelayedForLgeIms:Z

.field protected mRefCountry:Ljava/lang/String;

.field protected mTelephonyApnObserver:Landroid/database/ContentObserver;

.field protected mlteInfo:[Ljava/lang/String;

.field setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

.field protected sib16ReceiveTime:J

.field protected sib16dst:I

.field protected sib16tzOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 69
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    .line 681
    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    .line 682
    sput v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    .line 683
    sput-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    .line 684
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    .line 685
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    .line 686
    sput-wide v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    return-void

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 8
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 73
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 82
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    .line 83
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    .line 84
    iput-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    .line 85
    iput-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    .line 86
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 91
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakePhoneType:I

    .line 92
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    .line 93
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    .line 94
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    .line 95
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    .line 96
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    .line 97
    const-string v3, "0"

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    .line 98
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    .line 99
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    .line 111
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    .line 112
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    .line 148
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    .line 152
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLgDataRoaming:Z

    .line 153
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLgVoiceRoaming:Z

    .line 485
    new-instance v3, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx$1;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerEx;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    .line 1028
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 171
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    .line 173
    .local v1, "paramTypeFrom":[Ljava/lang/Class;
    :try_start_0
    const-class v3, Landroid/telephony/SignalStrength;

    const-string v4, "setDataRadioTechnology"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSIB16Time(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    .line 190
    const-string v3, "CTC"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "45429"

    const-string v5, "PCCW"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "45502"

    const-string v5, "CT Macao"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "45005"

    const-string v5, "SK"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "44007"

    const-string v5, "KDDI"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "44008"

    const-string v5, "KDDI"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "46605"

    const-string v5, "APBW"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "40400"

    const-string v5, "Reliance"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "30286"

    const-string v5, "Telus"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "310410"

    const-string v5, "AT&T"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "20801"

    const-string v5, "Orange"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "26201"

    const-string v5, "T-Mobile"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "45404"

    const-string v5, "Hutchison"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    const-string v4, "45406"

    const-string v5, "Smartone"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ServiceStateTrackerEx:Unable to connect to SignalStrength !!!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "ServiceStateTrackerEx:Unable to connect to SignalStrength *****"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static getSavedAtTime()J
    .locals 2

    .prologue
    .line 724
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    return-wide v0
.end method

.method protected static getSavedNeedFixZone()Z
    .locals 1

    .prologue
    .line 692
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    return v0
.end method

.method protected static getSavedTime()J
    .locals 2

    .prologue
    .line 717
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    return-wide v0
.end method

.method protected static getSavedZoneDst()Z
    .locals 1

    .prologue
    .line 704
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    return v0
.end method

.method protected static getSavedZoneOffset()I
    .locals 1

    .prologue
    .line 698
    sget v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    return v0
.end method

.method protected static getSavedZoneTime()J
    .locals 2

    .prologue
    .line 710
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    return-wide v0
.end method

.method private handleApnChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    :cond_0
    const-string v0, "handleApnChanged()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isVZWAdminDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    const-string v0, "VZW APN Disabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v1, "apn2_disable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setRadioPower(Z)V

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isVZWAdminEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    const-string v0, "VZW APN Enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v1, "apn2_disable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setRadioPower(Z)V

    .line 509
    :cond_2
    :goto_0
    return-void

    .line 507
    :cond_3
    const-string v0, "Igone handleApnChanged()..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isOemRadTestSettingTrue()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_rad_test"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 881
    .local v0, "oemRadSettingValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOemRadTestSettingTrue : SettingsConstants.Secure.OEM_RAD_TEST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPhoneBase.getPhoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 885
    if-lez v0, :cond_0

    .line 886
    const/4 v1, 0x1

    .line 889
    :cond_0
    return v1
.end method

.method private isVZWAdminDisabled()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 512
    const/4 v7, 0x0

    .line 513
    .local v7, "isDisabled":Z
    const/4 v3, 0x0

    .line 514
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 516
    .local v8, "operator":Ljava/lang/String;
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 522
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminDisabled() operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 524
    const-string v0, "311480"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 525
    const/4 v0, 0x0

    .line 544
    :goto_1
    return v0

    .line 518
    :cond_1
    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = \'admin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 534
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 536
    const/4 v7, 0x0

    .line 540
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminDisabled() isDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    move v0, v7

    .line 544
    goto :goto_1

    .line 538
    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private isVZWAdminEnabled()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 548
    const/4 v7, 0x0

    .line 549
    .local v7, "isEnabled":Z
    const/4 v3, 0x0

    .line 550
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, "operator":Ljava/lang/String;
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 558
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminEnabled() operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 560
    const-string v0, "311480"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    const/4 v0, 0x0

    .line 580
    :goto_1
    return v0

    .line 554
    :cond_1
    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "gsm.apn.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 564
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = \'admin\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 570
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 571
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 572
    const/4 v7, 0x0

    .line 576
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVZWAdminEnabled() isEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    move v0, v7

    .line 580
    goto :goto_1

    .line 574
    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method protected static setSavedAtTime(J)V
    .locals 0
    .param p0, "saveAtTime"    # J

    .prologue
    .line 721
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedAtTime:J

    .line 722
    return-void
.end method

.method protected static setSavedNeedFixZone(Z)V
    .locals 0
    .param p0, "needFixZone"    # Z

    .prologue
    .line 689
    sput-boolean p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedNeedFixZone:Z

    .line 690
    return-void
.end method

.method protected static setSavedTime(J)V
    .locals 0
    .param p0, "saveTime"    # J

    .prologue
    .line 714
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBackUpSavedTime:J

    .line 715
    return-void
.end method

.method protected static setSavedZoneDst(Z)V
    .locals 0
    .param p0, "zoneDst"    # Z

    .prologue
    .line 701
    sput-boolean p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneDst:Z

    .line 702
    return-void
.end method

.method protected static setSavedZoneOffset(I)V
    .locals 0
    .param p0, "zoneOffset"    # I

    .prologue
    .line 695
    sput p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneOffset:I

    .line 696
    return-void
.end method

.method protected static setSavedZoneTime(J)V
    .locals 0
    .param p0, "zoneTime"    # J

    .prologue
    .line 707
    sput-wide p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSavedZoneTime:J

    .line 708
    return-void
.end method


# virtual methods
.method protected broadcastNetworkTimeInfoForDrm(Ljava/util/Calendar;Ljava/lang/String;J)V
    .locals 11
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "nitz"    # Ljava/lang/String;
    .param p3, "nitzReceiveTime"    # J

    .prologue
    .line 830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, p3

    .line 833
    .local v2, "millisSinceNitzReceived":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 843
    :cond_0
    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: not setting time, processing has taken "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v6, 0x5265c00

    div-long v6, v2, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " days"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_1
    const/16 v1, 0xe

    long-to-int v6, v2

    invoke-virtual {p1, v1, v6}, Ljava/util/Calendar;->add(II)V

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: Setting time of day to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " NITZ receive delay(ms): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " gained(ms): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 867
    .local v4, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastNetworkSetTimeNotAuto: time="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ms"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.NETWORK_SET_TIME_NOT_AUTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    const-string v1, "not_auto_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method protected checkMissingPhoneForLGU()V
    .locals 4

    .prologue
    .line 733
    const-string v2, "KR"

    const-string v3, "LGU"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 736
    const-string v2, "persist.radio.missing_phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "lastMissingPhone":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastMissingPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 739
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, "intentMissingPhone":Landroid/content/Intent;
    const-string v2, "rejectCode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 744
    const-string v2, "persist.radio.missing_phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v2, "send intent LTE_MISSING_PHONE rejectCode 0 for LTE in-srv"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 750
    .end local v0    # "intentMissingPhone":Landroid/content/Intent;
    .end local v1    # "lastMissingPhone":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected checkNotiStateChanged()Z
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method protected checkRoamingState(I)V
    .locals 2
    .param p1, "mFakeRoaming"    # I

    .prologue
    const/4 v1, 0x1

    .line 451
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 452
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 454
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSIB16Time(Landroid/os/Handler;)V

    .line 214
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 222
    return-void
.end method

.method protected firstUpdateSpnDisplyKR()V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public getEhrpdInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public getLteInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    return-object v0
.end method

.method protected getPlmnforCTC()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 776
    const-string v2, ""

    .line 777
    .local v2, "plmn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "operatorNumeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 780
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v3

    .line 781
    .local v3, "sid":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 782
    const-string v4, "46003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 783
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_china_telecom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 787
    :goto_0
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    const-string v4, "310"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 790
    const-string v2, "Verizon"

    .line 798
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    const/16 v4, 0x100b

    if-ne v3, v4, :cond_9

    .line 800
    const-string v2, "Sprint"

    .line 805
    :cond_2
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 806
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_sid:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 808
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 809
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_unknown_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 811
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlmnforCTC in CDMA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 824
    .end local v3    # "sid":I
    :cond_5
    :goto_3
    return-object v2

    .line 785
    .restart local v3    # "sid":I
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "plmn":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "plmn":Ljava/lang/String;
    goto :goto_0

    .line 791
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_7
    const-string v4, "450"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 792
    const-string v2, "SK"

    goto :goto_1

    .line 793
    :cond_8
    const-string v4, "440"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    const-string v2, "KDDI"

    goto :goto_1

    .line 801
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_2

    .line 802
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_mccmnc:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 812
    .end local v3    # "sid":I
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 813
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_b

    .line 814
    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "plmn":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 816
    .restart local v2    # "plmn":Ljava/lang/String;
    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 817
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_mccmnc:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 819
    :cond_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 820
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->lockscreen_unknown_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 822
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlmnforCTC in GSM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getRegisteredCellMccMncInEmergencyMode()Ljava/lang/String;
    .locals 18

    .prologue
    .line 985
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v12

    .line 986
    .local v12, "plmnName":Ljava/lang/String;
    const-string v10, ""

    .line 988
    .local v10, "mccMnc":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 989
    :cond_0
    const-string v12, ""

    .line 990
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mLastCellInfoList:Ljava/util/List;

    .line 991
    .local v7, "cellList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v7, :cond_9

    .line 992
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;

    .line 993
    .local v8, "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v8}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 994
    instance-of v13, v8, Landroid/telephony/CellInfoGsm;

    if-eqz v13, :cond_4

    move-object v4, v8

    .line 995
    check-cast v4, Landroid/telephony/CellInfoGsm;

    .line 996
    .local v4, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 997
    .local v1, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_3

    const-string v13, "%02d"

    :goto_1
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1011
    .end local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    :goto_2
    if-eqz v10, :cond_1

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1012
    invoke-static {}, Lcom/android/internal/telephony/PlmnListParser;->getInstance()Lcom/android/internal/telephony/PlmnListParser;

    move-result-object v11

    .line 1013
    .local v11, "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1014
    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/PlmnListParser;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 997
    .end local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    .restart local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .restart local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_3
    const-string v13, "%d"

    goto :goto_1

    .line 999
    .end local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v4    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_4
    instance-of v13, v8, Landroid/telephony/CellInfoWcdma;

    if-eqz v13, :cond_6

    move-object v6, v8

    .line 1000
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .line 1001
    .local v6, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 1002
    .local v3, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_5

    const-string v13, "%02d"

    :goto_3
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1004
    goto :goto_2

    .line 1002
    :cond_5
    const-string v13, "%d"

    goto :goto_3

    .line 1004
    .end local v3    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v6    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_6
    instance-of v13, v8, Landroid/telephony/CellInfoLte;

    if-eqz v13, :cond_2

    move-object v5, v8

    .line 1005
    check-cast v5, Landroid/telephony/CellInfoLte;

    .line 1006
    .local v5, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 1007
    .local v2, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v13

    const/16 v15, 0xa

    if-ge v13, v15, :cond_7

    const-string v13, "%02d"

    :goto_4
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_7
    const-string v13, "%d"

    goto :goto_4

    .line 1016
    .end local v2    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v5    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .restart local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    :cond_8
    move-object v12, v10

    goto/16 :goto_0

    .line 1023
    .end local v7    # "cellList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "ci":Landroid/telephony/CellInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "plmnListParser":Lcom/android/internal/telephony/PlmnListParser;
    :cond_9
    return-object v12
.end method

.method public getTimeFromSIB16String()[J
    .locals 4

    .prologue
    .line 658
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 659
    .local v0, "value":[J
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    aput-wide v2, v0, v1

    .line 660
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    aput-wide v2, v0, v1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTimeFromSIB16String] sib16ReceiveTime =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , absTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 662
    return-object v0
.end method

.method public getUpdateSpnForSubId()Z
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    return v0
.end method

.method public getValueFromSIB16String()[I
    .locals 3

    .prologue
    .line 650
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 651
    .local v0, "value":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    aput v2, v0, v1

    .line 652
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    aput v2, v0, v1

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getValueFromSIB16String] sib16tzOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , sib16dst = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 654
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 917
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 959
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 961
    :goto_0
    return-void

    .line 920
    :sswitch_0
    const-string v1, "[IMS_AFW] EVENT_GET_LTE_INFO_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 921
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->onSetLteInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 925
    :sswitch_1
    const-string v1, "[IMS_AFW] EVENT_GET_EHRPD_INFO_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 926
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->onSetEhrpdInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 932
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->handleApnChanged()V

    goto :goto_0

    .line 937
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendAssistedDialTestNumber()V

    goto :goto_0

    .line 942
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 943
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->absTime:J

    .line 945
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    goto :goto_0

    .line 952
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const-string v1, "EVENT_DELAYED_RADIO_POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->processDelayedRadioPowerOffForImsDereg()V

    goto :goto_0

    .line 917
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_5
        0x6f -> :sswitch_4
        0x79 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handleRadioStateChangedForApn2Disable()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 476
    const-string v2, "VZW"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v3, "apn2_disable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 478
    .local v0, "apn2_disable_Mode":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn2_disable_Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 479
    if-eqz v0, :cond_2

    .line 480
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    .line 483
    .end local v0    # "apn2_disable_Mode":Z
    :cond_2
    return-void
.end method

.method public isIccIdChanged()Z
    .locals 2

    .prologue
    .line 316
    const-string v0, "persist.radio.iccid-changed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needToFixTimeZoneByMcc(ZIIZ)Z
    .locals 2
    .param p1, "needToFixTimeZone"    # Z
    .param p2, "mcc"    # I
    .param p3, "prevMcc"    # I
    .param p4, "retVal"    # Z

    .prologue
    .line 587
    const/4 v0, 0x0

    const-string v1, "fix_timezone_by_mcc"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p4, 0x1

    .line 590
    :cond_1
    :goto_0
    return p4

    .line 588
    :cond_2
    const/4 p4, 0x0

    goto :goto_0
.end method

.method protected notifyDataRoamingOnOff(ZZ)V
    .locals 1
    .param p1, "hasDataRoamingOn"    # Z
    .param p2, "hasDataRoamingOff"    # Z

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    const-string v0, "notify data roaming on"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 290
    :cond_0
    if-eqz p2, :cond_1

    .line 291
    const-string v0, "notify data roaming off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 294
    :cond_1
    return-void
.end method

.method protected notifyNoServiceState(Z)V
    .locals 2
    .param p1, "hasDeregistered"    # Z

    .prologue
    .line 249
    const/4 v0, 0x0

    const-string v1, "vzw_gfit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 254
    :cond_0
    return-void
.end method

.method protected onSetEhrpdInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 620
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 621
    const-string v2, "onEhrpdInfoReceived, there is Exception"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 625
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] GET EHRPD Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] Sector ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Subnet length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mEhrpdInfo:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetLteInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 604
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 605
    const-string v2, "onLteInfoReceived, there is Exception"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 617
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 609
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] GET LTE Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS_AFW] MCC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Cell ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TAC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Cell Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mlteInfo:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected postProcessEventNetworkStateChanged()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method protected postProcessEventPollStateGprs(III)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "dataRegState"    # I
    .param p3, "type"    # I

    .prologue
    .line 974
    return-void
.end method

.method protected postProcessEventPollStateRegistration(II)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "type"    # I

    .prologue
    .line 971
    return-void
.end method

.method protected postProcessPollStateDone(ZZZ)V
    .locals 0
    .param p1, "hasChanged"    # Z
    .param p2, "hasGprsAttached"    # Z
    .param p3, "hasNotiStateChnaged"    # Z

    .prologue
    .line 980
    return-void
.end method

.method protected preProcessEventNitzTime(Ljava/lang/String;J)V
    .locals 0
    .param p1, "nitzString"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 968
    return-void
.end method

.method protected preProcessPollStateDone()V
    .locals 0

    .prologue
    .line 977
    return-void
.end method

.method protected processDelayedRadioPowerOffForImsDereg()V
    .locals 5

    .prologue
    const/16 v4, 0x66

    const/4 v3, 0x0

    .line 1053
    const-string v1, "KR"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDelayedRadioPowerOffForImsDereg mPowerOffDelayedForLgeIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1061
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1066
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->removeMessages(I)V

    .line 1069
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 1071
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    .line 1072
    .local v0, "powerOffDelayNeed":Z
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    .line 1073
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setPowerStateToDesired()V

    .line 1074
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayNeed:Z

    goto :goto_0
.end method

.method protected queryInfoForIms()V
    .locals 2

    .prologue
    .line 635
    const/4 v0, 0x0

    const-string v1, "SUPPORT_INFO_FOR_IMS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 637
    const-string v0, "[IMS_AFW] Radio Tech is LTE, Get LTE Info from modem"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getLteInfoForIms(Landroid/os/Message;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 641
    const-string v0, "[IMS_AFW] Radio Tech is EHRPD, Get CDMA Info from modem"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getEhrpdInfoForIms(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 272
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 278
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 259
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/lge/telephony/LGServiceState;->getDefault(Landroid/telephony/ServiceState;)Lcom/lge/telephony/LGServiceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/telephony/LGServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 265
    :cond_0
    return-void
.end method

.method public registerForNoServiceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 240
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 242
    return-void
.end method

.method protected sendAssistedDialTestNumber()V
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    invoke-static {}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialCurrentCountry()Lcom/lge/telephony/LGReferenceCountry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/utils/AssistedDialUtils;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/telephony/utils/AssistedDialUtils;->getAssistedDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.vzwnetworktest.afternumber"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "currentcountry"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCurrentCountry:Lcom/lge/telephony/LGReferenceCountry;

    invoke-virtual {v2}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "afternumber"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    sget-boolean v1, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modified number is sent...mDialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mAfterDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_from_contact"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public sendNitzEvent(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "nitzInfo"    # Landroid/os/AsyncResult;

    .prologue
    .line 727
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method protected setAssistedDialMcc(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_assisted_dialing"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "support_smart_dialing"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "assistedDialingMcc":Ljava/lang/String;
    const-string v2, " ***** put System.ASSIST_DIAL_OTA_MCC "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_dial_ota_mcc"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***** MCC  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v0    # "assistedDialingMcc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormatException"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDataRadioTechnology(I)V
    .locals 6
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->setDataRadioTechnologyOnMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod invoke fail !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "ServiceStateTrackerEx:setDataRadioTechnologyOnMethod not exist !!!!!!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDelayedRadioPowerOffForImsDereg()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1031
    const-string v2, "KR"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1032
    const/4 v1, 0x0

    .line 1049
    :goto_0
    return v1

    .line 1036
    :cond_0
    const-string v2, "setDelayedRadioPowerOffForImsDereg"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 1042
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1044
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPowerOffDelayedForLgeIms:Z

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.radio_off"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "imsIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected setDesiredPowerStateByApn2Disable()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 459
    const-string v3, "VZW"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LRA"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    const-string v4, "apn2_disable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 461
    .local v0, "apn2_disable_Mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn2_disable_Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mDesiredPowerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 462
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    if-eqz v3, :cond_1

    if-gtz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDesiredPowerState:Z

    .line 463
    if-lez v0, :cond_3

    .line 464
    const-string v1, "lge.data.apn2-disable"

    const-string v3, "1"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APN2 Disable] lge.data.apn2-disable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lge.data.apn2-disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mTelephonyApnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 473
    .end local v0    # "apn2_disable_Mode":I
    :cond_2
    return-void

    .line 467
    .restart local v0    # "apn2_disable_Mode":I
    :cond_3
    const-string v1, "lge.data.apn2-disable"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[APN2 Disable] lge.data.apn2-disable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lge.data.apn2-disable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setFakeNetworkValues(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roaming => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "roaming"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 430
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 431
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "roaming"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    .line 432
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fromcontact"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "refcountry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialnumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ri"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    .line 438
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    if-lez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFakeSID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFakeRI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mBeforeDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFromContact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRefCountry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 447
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->startAssistedDiaiTest()V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    .line 445
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFakeMCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mBeforeDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mFromContact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setRoamingForOemRadTestKR()V
    .locals 2

    .prologue
    .line 893
    const/4 v0, 0x0

    const-string v1, "KR_RAD_TEST"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isOemRadTestSettingTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 900
    :cond_0
    return-void
.end method

.method public setTimeZoneMonitor()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected setUTCTimeFromSIB16(IIJ)V
    .locals 5
    .param p1, "tzOffset"    # I
    .param p2, "dst"    # I
    .param p3, "nitzReceiveTime"    # J

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 669
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    .line 670
    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    .line 671
    iput-wide p3, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isValidSIB16Time:Z

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set sib16tzOffset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16tzOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sib16dst : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16dst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sib16ReceiveTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sib16ReceiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUpdateSpnForSubId(Z)V
    .locals 0
    .param p1, "enforced"    # Z

    .prologue
    .line 1086
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z

    .line 1087
    return-void
.end method

.method protected startAssistedDiaiTest()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mBeforeDialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 409
    :goto_0
    return-void

    .line 387
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mIsVzwTestOn:Z

    .line 389
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeRoaming:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->checkRoamingState(I)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_from_contact"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFromContact:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_reference_country"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mRefCountry:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_sid"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 400
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fake ASSIST_DIAL_OTA_SID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 408
    :cond_2
    :goto_1
    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_mcc"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    sget-boolean v0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->DBG_CALL:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fake ASSIST_DIAL_OTA_MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mFakeMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 282
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 269
    return-void
.end method

.method public unregisterForNoServiceChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNoServiceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 246
    return-void
.end method

.method protected updateAssistDialDbByMdn(Ljava/lang/String;I)V
    .locals 7
    .param p1, "mMdn"    # Ljava/lang/String;
    .param p2, "eventEnum"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "support_assisted_dialing"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->isIccIdChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "isIccIdChanged = true, Area/Length Update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "area"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "area"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method protected updateAssistedDialSid()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_assisted_dialing"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "support_smart_dialing"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_dial_ota_sid"

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    :cond_1
    return-void
.end method

.method protected updateOperatorAlphaLongCTC()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 755
    const-string v2, "CTC"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "plmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "CToperatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 759
    const-string v2, "46001"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46006"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_spn_china_unicom_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 769
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 770
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerEx;->getPlmnforCTC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 773
    .end local v0    # "CToperatorNumeric":Ljava/lang/String;
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_2
    return-void

    .line 763
    .restart local v0    # "CToperatorNumeric":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    :cond_3
    const-string v2, "46000"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46002"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46007"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46008"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_spn_china_mobile_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto :goto_0
.end method
