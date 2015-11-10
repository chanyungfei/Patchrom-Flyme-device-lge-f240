.class public Lcom/android/nfc/LNfcBackupAgent;
.super Lcom/android/nfc/NfcBackupAgent;
.source "LNfcBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/nfc/NfcBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    invoke-super {p0}, Lcom/android/nfc/NfcBackupAgent;->onCreate()V

    .line 12
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "LNfcPopupPreferencePrefs"

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 14
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/LNfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 16
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    .end local v0    # "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "NfcServiceCEPrefs"

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 17
    .restart local v0    # "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/LNfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 19
    return-void
.end method
