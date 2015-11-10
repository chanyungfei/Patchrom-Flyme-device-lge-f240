.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcConfigure:Lcom/lge/nfcconfig/NfcConfigure;

.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    const/4 v4, 0x0

    .line 55
    .local v4, "isMainProcess":Z
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 59
    .local v5, "processes":Ljava/util/List;
    if-nez v5, :cond_1

    .line 60
    const-string v6, "NfcApplication"

    const-string v7, "Invalid Sequence : processes is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 66
    .local v3, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v1, v6

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 69
    const-string v6, "com.android.nfc"

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 73
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    .line 74
    invoke-static {p0}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/NfcApplication;->mNfcConfigure:Lcom/lge/nfcconfig/NfcConfigure;

    .line 75
    iget-object v6, p0, Lcom/android/nfc/NfcApplication;->mNfcConfigure:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v6}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance(Ljava/util/Map;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    move-result-object v2

    .line 76
    .local v2, "ceconfig":Lcom/android/nfc/cardemulation/LCardEmulationConfig;
    new-instance v6, Lcom/android/nfc/VNfcService;

    invoke-direct {v6, p0}, Lcom/android/nfc/VNfcService;-><init>(Landroid/app/Application;)V

    iput-object v6, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 77
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    goto :goto_0
.end method
