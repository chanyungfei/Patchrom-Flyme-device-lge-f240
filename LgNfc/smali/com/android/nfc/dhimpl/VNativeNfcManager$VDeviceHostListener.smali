.class public interface abstract Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;
.super Ljava/lang/Object;
.source "VNativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/VNativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VDeviceHostListener"
.end annotation


# virtual methods
.method public abstract onCardEmulationAidSelected([B)V
.end method

.method public abstract onCardEmulationDeselected()V
.end method

.method public abstract onConnectivityEvent(I)V
.end method

.method public abstract onHostCardEmulationActivated()V
.end method

.method public abstract onHostCardEmulationData([B)V
.end method

.method public abstract onHostCardEmulationDeactivated()V
.end method

.method public abstract onRemoteFieldActivated()V
.end method

.method public abstract onRemoteFieldDeactivated()V
.end method

.method public abstract onSeApduReceived([B)V
.end method

.method public abstract onSeEmvCardRemoval()V
.end method

.method public abstract onSeListenActivated()V
.end method

.method public abstract onSeListenDeactivated()V
.end method

.method public abstract onSeMifareAccess([B)V
.end method
