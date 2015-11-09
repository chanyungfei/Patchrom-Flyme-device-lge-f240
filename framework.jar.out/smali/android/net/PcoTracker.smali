.class public Landroid/net/PcoTracker;
.super Lcom/android/internal/util/StateMachine;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PcoTracker$PcoFiveState;,
        Landroid/net/PcoTracker$PcoFourState;,
        Landroid/net/PcoTracker$PcoThreeState;,
        Landroid/net/PcoTracker$PcoTwoState;,
        Landroid/net/PcoTracker$PcoOneState;,
        Landroid/net/PcoTracker$PcoDefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_LTE_PCO:Ljava/lang/String; = "com.lge.android.LTE_PCO"

.field private static final ACTION_LTE_PCO_NOTIFICATION_CLICK:Ljava/lang/String; = "com.lge.android.pco.notification.click"

.field private static final ACTION_LTE_PCO_NOTIFICATION_DELETE:Ljava/lang/String; = "com.lge.android.pco.notification.delete"

.field private static final BBPortal_URL:Ljava/lang/String; = "https://quickaccess.verizonwireless.com/bbportal/oem/start.do?"

.field private static final CMD_RECEIVED_PCO:I = 0x0

.field private static final DBG:Z = true

.field private static final EXTRA_PCO_PROFILE_NUM:Ljava/lang/String; = "extra_pco_profile_num"

.field private static final EXTRA_PCO_VALUE:Ljava/lang/String; = "extra_pco_value"

.field private static final GET_DATA_NOTI_ID:I

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.android.LGSetupWizard"

.field private static final TAG:Ljava/lang/String; = "PcoTracker"

.field private static pcoInfo:Ljava/util/HashMap;
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

.field private static radio_off_flag:Z


# instance fields
.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPcoDefaultState:Lcom/android/internal/util/State;

.field private mPcoFiveState:Lcom/android/internal/util/State;

.field private mPcoFourState:Lcom/android/internal/util/State;

.field private mPcoOneState:Lcom/android/internal/util/State;

.field private mPcoThreeState:Lcom/android/internal/util/State;

.field private mPcoTwoState:Lcom/android/internal/util/State;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    .line 102
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "last_ims_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "last_internet_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget v0, Lcom/lge/internal/R$drawable;->ic_stat_notify_adddata:I

    sput v0, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/PcoTracker;->radio_off_flag:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v1, "PcoTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Landroid/net/PcoTracker$PcoDefaultState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoDefaultState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    .line 117
    new-instance v1, Landroid/net/PcoTracker$PcoOneState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoOneState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    .line 118
    new-instance v1, Landroid/net/PcoTracker$PcoTwoState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoTwoState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    .line 119
    new-instance v1, Landroid/net/PcoTracker$PcoThreeState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoThreeState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    .line 120
    new-instance v1, Landroid/net/PcoTracker$PcoFourState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoFourState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    .line 121
    new-instance v1, Landroid/net/PcoTracker$PcoFiveState;

    invoke-direct {v1, p0, v2}, Landroid/net/PcoTracker$PcoFiveState;-><init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    .line 152
    new-instance v1, Landroid/net/PcoTracker$1;

    invoke-direct {v1, p0}, Landroid/net/PcoTracker$1;-><init>(Landroid/net/PcoTracker;)V

    iput-object v1, p0, Landroid/net/PcoTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Landroid/net/PcoTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 130
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    const-string/jumbo v1, "netpolicy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 132
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mUserManager:Landroid/os/UserManager;

    .line 133
    iget-object v1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.android.LTE_PCO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.lge.android.pco.notification.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "com.lge.android.pco.notification.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/PcoTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;)V

    .line 144
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 145
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 146
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 147
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 148
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/PcoTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 149
    iget-object v1, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 150
    return-void
.end method

.method static synthetic access$1000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Landroid/net/PcoTracker;->radio_off_flag:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 87
    sput-boolean p0, Landroid/net/PcoTracker;->radio_off_flag:Z

    return p0
.end method

.method static synthetic access$1400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/PcoTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 87
    sget v0, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    return v0
.end method

.method static synthetic access$2200(Landroid/net/PcoTracker;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/PcoTracker;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/PcoTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/PcoTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static makePcoTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/PcoTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 250
    new-instance v0, Landroid/net/PcoTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/PcoTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 251
    .local v0, "pcotr":Landroid/net/PcoTracker;
    invoke-virtual {v0}, Landroid/net/PcoTracker;->start()V

    .line 252
    return-object v0
.end method


# virtual methods
.method public NotificationAlertMsg(I)V
    .locals 16
    .param p1, "pco_value"    # I

    .prologue
    .line 602
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NotificationAlertMsg :: pco_value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 605
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 606
    .local v12, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 609
    .local v3, "builder":Landroid/app/Notification$Builder;
    new-instance v10, Landroid/content/Intent;

    const-string v13, "com.lge.android.pco.notification.click"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v10, "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v10, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 616
    .local v11, "notificationPending":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 617
    .local v1, "SettingUserMenuIntent":Landroid/content/Intent;
    const-string v13, "android.settings.USER_SETTINGS"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const/high16 v13, 0x10000000

    invoke-virtual {v1, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v1, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 622
    .local v2, "SettingUserMenuPending":Landroid/app/PendingIntent;
    sget v13, Lcom/lge/internal/R$drawable;->ic_stat_notify_adddata:I

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 624
    packed-switch p1, :pswitch_data_0

    .line 713
    :goto_0
    :pswitch_0
    return-void

    .line 628
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_title_pco_two:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_pco_two:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 633
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_pco_two:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v7

    .line 637
    .local v7, "nTwo":Landroid/app/Notification;
    const/4 v13, 0x0

    sget v14, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14, v7, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 642
    .end local v7    # "nTwo":Landroid/app/Notification;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_title:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/net/PcoTracker;->isOwnerUser()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 651
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 653
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_big_owner:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .line 656
    .local v6, "nThree":Landroid/app/Notification;
    const/4 v13, 0x0

    sget v14, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14, v6, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 660
    .end local v6    # "nThree":Landroid/app/Notification;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_text_small_secondary:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 663
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 664
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_big_secondary:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .line 667
    .restart local v6    # "nThree":Landroid/app/Notification;
    const/4 v13, 0x0

    sget v14, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14, v6, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 674
    .end local v6    # "nThree":Landroid/app/Notification;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_title:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 680
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.lge.android.pco.notification.delete"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v8, "nofificationDeleteIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v8, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 683
    .local v9, "nofificationDeletePending":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Landroid/net/PcoTracker;->isOwnerUser()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_ticker:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 686
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 687
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 689
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_big_owner:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 692
    .local v5, "nFive":Landroid/app/Notification;
    const/4 v13, 0x0

    sget v14, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14, v5, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 696
    .end local v5    # "nFive":Landroid/app/Notification;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v14, Lcom/lge/internal/R$string;->pco_noti_text_small_secondary:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 699
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 700
    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    sget v15, Lcom/lge/internal/R$string;->pco_noti_text_big_secondary:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 703
    .restart local v5    # "nFive":Landroid/app/Notification;
    const/4 v13, 0x0

    sget v14, Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v13, v14, v5, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public dataBlock(Z)V
    .locals 7
    .param p1, "block"    # Z

    .prologue
    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataBlock set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 552
    new-instance v3, Lcom/lge/systemservice/core/LGContext;

    iget-object v5, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 553
    .local v3, "lgContext":Lcom/lge/systemservice/core/LGContext;
    const-string/jumbo v5, "lgnetworkmanagementservice"

    invoke-virtual {v3, v5}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemservice/core/LGNetworkManager;

    .line 554
    .local v4, "lgNetworkMgr":Lcom/lge/systemservice/core/LGNetworkManager;
    const/4 v0, 0x0

    .line 558
    .local v0, "default_iface":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/net/PcoTracker;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 561
    .local v1, "default_linkProp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_0
    if-nez v4, :cond_1

    .line 566
    const-string/jumbo v5, "service is null, just return"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 596
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :goto_0
    return-void

    .line 571
    .restart local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :cond_1
    if-eqz p1, :cond_2

    .line 572
    const-string v5, "dataBlock Blocked"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 574
    const-string v5, "-F oem_out"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-A oem_out -o "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -j DROP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 576
    const-string v5, "-F oem_fwd"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-A oem_fwd -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -j DROP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 588
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "[getLinkPropertiesForType] RemoteException"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    const-string v5, "dataBlock Unblocked"

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 584
    const-string v5, "-F oem_out"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V

    .line 585
    const-string v5, "-F oem_fwd"

    invoke-virtual {v4, v5}, Lcom/lge/systemservice/core/LGNetworkManager;->setMdmIptables(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 592
    .end local v1    # "default_linkProp":Landroid/net/LinkProperties;
    :catch_1
    move-exception v2

    .line 593
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MdmInit] Fail to runDataCommand %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isOwnerUser()Z
    .locals 3

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "value":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const/4 v0, 0x1

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOwnerUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    .line 545
    return v0
.end method

.method public isRunningSetupWizard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v3, p0, Landroid/net/PcoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 521
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.android.LGSetupWizard"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 523
    const-string v3, "LGSetupWizard is alive"

    invoke-virtual {p0, v3}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    const/4 v2, 0x1

    .line 529
    :cond_0
    :goto_0
    return v2

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "cannot disable setup wizard"

    invoke-virtual {p0, v3}, Landroid/net/PcoTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
