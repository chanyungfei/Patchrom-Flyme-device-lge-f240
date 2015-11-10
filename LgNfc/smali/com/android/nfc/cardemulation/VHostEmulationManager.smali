.class public Lcom/android/nfc/cardemulation/VHostEmulationManager;
.super Lcom/android/nfc/cardemulation/LHostEmulationManager;
.source "VHostEmulationManager.java"


# static fields
.field static final AID_ISIS_ERR:[B

.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final TAG:Ljava/lang/String; = "VHostEmulationManager"

.field static isisTestDelim:I


# instance fields
.field BindedCategory:Ljava/lang/String;

.field ResolvedCategory:Ljava/lang/String;

.field mScreenState:I

.field final mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/VHostEmulationManager;->AID_ISIS_ERR:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x69t
        -0x67t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredAidCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/LHostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 48
    iput-object p2, p0, Lcom/android/nfc/cardemulation/VHostEmulationManager;->mVAidCache:Lcom/android/nfc/cardemulation/VRegisteredAidCache;

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/cardemulation/VHostEmulationManager;->mScreenState:I

    .line 53
    return-void
.end method


# virtual methods
.method public setScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/nfc/cardemulation/VHostEmulationManager;->mScreenState:I

    .line 58
    return-void
.end method
