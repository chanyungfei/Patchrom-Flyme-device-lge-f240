.class public Lcom/android/nfc/handover/LBluetoothOppHandover;
.super Lcom/android/nfc/handover/BluetoothOppHandover;
.source "LBluetoothOppHandover.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "remoteActivating"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/handover/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public getMimeTypeForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/nfc/handover/LMimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
