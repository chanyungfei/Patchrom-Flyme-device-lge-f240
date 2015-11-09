.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTree.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20MobileManageTree"

.field private static VDBG:Z

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->DBG:Z

    .line 58
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->VDBG:Z

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->mVerboseLoggingLevel:I

    return-void
.end method
