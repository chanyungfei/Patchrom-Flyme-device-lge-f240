.class public Lcom/android/nfc/handover/LConfirmConnectActivity;
.super Lcom/android/nfc/handover/ConfirmConnectActivity;
.source "LConfirmConnectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected newAlertDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
