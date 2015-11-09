.class public final Lcom/lge/systemservice/service/SmartCoverService;
.super Lcom/lge/systemservice/core/ISmartCoverManager$Stub;
.source "SmartCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final FOLDER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/folderstatus/state"

.field private static final FOLDER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/folderstatus"

.field private static final LASTCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/lastcover/state"

.field private static final MSG_ACCESSORY_COVER_STATE_CHANGED:I = 0x1

.field private static final MSG_ACCESSORY_COVER_TYPE_CHANGED:I = 0x2

.field private static final MSG_ACCESSORY_FOLDER_STATE_CHANGED:I = 0x4

.field private static final MSG_ACCESSORY_PEN_STATE_CHANGED:I = 0xb

.field private static final MSG_ACCESSORY_SUBCOVER_STATE_CHANGED:I = 0x15

.field private static final MSG_ACCESSORY_SUBCOVER_TYPE_CHANGED:I = 0x16

.field private static final PEN_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/pen_state/state"

.field private static final PEN_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/pen_state"

.field private static final SMARTCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/smartcover/state"

.field private static final SMARTCOVER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/smartcover"

.field private static final SUBCOVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/backcover/state"

.field private static final SUBCOVER_TYPE_PATH:Ljava/lang/String; = "/sys/class/switch/backcover/state"

.field private static final SUBCOVER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/backcover"

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_FILTERING_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/quick_cover_status"


# instance fields
.field private callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mContext:Landroid/content/Context;

.field private mCoverCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredCoverType:I

.field private mFolderCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderEventObserver:Landroid/os/UEventObserver;

.field private mFolderState:I

.field private final mHandler:Landroid/os/Handler;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private final mLockFolder:Ljava/lang/Object;

.field private final mLockPen:Ljava/lang/Object;

.field private final mLockSmartCover:Ljava/lang/Object;

.field private final mLockSubCover:Ljava/lang/Object;

.field private mPenCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPenEnabled:Z

.field private final mPenEventObserver:Landroid/os/UEventObserver;

.field private mPenEventState:I

.field private mServiceEnabled:Z

.field private mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

.field private mSmartCoverEnabled:Z

.field private final mSmartCoverEventObserver:Landroid/os/UEventObserver;

.field private mSmartCoverState:I

.field private mSmartCoverType:I

.field private mSubCoverCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/systemservice/core/ISmartCoverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSubCoverEnabled:Z

.field private final mSubCoverEventObserver:Landroid/os/UEventObserver;

.field private mSubCoverState:I

.field private mSubCoverType:I

.field private final mTouchFilteringFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/lge/systemservice/service/SmartCoverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Lcom/lge/systemservice/core/ISmartCoverManager$Stub;-><init>()V

    .line 85
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/input/lge_touch/quick_cover_status"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .line 104
    iput v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    .line 106
    iput v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    .line 107
    iput v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    .line 113
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .line 115
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    .line 116
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .line 118
    iput-boolean v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    .line 119
    iput-boolean v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    .line 120
    iput-boolean v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    .line 121
    iput-boolean v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    .line 123
    iput v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    .line 124
    iput v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    .line 125
    iput v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    .line 127
    iput-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 128
    iput-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 221
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$1;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    .line 284
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$2;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$2;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    .line 314
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$3;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$3;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    .line 365
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$4;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$4;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    .line 551
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$5;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$5;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    .line 883
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$6;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/service/SmartCoverService$6;-><init>(Lcom/lge/systemservice/service/SmartCoverService;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 131
    iput-object p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    .line 133
    new-instance v1, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    invoke-direct {v1, p0, v4}, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;-><init>(Lcom/lge/systemservice/service/SmartCoverService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    .line 134
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSettingsObserver:Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;

    invoke-virtual {v1}, Lcom/lge/systemservice/service/SmartCoverService$SettingsObserver;->observe()V

    .line 137
    :try_start_0
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 138
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V

    .line 145
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "can\'t get boost loader!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return v0
.end method

.method static synthetic access$2002(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->setUSBSound()V

    return-void
.end method

.method static synthetic access$2202(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent()V

    return-void
.end method

.method static synthetic access$2502(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/lge/systemservice/service/SmartCoverService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/lge/systemservice/service/SmartCoverService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->stopObserving()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lge/systemservice/service/SmartCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->startService()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/systemservice/service/SmartCoverService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/systemservice/service/SmartCoverService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    return v0
.end method

.method static synthetic access$702(Lcom/lge/systemservice/service/SmartCoverService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    return p1
.end method

.method static synthetic access$800(Lcom/lge/systemservice/service/SmartCoverService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/systemservice/service/SmartCoverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/systemservice/service/SmartCoverService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentFolderState()I
    .locals 9

    .prologue
    .line 251
    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/class/switch/folderstatus/state"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v5, "mFolderStateFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 253
    .local v6, "state":I
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 254
    const/16 v7, 0xa

    new-array v0, v7, [B

    .line 255
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 257
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 259
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 261
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 271
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 273
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 281
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :cond_1
    :goto_1
    return v6

    .line 262
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "len":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 267
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    if-eqz v2, :cond_1

    .line 273
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 274
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_3
    move-exception v1

    .line 275
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 268
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 269
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 271
    if-eqz v2, :cond_1

    .line 273
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 274
    :catch_5
    move-exception v1

    .line 275
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_2

    .line 273
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 276
    :cond_2
    :goto_5
    throw v7

    .line 274
    :catch_6
    move-exception v1

    .line 275
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 268
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 266
    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private getCurrentValueWithFile(Ljava/lang/String;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 378
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, "mFile":Ljava/io/File;
    move v6, p2

    .line 380
    .local v6, "state":I
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    const/16 v7, 0xa

    new-array v0, v7, [B

    .line 382
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 384
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 386
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 388
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 398
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 400
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 408
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    :cond_1
    :goto_1
    return v6

    .line 389
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 393
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "len":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 394
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 398
    if-eqz v2, :cond_1

    .line 400
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 401
    :catch_2
    move-exception v1

    .line 402
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 401
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "len":I
    :catch_3
    move-exception v1

    .line 402
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 395
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 398
    if-eqz v2, :cond_1

    .line 400
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 401
    :catch_5
    move-exception v1

    .line 402
    sget-object v7, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 398
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_2

    .line 400
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 403
    :cond_2
    :goto_5
    throw v7

    .line 401
    :catch_6
    move-exception v1

    .line 402
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 398
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 395
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 393
    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private final initFolder()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/folderstatus"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent()V

    .line 234
    return-void
.end method

.method private final initPen()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/pen_state"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent()V

    .line 298
    return-void
.end method

.method private final initSmartCover()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/smartcover"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent()V

    .line 184
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType()V

    .line 185
    return-void
.end method

.method private final initSubCover()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/backcover"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent()V

    .line 327
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType()V

    .line 328
    return-void
.end method

.method private isServiceEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mServiceEnabled:Z

    if-nez v1, :cond_0

    .line 743
    :goto_0
    return v0

    .line 726
    :cond_0
    const-string v1, "ro.factorytest"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 727
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On FTM test, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_1
    const-string v1, "sys.allautotest.run"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On AAT test, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    :cond_2
    const-string v1, "true"

    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    const-string v2, "gsm.lge.ota_ignoreKey"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    const-string v2, "persist.radio.ota_download"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 739
    :cond_3
    sget-object v1, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    const-string v2, "On OTA, skipping accessory broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCurrentStateAtRegisterLocked(ILcom/lge/systemservice/core/ISmartCoverCallback;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 514
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-eqz v2, :cond_0

    .line 517
    iget v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    .line 518
    .local v1, "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverState:I

    .line 538
    .local v0, "state":I
    :goto_1
    invoke-interface {p2, v1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onTypeChanged(I)V

    .line 539
    invoke-interface {p2, v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->onStateChanged(I)V

    goto :goto_0

    .line 519
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 520
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    if-eqz v2, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 524
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventState:I

    .restart local v0    # "state":I
    goto :goto_1

    .line 525
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 526
    const/4 v1, 0x0

    .line 527
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderState:I

    .restart local v0    # "state":I
    goto :goto_1

    .line 528
    .end local v0    # "state":I
    .end local v1    # "type":I
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 529
    iget-boolean v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-eqz v2, :cond_0

    .line 532
    iget v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    .line 533
    .restart local v1    # "type":I
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverState:I

    .restart local v0    # "state":I
    goto :goto_1
.end method

.method private setTouchFilteringLocked(I)V
    .locals 6
    .param p1, "coverState"    # I

    .prologue
    .line 747
    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    const/16 v3, 0x30

    .line 753
    .local v3, "state":C
    iget v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 754
    const/16 v3, 0x30

    .line 763
    :goto_1
    const/4 v1, 0x0

    .line 765
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lge/systemservice/service/SmartCoverService;->mTouchFilteringFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 770
    if-eqz v2, :cond_5

    .line 772
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 775
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 756
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 757
    const/16 v3, 0x31

    goto :goto_1

    .line 759
    :cond_3
    const/16 v3, 0x30

    goto :goto_1

    .line 773
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 775
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 767
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 768
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 770
    if-eqz v1, :cond_0

    .line 772
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 773
    :catch_2
    move-exception v0

    .line 774
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 770
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_4

    .line 772
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 775
    :cond_4
    :goto_4
    throw v4

    .line 773
    :catch_3
    move-exception v0

    .line 774
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 770
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 767
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_5
    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private setUSBSound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 934
    const-string v5, "aka"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 935
    const-string v5, "/sys/class/switch/backcover/state"

    invoke-direct {p0, v5, v7}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v4

    .line 936
    .local v4, "subCoverType":I
    const/4 v2, 0x0

    .line 937
    .local v2, "lastCoverType":I
    const-string v3, "/system/media/audio/ui/LG_Cable_Connect.ogg"

    .line 938
    .local v3, "normalSound":Ljava/lang/String;
    const-string v0, "/data/LGCover/ui/aka_cable.ogg"

    .line 939
    .local v0, "aksSound":Ljava/lang/String;
    const/4 v1, 0x1

    .line 941
    .local v1, "isExist":Z
    if-nez v4, :cond_0

    .line 942
    const-string v5, "/sys/class/switch/lastcover/state"

    invoke-direct {p0, v5, v7}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v2

    .line 943
    if-nez v2, :cond_2

    .line 944
    const/4 v1, 0x0

    .line 950
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 951
    iget-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 956
    .end local v0    # "aksSound":Ljava/lang/String;
    .end local v1    # "isExist":Z
    .end local v2    # "lastCoverType":I
    .end local v3    # "normalSound":Ljava/lang/String;
    .end local v4    # "subCoverType":I
    :cond_1
    :goto_1
    return-void

    .line 946
    .restart local v0    # "aksSound":Ljava/lang/String;
    .restart local v1    # "isExist":Z
    .restart local v2    # "lastCoverType":I
    .restart local v3    # "normalSound":Ljava/lang/String;
    .restart local v4    # "subCoverType":I
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    .line 953
    :cond_3
    iget-object v5, p0, Lcom/lge/systemservice/service/SmartCoverService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private startService()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initSmartCover()V

    .line 149
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initPen()V

    .line 150
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initFolder()V

    .line 151
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->initSubCover()V

    .line 152
    return-void
.end method

.method private stopObserving()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/switch/folderstatus/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_3
    iget-object v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    .line 178
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 179
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 165
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 173
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 178
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private updateFolderEvent()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentFolderState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateFolderEvent(I)V

    .line 238
    return-void
.end method

.method private updateFolderEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x4

    .line 241
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePenEvent()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "/sys/class/switch/pen_state/state"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updatePenEvent(I)V

    .line 302
    return-void
.end method

.method private updatePenEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0xb

    .line 305
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenEnabled:Z

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSmartCoverEvent()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "/sys/class/switch/smartcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverEvent(I)V

    .line 190
    return-void
.end method

.method private updateSmartCoverEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-direct {p0, p1}, Lcom/lge/systemservice/service/SmartCoverService;->setTouchFilteringLocked(I)V

    .line 197
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSmartCoverType()V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSmartCoverType(I)V

    .line 208
    return-void
.end method

.method private updateSmartCoverType(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x2

    .line 211
    iput p1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    .line 212
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverEnabled:Z

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mDesiredCoverType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSubCoverEvent()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "/sys/class/switch/backcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverEvent(I)V

    .line 332
    return-void
.end method

.method private updateSubCoverEvent(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x15

    .line 335
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-nez p1, :cond_2

    .line 340
    const/4 p1, 0x0

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 342
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 p1, 0x1

    goto :goto_1
.end method

.method private updateSubCoverType()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "/sys/class/switch/backcover/state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/systemservice/service/SmartCoverService;->getCurrentValueWithFile(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/systemservice/service/SmartCoverService;->updateSubCoverType(I)V

    .line 352
    return-void
.end method

.method private updateSubCoverType(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x16

    .line 355
    invoke-direct {p0}, Lcom/lge/systemservice/service/SmartCoverService;->isServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverEnabled:Z

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCoverType()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSmartCoverType:I

    return v0
.end method

.method public getSubCoverType()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverType:I

    return v0
.end method

.method public registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)Z
    .locals 12
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .param p2, "eventType"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", binder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "callbackInfo":Ljava/lang/String;
    sget-object v6, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "register callback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-ne p2, v5, :cond_0

    .line 423
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 435
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :goto_0
    monitor-enter v1

    .line 436
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 437
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "already added this callback, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :goto_1
    return v4

    .line 424
    :cond_0
    if-ne p2, v9, :cond_1

    .line 425
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 426
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_1
    if-ne p2, v11, :cond_2

    .line 427
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mFolderCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 428
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_2
    if-ne p2, v10, :cond_3

    .line 429
    iget-object v1, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    goto :goto_0

    .line 431
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_3
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Callback is wrong, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_4
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 442
    sget-object v5, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t add callback!, callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v1

    goto :goto_1

    .line 445
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :try_start_3
    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/systemservice/service/SmartCoverService;->callbackDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 455
    :goto_2
    if-ne p2, v5, :cond_6

    .line 456
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 467
    .local v3, "mLock":Ljava/lang/Object;
    :goto_3
    monitor-enter v3

    .line 469
    :try_start_4
    invoke-direct {p0, p2, p1}, Lcom/lge/systemservice/service/SmartCoverService;->notifyCurrentStateAtRegisterLocked(ILcom/lge/systemservice/core/ISmartCoverCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 473
    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 475
    goto :goto_1

    .line 449
    .end local v3    # "mLock":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 457
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    if-ne p2, v9, :cond_7

    .line 458
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .line 459
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_7
    if-ne p2, v11, :cond_8

    .line 460
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockFolder:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .line 461
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_8
    if-ne p2, v10, :cond_9

    .line 462
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_3

    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_9
    move v4, v5

    .line 464
    goto/16 :goto_1

    .line 470
    .restart local v3    # "mLock":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 471
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_6
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Catch RemoteException, callback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 473
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method public unRegisterCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;I)V
    .locals 7
    .param p1, "clbk"    # Lcom/lge/systemservice/core/ISmartCoverCallback;
    .param p2, "eventType"    # I

    .prologue
    .line 482
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 483
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mCoverCallbacks:Ljava/util/List;

    .line 484
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSmartCover:Ljava/lang/Object;

    .line 496
    .local v3, "mLock":Ljava/lang/Object;
    :goto_0
    monitor-enter v3

    .line 497
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/ISmartCoverCallback;

    .line 499
    .local v0, "item":Lcom/lge/systemservice/core/ISmartCoverCallback;
    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v0}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 500
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister SubCoverCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 504
    .end local v0    # "item":Lcom/lge/systemservice/core/ISmartCoverCallback;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 485
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 486
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mPenCallbacks:Ljava/util/List;

    .line 487
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockPen:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_0

    .line 488
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 489
    iget-object v2, p0, Lcom/lge/systemservice/service/SmartCoverService;->mSubCoverCallbacks:Ljava/util/List;

    .line 490
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    iget-object v3, p0, Lcom/lge/systemservice/service/SmartCoverService;->mLockSubCover:Ljava/lang/Object;

    .restart local v3    # "mLock":Ljava/lang/Object;
    goto :goto_0

    .line 492
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .end local v3    # "mLock":Ljava/lang/Object;
    :cond_3
    sget-object v4, Lcom/lge/systemservice/service/SmartCoverService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback is wrong, callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/lge/systemservice/core/ISmartCoverCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_2
    return-void

    .line 504
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lge/systemservice/core/ISmartCoverCallback;>;"
    .restart local v3    # "mLock":Ljava/lang/Object;
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
