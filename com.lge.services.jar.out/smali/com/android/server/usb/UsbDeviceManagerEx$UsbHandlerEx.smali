.class final Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandlerEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;
    }
.end annotation


# instance fields
.field mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManagerEx;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx;Landroid/os/Looper;)V
    .locals 6
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    .line 268
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$1;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 938
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;Lcom/android/server/usb/UsbDeviceManagerEx$1;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    .line 233
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v3, "filter_setupWizard":Landroid/content/IntentFilter;
    const-string v4, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.lge.android.intent.AUTORUN_ENABLE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v2, "filter_guestMode":Landroid/content/IntentFilter;
    const-string v4, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v4, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 253
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v1, "filter_MDM":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lge/cappuccino/IMdm;->addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V

    .line 256
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mMDMIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    .end local v1    # "filter_MDM":Landroid/content/IntentFilter;
    :cond_0
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v4}, Landroid/os/UEventObserver;->stopObserving()V

    .line 260
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 261
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 262
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 263
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private bootcomplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 785
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    .line 786
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->nativeGetAudioMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    .line 800
    :cond_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 801
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 802
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 803
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 804
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    .line 816
    :goto_0
    return-void

    .line 811
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 812
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 813
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 814
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto :goto_0
.end method

.method private getCommonUsbNotificationInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, "id":I
    const/4 v2, 0x0

    .line 1011
    .local v2, "id_title":I
    const/4 v1, 0x0

    .line 1013
    .local v1, "id_message":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mtp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1014
    const v0, 0x1040521

    .line 1015
    const v1, 0x1040521

    .line 1080
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1081
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1082
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1083
    return-void

    .line 1016
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_2

    .line 1018
    sget v0, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_title:I

    .line 1019
    sget v2, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_id_title:I

    .line 1020
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto :goto_0

    .line 1022
    :cond_2
    const v0, 0x1040522

    .line 1023
    const v1, 0x1040522

    goto :goto_0

    .line 1025
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mass_storage"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1026
    const v0, 0x1040524

    .line 1027
    const v1, 0x1040524

    goto :goto_0

    .line 1028
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "accessory"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1029
    const v0, 0x1040525

    .line 1030
    const v1, 0x1040525

    goto :goto_0

    .line 1033
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "cdrom_storage"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1034
    const v0, 0x1040524

    .line 1035
    const v1, 0x1040524

    goto :goto_0

    .line 1036
    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "pc_suite"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1037
    sget v0, Lcom/lge/internal/R$string;->sp_lg_software_title_NORMAL:I

    .line 1038
    sget v1, Lcom/lge/internal/R$string;->sp_lg_software_NORMAL:I

    goto :goto_0

    .line 1039
    :cond_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v4, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1040
    sget v0, Lcom/lge/internal/R$string;->sp_usb_tethering_title_NORMAL:I

    .line 1041
    sget v1, Lcom/lge/internal/R$string;->sp_usb_tethering_NORMAL:I

    goto :goto_0

    .line 1042
    :cond_8
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1043
    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_9

    .line 1044
    sget v0, Lcom/lge/internal/R$string;->usb_pc_charge_notification_title:I

    .line 1045
    sget v2, Lcom/lge/internal/R$string;->usb_pc_charge_notification_id_title:I

    .line 1046
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1048
    :cond_9
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 1049
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 1051
    :cond_a
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mtp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1052
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 1053
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0

    .line 1054
    :cond_b
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1055
    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_c

    .line 1056
    sget v0, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_title:I

    .line 1057
    sget v2, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_id_title:I

    .line 1058
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1060
    :cond_c
    sget v0, Lcom/lge/internal/R$string;->usb_ptp_notification_title:I

    .line 1061
    sget v1, Lcom/lge/internal/R$string;->usb_ptp_title:I

    goto/16 :goto_0

    .line 1064
    :cond_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "auto_conf"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_e

    .line 1066
    sget v0, Lcom/lge/internal/R$string;->usb_pc_mtp_notification_title:I

    .line 1067
    sget v2, Lcom/lge/internal/R$string;->usb_pc_mtp_notification_id_title:I

    .line 1068
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1070
    :cond_e
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 1071
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0
.end method

.method private getOperatorUsbNotificationInfo()V
    .locals 5

    .prologue
    .line 942
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 943
    .local v0, "id":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 944
    .local v2, "id_title":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 946
    .local v1, "id_message":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    :cond_0
    const v0, 0x1040522

    .line 949
    const v1, 0x1040522

    .line 1003
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1004
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1005
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1006
    return-void

    .line 951
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "pc_suite"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 952
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 953
    sget v0, Lcom/lge/internal/R$string;->sp_internet_connection_NORMAL:I

    .line 954
    sget v1, Lcom/lge/internal/R$string;->sp_connection_modem_NORMAL:I

    .line 956
    :cond_3
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    sget v0, Lcom/lge/internal/R$string;->sp_pc_software_title_NORMAL:I

    .line 958
    sget v1, Lcom/lge/internal/R$string;->sp_pc_software_NORMAL:I

    goto :goto_0

    .line 960
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v4, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 961
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 962
    sget v0, Lcom/lge/internal/R$string;->sp_internet_connection_NORMAL:I

    .line 963
    sget v1, Lcom/lge/internal/R$string;->sp_connection_ethernet_NORMAL:I

    goto :goto_0

    .line 965
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 966
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 967
    :cond_6
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 968
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto :goto_0

    .line 970
    :cond_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 971
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 972
    :cond_8
    sget v0, Lcom/lge/internal/R$string;->usb_ptp_notification_title:I

    .line 973
    sget v1, Lcom/lge/internal/R$string;->usb_ptp_title:I

    goto/16 :goto_0

    .line 976
    :cond_9
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "auto_conf"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 977
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    :cond_a
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 979
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0

    .line 982
    :cond_b
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 983
    :cond_c
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable_diag"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 984
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 985
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 986
    :cond_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable_mtp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 987
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 988
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 989
    :cond_e
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ecm,diag"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 990
    sget v0, Lcom/lge/internal/R$string;->sp_usb_tethering_title_NORMAL:I

    .line 991
    sget v1, Lcom/lge/internal/R$string;->sp_usb_tethering_NORMAL:I

    goto/16 :goto_0

    .line 992
    :cond_f
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 993
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 994
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0
.end method

.method private getUsbNotificationInfo()V
    .locals 2

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getCommonUsbNotificationInfo()V

    .line 1087
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getOperatorUsbNotificationInfo()V

    .line 1093
    :cond_1
    return-void
.end method

.method private playUsbNotificationSound(Landroid/app/Notification;)V
    .locals 8
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 1096
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "factory_property":Ljava/lang/String;
    const-string v5, "sys.allautotest.run"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "aat_property":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_0

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1100
    :cond_0
    const/4 v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1101
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManagerEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1102
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1103
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 1105
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1106
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1107
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1108
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1109
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1119
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1120
    const/4 v3, 0x0

    .line 1127
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1115
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v4    # "soundPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1110
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 1111
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1114
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1120
    const/4 v3, 0x0

    .line 1121
    goto :goto_1

    .line 1115
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1113
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    .line 1114
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1119
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1120
    const/4 v3, 0x0

    throw v5

    .line 1115
    :catch_3
    move-exception v1

    .line 1117
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1124
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1125
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1
.end method

.method private processUpdateState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 730
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 731
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "accessory"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateCurrentAccessory()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateCurrentNcm()V

    .line 745
    :cond_1
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-nez v0, :cond_6

    .line 746
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 750
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 778
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v0, :cond_3

    .line 779
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    .line 782
    :cond_3
    return-void

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    :cond_5
    const-string v0, "persist.sys.usb.config"

    const-string v1, "adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 760
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    goto :goto_0

    .line 764
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 767
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 770
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabledFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityForUSB()V
    .locals 5

    .prologue
    .line 919
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 920
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 923
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040511

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 926
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 378
    move-object v0, p1

    .line 380
    .local v0, "functions":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbDebuggingManagerAdbEnabled() functions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    if-nez v0, :cond_1

    .line 414
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 386
    sget v1, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v1, v5, :cond_4

    .line 387
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "charge_only,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 390
    :cond_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 393
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",adb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pc_suite,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    :cond_5
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 396
    :cond_6
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 400
    :cond_7
    sget v1, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v1, v5, :cond_a

    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 401
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "charge_only,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 402
    :cond_8
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 404
    :cond_9
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 407
    :cond_a
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 408
    :cond_b
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 410
    :cond_c
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updateCurrentNcm()V
    .locals 3

    .prologue
    .line 653
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v1, :cond_1

    .line 654
    sget-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 655
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "exited USB ncm mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.hardware.usb.ncm.NCM_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    const-string v1, "ncm_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 820
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 822
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    .line 823
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_2

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    .line 825
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 829
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v4, :cond_3

    .line 830
    const-string v4, "MDM"

    const-string v5, "MSG_UPDATE_STATE Message : MDM Block"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 832
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 822
    goto :goto_1

    :cond_2
    move v5, v6

    .line 823
    goto :goto_2

    .line 840
    :cond_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 841
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 842
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 844
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v4, :cond_5

    .line 845
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "MSG_UPDATE_STATE Message : MDM Block"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 848
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto :goto_0

    .line 857
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->processUpdateState()V

    goto :goto_0

    .line 860
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_6

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setAdbEnabled(Z)V

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_3

    .line 863
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 864
    .local v0, "functions":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_7

    move v1, v5

    .line 865
    .local v1, "makeDefault":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v1    # "makeDefault":Z
    :cond_7
    move v1, v6

    .line 864
    goto :goto_4

    .line 869
    .end local v0    # "functions":Ljava/lang/String;
    :pswitch_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 870
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 871
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 872
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto/16 :goto_0

    .line 878
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 879
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 881
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto/16 :goto_0

    .line 884
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->bootcomplete()V

    goto/16 :goto_0

    .line 887
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 889
    .local v3, "userManager":Landroid/os/UserManager;
    const-string v4, "no_usb_file_transfer"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 890
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "Switched to user with DISALLOW_USB_FILE_TRANSFER restriction; disabling USB."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v4, "none"

    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    .line 893
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    goto/16 :goto_0

    .line 897
    :cond_a
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "mtp"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "ptp"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "mtp_only"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "ptp_only"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "auto_conf"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v2, v5

    .line 904
    .local v2, "mtpActive":Z
    :goto_5
    if-eqz v2, :cond_c

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    const/16 v7, -0x2710

    if-eq v4, v7, :cond_c

    .line 905
    const-string v4, "sys.user_switch_cha.disabled"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 906
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "Current user switched; Change connection mode to charge_only"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const-string v6, "charge_only,adb"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 910
    :cond_c
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    goto/16 :goto_0

    .end local v2    # "mtpActive":Z
    :cond_d
    move v2, v6

    .line 897
    goto :goto_5

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected setAdbEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 419
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    const-string v0, "MDM"

    const-string v1, "[MDM] block set ADB & change ADB_ENABLED to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    :cond_3
    const-string v0, "persist.sys.usb.config"

    const-string v1, "adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentFunctions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eq p1, v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean p1, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    .line 447
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 454
    :goto_1
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 456
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 457
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_1

    .line 468
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 470
    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 479
    sget-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 480
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setEnabledFunctions "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " makeDefault: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAtsStarted:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 484
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v10, "ATS Mode Enabled for Developing"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 485
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 649
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 493
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    :cond_3
    const/4 v6, 0x0

    .line 499
    .local v6, "sprintMdmSet":Z
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 500
    const/4 v9, 0x6

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "charge_only"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "usb_enable_diag"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "ecm"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "ecm,diag"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "rndis"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "rndis,diag"

    aput-object v10, v8, v9

    .line 506
    .local v8, "usbMode":[Ljava/lang/String;
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 509
    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/platform/lg_diag_cmd/diag_enable"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "diag_enable":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 511
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 512
    aget-object v1, v8, v4

    .line 513
    .local v1, "disable_mode":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    aget-object v3, v8, v9

    .line 515
    .local v3, "enable_mode":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_8

    .line 516
    move-object p1, v3

    .line 529
    .end local v0    # "diag_enable":Ljava/lang/String;
    .end local v1    # "disable_mode":Ljava/lang/String;
    .end local v3    # "enable_mode":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    :goto_2
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 530
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbPortRestriced:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1100(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v9, v10, :cond_a

    .line 531
    const/4 v6, 0x1

    .line 532
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v10

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbPortRestriced:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1102(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 546
    .end local v8    # "usbMode":[Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->needsOemUsbOverride()Z

    move-result v9

    if-nez v9, :cond_f

    .line 548
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v9, :cond_b

    .line 549
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    :goto_4
    const-string v9, "service.plushome.currenthome"

    const-string v10, "none"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "kids"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 555
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 559
    :cond_6
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "cdrom_storage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "cdrom_storage,adb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v6, :cond_1

    .line 568
    :cond_7
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 569
    const-string v9, "none"

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 570
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "Failed to disable USB"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 511
    .restart local v0    # "diag_enable":Ljava/lang/String;
    .restart local v1    # "disable_mode":Ljava/lang/String;
    .restart local v3    # "enable_mode":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v8    # "usbMode":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 521
    .end local v0    # "diag_enable":Ljava/lang/String;
    .end local v1    # "disable_mode":Ljava/lang/String;
    .end local v3    # "enable_mode":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 526
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "getInstance Error "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 534
    :cond_a
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbDriveRestricted:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1200(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v9, v10, :cond_5

    .line 535
    const/4 v6, 0x1

    .line 536
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v10

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbDriveRestricted:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1202(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    goto/16 :goto_3

    .line 551
    .end local v8    # "usbMode":[Ljava/lang/String;
    :cond_b
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 577
    :cond_c
    const-string v9, "persist.sys.usb.config"

    invoke-static {v9, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->waitForState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 579
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 580
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    :cond_d
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to switch persistent USB config to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 588
    const-string v9, "MDM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM block adb function"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "mdmFunctions":Ljava/lang/String;
    const-string v9, "persist.sys.usb.config"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    .end local v5    # "mdmFunctions":Ljava/lang/String;
    :cond_e
    const-string v9, "persist.sys.usb.config"

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_f
    if-nez p1, :cond_10

    .line 602
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 606
    :cond_10
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v9, p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 608
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v9, :cond_12

    .line 609
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 614
    :goto_5
    const-string v9, "service.plushome.currenthome"

    const-string v10, "none"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "kids"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 615
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 619
    :cond_11
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 620
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 621
    const-string v9, "none"

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 622
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "Failed to disable USB"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 611
    :cond_12
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 627
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 628
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    goto/16 :goto_0

    .line 630
    :cond_14
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to switch USB config to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 636
    const-string v9, "MDM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM block adb function"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    .restart local v5    # "mdmFunctions":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 645
    .end local v5    # "mdmFunctions":Ljava/lang/String;
    :cond_15
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected updateAdbNotification()V
    .locals 12

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    const v6, 0x104052b

    .line 1237
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v0, :cond_9

    .line 1238
    const-string v0, "0"

    const-string v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 1240
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "auto_conf"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1243
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1245
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1251
    :cond_4
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "pc_suite"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1254
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1256
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1261
    :cond_7
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charge_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1264
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1266
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1272
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-nez v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1274
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x104052b

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1275
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x104052c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1278
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1279
    .local v8, "notification":Landroid/app/Notification;
    const v0, 0x108066b

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1280
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Landroid/app/Notification;->when:J

    .line 1281
    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1282
    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1283
    const/4 v0, 0x0

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 1284
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1285
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->vibrate:[J

    .line 1286
    const/4 v0, -0x1

    iput v0, v8, Landroid/app/Notification;->priority:I

    .line 1288
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1292
    .local v2, "intent":Landroid/content/Intent;
    const v0, 0x10808000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1294
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1296
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1297
    const/4 v0, 0x1

    iput v0, v8, Landroid/app/Notification;->visibility:I

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1299
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x104052b

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1302
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1304
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x104052b

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method protected updateAudioSourceFunction()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 697
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "audio_source"

    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    if-eqz v9, :cond_2

    move v3, v7

    .line 701
    .local v3, "enabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAudioSourceEnabled:Z

    if-eq v3, v9, :cond_1

    .line 703
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 705
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 706
    const-string v9, "state"

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const/4 v5, 0x0

    .line 708
    .local v5, "scanner":Ljava/util/Scanner;
    if-eqz v3, :cond_0

    .line 710
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v6, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 712
    .local v0, "card":I
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 713
    .local v1, "device":I
    const-string v7, "card"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const-string v7, "device"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 718
    if-eqz v6, :cond_5

    .line 719
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    move-object v5, v6

    .line 723
    .end local v0    # "card":I
    .end local v1    # "device":I
    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 724
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean v3, v7, Lcom/android/server/usb/UsbDeviceManagerEx;->mAudioSourceEnabled:Z

    .line 726
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_1
    return-void

    .end local v3    # "enabled":Z
    :cond_2
    move v3, v8

    .line 697
    goto :goto_0

    .restart local v3    # "enabled":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move v7, v8

    .line 706
    goto :goto_1

    .line 715
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 716
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_2
    sget-object v7, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "could not open audio source PCM file"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    if-eqz v5, :cond_0

    .line 719
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 718
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_4

    .line 719
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_4
    throw v7

    .line 718
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_4

    .line 715
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :cond_5
    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 333
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "connected":I
    const/4 v0, 0x0

    .line 347
    .local v0, "configured":I
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->removeMessages(I)V

    .line 348
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 349
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 350
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 352
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, 0x3e8

    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    return-void

    .line 336
    :cond_0
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    const/4 v1, 0x1

    .line 338
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .restart local v0    # "configured":I
    goto :goto_0

    .line 339
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_1
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 341
    const/4 v1, 0x1

    .line 342
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .restart local v0    # "configured":I
    goto :goto_0

    .line 344
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 352
    .restart local v0    # "configured":I
    .restart local v1    # "connected":I
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method protected updateUsbNotification()V
    .locals 14

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mUseUsbNotification:Z

    if-nez v0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    const/4 v6, 0x0

    .line 1136
    .local v6, "id":I
    const/4 v8, 0x0

    .line 1137
    .local v8, "id_title":I
    const/4 v7, 0x0

    .line 1138
    .local v7, "id_message":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->reset()V

    .line 1139
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1141
    .local v12, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    if-eqz v0, :cond_2

    .line 1143
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getUsbNotificationInfo()V

    .line 1145
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v6, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1146
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v8, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1147
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v7, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1149
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->sendAccessibilityForUSB()V

    .line 1153
    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    if-eq v6, v0, :cond_0

    .line 1155
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    .line 1160
    :cond_3
    if-eqz v6, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charge_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "auto_conf"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1174
    :cond_4
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1175
    :cond_5
    const v0, 0x1040515

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1182
    .local v13, "title":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1185
    .local v9, "message":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 1186
    .local v10, "notification":Landroid/app/Notification;
    const v0, 0x108068a

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 1187
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 1188
    const/4 v0, 0x2

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1191
    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1195
    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->playUsbNotificationSound(Landroid/app/Notification;)V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/app/Notification;->vibrate:[J

    .line 1201
    const/4 v0, -0x1

    iput v0, v10, Landroid/app/Notification;->priority:I

    .line 1204
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ecm,diag"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1207
    :cond_6
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->COUNTRY:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1209
    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.UsbSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1220
    .local v2, "intent":Landroid/content/Intent;
    :goto_2
    const v0, 0x10808000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1222
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1224
    .local v11, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v13, v9, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1225
    const/4 v0, 0x1

    iput v0, v10, Landroid/app/Notification;->visibility:I

    .line 1226
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v10, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1228
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    goto/16 :goto_0

    .line 1177
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "message":Ljava/lang/CharSequence;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/CharSequence;
    :goto_3
    goto/16 :goto_1

    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_a
    const v0, 0x1040515

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_3

    .line 1180
    :cond_b
    const v0, 0x1040515

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1210
    .restart local v9    # "message":Ljava/lang/CharSequence;
    .restart local v10    # "notification":Landroid/app/Notification;
    :cond_c
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.Settings$TetherNetworkSettingsActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1216
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.UsbSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method protected updateUsbState()V
    .locals 6

    .prologue
    .line 669
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 675
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 677
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v3, :cond_1

    const-string v3, "service.plushome.currenthome"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kids"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 683
    const-string v3, "charge_only"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 693
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 689
    :cond_1
    sget-boolean v3, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 690
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method protected waitForState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 362
    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v1, :cond_0

    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    .line 366
    :cond_0
    const/4 v1, 0x1

    .line 372
    :goto_1
    return v1

    .line 369
    :cond_1
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v1, 0x0

    goto :goto_1
.end method
