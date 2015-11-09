.class final Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
.super Landroid/os/Handler;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerExHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    .line 1316
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1317
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 1321
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1334
    :goto_0
    return-void

    .line 1323
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleKeyLedTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1900(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1326
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->setKeyLedEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2000(Lcom/android/server/power/PowerManagerServiceEx;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1329
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->handleDeviceLockTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2100(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
