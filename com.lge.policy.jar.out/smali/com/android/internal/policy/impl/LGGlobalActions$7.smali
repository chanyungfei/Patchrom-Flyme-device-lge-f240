.class Lcom/android/internal/policy/impl/LGGlobalActions$7;
.super Landroid/content/BroadcastReceiver;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1184
    :cond_0
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1185
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "globalactions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1186
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1188
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1189
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1190
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1602(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1219
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1192
    :cond_3
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1195
    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1197
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$302(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 1198
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$400(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V

    goto :goto_0

    .line 1200
    :cond_4
    const-string v3, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1201
    const-string v3, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1203
    .local v1, "coverState":I
    if-ne v1, v4, :cond_2

    .line 1204
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1205
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1206
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1602(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1210
    .end local v1    # "coverState":I
    :cond_5
    const-string v3, "com.lge.mdm.intent.action.AIRPLANE_MODE_ON_POLICY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1211
    const-string v3, "LGGlobalActions"

    const-string v4, "LGMDM Airplane Mode policy changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1213
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1214
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1602(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1216
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
