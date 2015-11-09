.class Landroid/net/PcoTracker$PcoFiveState;
.super Lcom/android/internal/util/State;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcoFiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method private constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/PcoTracker;
    .param p2, "x1"    # Landroid/net/PcoTracker$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Landroid/net/PcoTracker$PcoFiveState;-><init>(Landroid/net/PcoTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoFiveState entered"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$7300(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoFiveState :: NotificationAlertMsg(5) "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$7400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    .line 477
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 481
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/PcoTracker$PcoFiveState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Landroid/net/PcoTracker;->access$7500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 482
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 511
    :goto_0
    return v1

    .line 484
    :pswitch_0
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoProfileNum"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoValue"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoProfileNum"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_3

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoValue"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 487
    :cond_1
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoFiveState transitionTo PcoDefaultState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/PcoTracker;->access$7600(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    iget-object v3, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/PcoTracker;->access$5000(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/PcoTracker;->access$7700(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_1
    move v1, v2

    .line 511
    goto :goto_0

    .line 490
    :cond_3
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoProfileNum"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_4

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v4, "pcoValue"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 492
    # getter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {}, Landroid/net/PcoTracker;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    # setter for: Landroid/net/PcoTracker;->radio_off_flag:Z
    invoke-static {v3}, Landroid/net/PcoTracker;->access$1302(Z)Z

    .line 495
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoFiveState ::radio_off_flag is false "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/PcoTracker;->access$7800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoFiveState ::after radio_off_flag is false, move to BBPortal!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/PcoTracker;->access$7900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v3, "https://quickaccess.verizonwireless.com/bbportal/oem/start.do?"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v0, "notiIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/PcoTracker;->access$1700(Landroid/net/PcoTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 503
    .end local v0    # "notiIntent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Landroid/net/PcoTracker$PcoFiveState;->this$0:Landroid/net/PcoTracker;

    const-string v3, "PcoFiveState Nothing to do "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/PcoTracker;->access$8000(Landroid/net/PcoTracker;Ljava/lang/String;)V

    move v1, v2

    .line 504
    goto/16 :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
