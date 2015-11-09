.class Lcom/android/server/usb/UsbDeviceManagerEx$2;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManagerEx;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 138
    sget-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 139
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const-string v5, "USB_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "state":Ljava/lang/String;
    const-string v5, "ACCESSORY"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "accessory":Ljava/lang/String;
    const-string v5, "AUTORUN"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "autorun":Ljava/lang/String;
    const-string v5, "USB_DRV"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "usb_drv":Ljava/lang/String;
    const-string v5, "NCM"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "ncm":Ljava/lang/String;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    const-string v5, "DISCONNECTED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 152
    sget-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 153
    const-string v5, "MDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUEventObserverEx : USB MDM Block. USB_STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ACCESSORY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    if-eqz v3, :cond_2

    .line 157
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManagerEx;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 187
    :cond_2
    :goto_0
    return-void

    .line 162
    :cond_3
    if-eqz v3, :cond_4

    .line 163
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManagerEx;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v5, "START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 165
    sget-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 166
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "got accessory start"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->startAccessoryMode()V

    goto :goto_0

    .line 169
    :cond_6
    if-eqz v1, :cond_7

    .line 170
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # invokes: Lcom/android/server/usb/UsbDeviceManagerEx;->sendAutorunIntent(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$000(Lcom/android/server/usb/UsbDeviceManagerEx;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_7
    if-eqz v4, :cond_8

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 172
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # invokes: Lcom/android/server/usb/UsbDeviceManagerEx;->sendUsbDriverInstalledIntent(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$200(Lcom/android/server/usb/UsbDeviceManagerEx;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_8
    const-string v5, "START"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$300(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 175
    sget-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v5, :cond_9

    .line 176
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "got ncm start"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_9
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 179
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$2;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # invokes: Lcom/android/server/usb/UsbDeviceManagerEx;->startNcmMode()V
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$400(Lcom/android/server/usb/UsbDeviceManagerEx;)V

    goto :goto_0

    .line 181
    :cond_a
    sget-boolean v5, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 182
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "ignore NCM uevent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
