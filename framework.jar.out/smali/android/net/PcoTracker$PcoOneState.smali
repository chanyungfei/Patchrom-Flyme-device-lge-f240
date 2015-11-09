.class Landroid/net/PcoTracker$PcoOneState;
.super Lcom/android/internal/util/State;
.source "PcoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PcoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcoOneState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/PcoTracker;


# direct methods
.method private constructor <init>(Landroid/net/PcoTracker;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/PcoTracker;Landroid/net/PcoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/PcoTracker;
    .param p2, "x1"    # Landroid/net/PcoTracker$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/net/PcoTracker$PcoOneState;-><init>(Landroid/net/PcoTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    const-string v1, "PcoOneState entered"

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/PcoTracker;->access$4700(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 335
    iget-object v0, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/PcoTracker$PcoOneState;->getName()Ljava/lang/String;

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
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4800(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    .line 339
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

    .line 341
    iget-object v0, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoOneState transitionTo PcoDefaultState!!! "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$4900(Landroid/net/PcoTracker;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    iget-object v2, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    # getter for: Landroid/net/PcoTracker;->mPcoDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/PcoTracker;->access$5000(Landroid/net/PcoTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/PcoTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5100(Landroid/net/PcoTracker;Lcom/android/internal/util/IState;)V

    move v0, v1

    .line 355
    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/net/PcoTracker$PcoOneState;->this$0:Landroid/net/PcoTracker;

    const-string v2, "PcoOneState Nothing to do "

    # invokes: Landroid/net/PcoTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/PcoTracker;->access$5200(Landroid/net/PcoTracker;Ljava/lang/String;)V

    move v0, v1

    .line 347
    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
