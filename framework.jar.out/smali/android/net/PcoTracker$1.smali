.class Landroid/net/PcoTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x5

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.lge.android.LTE_PCO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "com.lge.android.LTE_PCO"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 159
    const-string v6, "extra_pco_profile_num"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "pcoProfileNum":I
    const-string v6, "extra_pco_value"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, "pcoValue":I
    packed-switch v2, :pswitch_data_0

    .line 177
    :pswitch_0
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not handle except IMS, INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1000(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 245
    .end local v2    # "pcoProfileNum":I
    .end local v3    # "pcoValue":I
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v2    # "pcoProfileNum":I
    .restart local v3    # "pcoValue":I
    :pswitch_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_ims_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : last_ims_pco = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "last_ims_pco"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 182
    :goto_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "pcoProfileNum"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "pcoValue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PcoDefaultState : pcoProfileNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "pcoProfileNum"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pcoValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "pcoValue"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 186
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6}, Landroid/net/PcoTracker;->isRunningSetupWizard()Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    iget-object v7, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v7, v11}, Landroid/net/PcoTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/PcoTracker;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 171
    :pswitch_2
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver : last_internet_pco = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v8

    const-string/jumbo v9, "last_internet_pco"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    .end local v2    # "pcoProfileNum":I
    .end local v3    # "pcoValue":I
    :cond_1
    const-string v6, "com.lge.android.pco.notification.click"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 192
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_3

    .line 194
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "PcoThreeState :: Enable internet PDN interface "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v11}, Landroid/net/PcoTracker;->dataBlock(Z)V

    .line 207
    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_LTE_PCO_NOTIFICATION_CLICK :: radio_off_flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 208
    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "https://quickaccess.verizonwireless.com/bbportal/oem/start.do?"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v1, "notiIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1700(Landroid/net/PcoTracker;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "notiIntent":Landroid/content/Intent;
    :cond_3
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_4

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 199
    :cond_4
    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_LTE_PCO_NOTIFICATION_CLICK :: the cellular radio on and radio_off_flag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1500(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    goto/16 :goto_2

    .line 215
    :cond_5
    const-string v6, "com.lge.android.pco.notification.delete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 217
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_6

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 219
    :cond_6
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    const-string v7, "ACTION_LTE_PCO_NOTIFICATION_DELETE :: NotificationAlertMsg(5) "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v10}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    .line 221
    # setter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {v9}, Landroid/net/PcoTracker;->access$1302(Z)Z

    .line 222
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_LTE_PCO_NOTIFICATION_CLICK :: the cellular radio off and radio_off_flag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$1900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$1500(Landroid/net/PcoTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    goto/16 :goto_0

    .line 226
    :cond_7
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    :cond_8
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 229
    .local v4, "userSentBackground":Z
    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 230
    .local v5, "userSentForeground":Z
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switch received. User sent background = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";User sent foreground = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/PcoTracker;->access$2000(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/net/PcoTracker;->access$2200(Landroid/net/PcoTracker;)Landroid/app/NotificationManager;

    move-result-object v6

    const/4 v7, 0x0

    # getter for: Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I
    invoke-static {}, Landroid/net/PcoTracker;->access$2100()I

    move-result v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 234
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_9

    .line 236
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v12}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 238
    :cond_9
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_internet_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_a

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v6

    const-string/jumbo v7, "last_ims_pco"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 240
    :cond_a
    iget-object v6, p0, Landroid/net/PcoTracker$1;->this$0:Landroid/net/PcoTracker;

    invoke-virtual {v6, v10}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
