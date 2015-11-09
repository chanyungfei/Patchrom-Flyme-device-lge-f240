.class Landroid/net/PcoTracker$PcoDefaultState;
.super Lcom/android/internal/util/State;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcoDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method private constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/PcoTracker;
    .param p2, "x1"    # Landroid/net/PcoTracker$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/net/PcoTracker$PcoDefaultState;-><init>(Landroid/net/PcoTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoDefaultState entered"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$2300(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoDefaultState Removed Notification"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$2400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$2200(Landroid/net/PcoTracker;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    # getter for: Landroid/net/PcoTracker;->GET_DATA_NOTI_ID:I
    invoke-static {}, Landroid/net/PcoTracker;->access$2100()I

    move-result v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 264
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoDefaultState setRestrictBackground(false)"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$2500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$2600(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 266
    # setter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {v4}, Landroid/net/PcoTracker;->access$1302(Z)Z

    .line 268
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/PcoTracker$PcoDefaultState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$2700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 275
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoProfileNum"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :pswitch_0
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PcoDefaultState : pcoProfileNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "pcoProfileNum"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pcoValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "pcoValue"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$4600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 277
    :pswitch_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 279
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo PcoFiveState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$2800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$2900(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3000(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 321
    goto :goto_0

    .line 284
    :pswitch_2
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "Staying PcoDefaultState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_1
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo mPcoOneState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoOneState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$3300(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3400(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 293
    :cond_2
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 295
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo mPcoTwoState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoTwoState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$3600(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 297
    :cond_3
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 299
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo mPcoThreeState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$3800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoThreeState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$3900(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4000(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 302
    :cond_4
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 304
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo mPcoFourState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4100(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoFourState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$4200(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4300(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 307
    :cond_5
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 309
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoDefaultState transitionTo PcoFiveState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoDefaultState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoFiveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$2900(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4500(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
