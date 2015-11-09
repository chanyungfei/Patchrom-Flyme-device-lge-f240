.class Landroid/net/PcoTracker$PcoTwoState;
.super Lcom/android/internal/util/State;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcoTwoState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method private constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/PcoTracker;
    .param p2, "x1"    # Landroid/net/PcoTracker$1;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Landroid/net/PcoTracker$PcoTwoState;-><init>(Landroid/net/PcoTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoTwoState entered"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$5300(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/PcoTracker;->NotificationAlertMsg(I)V

    .line 365
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Landroid/net/PcoTracker;->access$2600(Landroid/net/PcoTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 367
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 371
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/PcoTracker$PcoTwoState;->getName()Ljava/lang/String;

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
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5400(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    .line 375
    :pswitch_0
    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoProfileNum"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    # getter for: Landroid/net/PcoTracker;->pcoInfo:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/PcoTracker;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "pcoValue"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoTwoState transitionTo PcoDefaultState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5500(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$5000(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5600(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    move v0, v1

    .line 387
    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/net/PcoTracker$PcoTwoState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoTwoState Nothing to do "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    move v0, v1

    .line 381
    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
