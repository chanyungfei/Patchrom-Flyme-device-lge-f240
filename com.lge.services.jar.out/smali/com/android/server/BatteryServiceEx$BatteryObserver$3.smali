.class Lcom/android/server/BatteryServiceEx$BatteryObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx$BatteryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1402(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 455
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-nez v0, :cond_1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    const-string v1, "level"

    const/16 v2, 0x50

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1202(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 457
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    const-string v1, "status"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1302(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 459
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # invokes: Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 462
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # getter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I
    invoke-static {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I

    move-result v1

    # setter for: Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2202(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I

    .line 463
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    # invokes: Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V
    invoke-static {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    .line 465
    :cond_2
    # getter for: Lcom/android/server/BatteryServiceEx;->OPERATOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$2300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;->this$1:Lcom/android/server/BatteryServiceEx$BatteryObserver;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "temperature"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/server/BatteryServiceEx$BatteryObserver;->checkBatteryOverheat(I)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->access$2400(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)V

    .line 469
    :cond_3
    return-void
.end method
