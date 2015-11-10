.class public Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;
.super Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
.source "VNativeNfcSecureElement.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method private doNativeGetAtr(I)[B
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method private doNativeResetSecureElement(I)Z
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public doGetAtr()[B
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public doGetAtr(I)[B
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doNativeGetAtr(I)[B

    move-result-object v0

    return-object v0
.end method

.method public doReset(I)Z
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doNativeResetSecureElement(I)Z

    move-result v0

    return v0
.end method

.method public openSecureElementConnectionForTTIA(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "se_wired"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v0, p0, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/VNativeNfcSecureElement;->doNativeOpenSecureElementConnection()I

    move-result v0

    return v0
.end method

.method public setSeStateForTTIA(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
