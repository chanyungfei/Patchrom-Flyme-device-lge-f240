.class public Lcom/android/nfc/cardemulation/LPreferredServices;
.super Lcom/android/nfc/cardemulation/PreferredServices;
.source "LPreferredServices.java"


# static fields
.field static final TAG:Ljava/lang/String; = "LPreferredCardEmulationServices"


# instance fields
.field mCEPrefs:Landroid/content/SharedPreferences;

.field mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;
    .param p3, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    .line 32
    return-void
.end method


# virtual methods
.method public setInitHCEPopupValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mContext:Landroid/content/Context;

    const-string v1, "NfcServiceCEPrefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 38
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hcepopup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hceconfirm"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LPreferredServices;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method
