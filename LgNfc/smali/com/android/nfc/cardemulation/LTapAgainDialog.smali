.class public Lcom/android/nfc/cardemulation/LTapAgainDialog;
.super Lcom/android/nfc/cardemulation/TapAgainDialog;
.source "LTapAgainDialog.java"


# static fields
.field static final TAG:Ljava/lang/String; = "LTapAgainDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mClosedOnRequest:Z

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onDestroy()V

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-super {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onStop()V

    .line 41
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mClosedOnRequest:Z

    .line 42
    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    .line 43
    return-void
.end method
