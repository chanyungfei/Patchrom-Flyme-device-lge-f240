.class Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;
.super Ljava/lang/Object;
.source "WfdsMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdsMonitorThread"
.end annotation


# instance fields
.field private isConnect:Z

.field final synthetic this$0:Lcom/lge/wfds/WfdsMonitor;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/WfdsMonitor;)V
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 132
    const-string v0, "WfdsMonitor"

    const-string v1, "WfdsMonitorThread create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private getError(Ljava/lang/String;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 303
    const/16 v0, 0xc

    .line 305
    .local v0, "UNKNOWN":I
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v7, :cond_1

    .line 318
    .end local v0    # "UNKNOWN":I
    :cond_0
    :goto_0
    return v0

    .line 309
    .restart local v0    # "UNKNOWN":I
    :cond_1
    aget-object v5, v4, v6

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v7, :cond_0

    .line 314
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "status":I
    :goto_1
    move v0, v3

    .line 318
    goto :goto_0

    .line 315
    .end local v3    # "status":I
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x7

    .restart local v3    # "status":I
    goto :goto_1
.end method


# virtual methods
.method public connectToSupplicant()Z
    .locals 6

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "connectTries":I
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    if-eqz v3, :cond_1

    .line 196
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 213
    :goto_0
    return v3

    .line 203
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 205
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 199
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    .line 213
    :goto_2
    iget-boolean v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z

    goto :goto_0

    .line 206
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "WfdsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 208
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_1

    .end local v0    # "connectTries":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "connectTries":I
    :cond_2
    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_2
.end method

.method public declared-synchronized disconnectToSupplicant()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->disconnectToSupplicant()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->isConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleConnectionEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 290
    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x902014

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 296
    aget-object v2, v1, v3

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 297
    .local v0, "deviceAddr":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x902015

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method handleP2pEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 276
    const-string v0, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x902007

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v0, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x902012

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_2
    const-string v0, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x902010

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->getError(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v0, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x902013

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->getError(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method handleWfdsEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 222
    const-string v4, "WFDS-SUPPLICANT-CONNECTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v4, "WFDS-DEVICE-FOUND"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902003

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 228
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_2
    const-string v4, "WFDS-PROV-DISC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902004

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 231
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_3
    const-string v4, "WFDS-PROV-DISC-SENT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902005

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 234
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_4
    const-string v4, "WFDS-PROV-DISC-ACCEPT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 235
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902006

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_5
    const-string v4, "WFDS-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 238
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902008

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 239
    :cond_6
    const-string v4, "WFDS-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 240
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902009

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 241
    :cond_7
    const-string v4, "WFDS-PROV-DISC-DEF-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 242
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200a

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_8
    const-string v4, "WFDS-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200b

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    :cond_9
    const-string v4, "WFDS-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 246
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200c

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 247
    :cond_a
    const-string v4, "WFDS-PROV-DISC-PERSISTENT-RESULT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 248
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3    # "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    .line 250
    const-string v4, "WfdsMonitor"

    const-string v5, "Invailed Arguments Length"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 253
    :cond_b
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200d

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_c
    const-string v4, "WFDS-PERSISTENT-UNKNOWN-GROUP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 255
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200e

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 256
    :cond_d
    const-string v4, "WFDS-GO-NEG-REQUEST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 257
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x90200f

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_e
    const-string v4, "WFDS-PROV-DISC-DEFER"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 260
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902011

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 262
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    :cond_f
    const-string v4, "WFDS-DEVICE-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 264
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 266
    .local v2, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902016

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "deviceAddr":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_10
    const-string v4, "WFDS-DEVICE-INFO-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 271
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const v5, 0x902017

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->connectToSupplicant()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    const-string v3, "WfdsMonitor"

    const-string v4, "Failed to setup control channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v3, "WfdsMonitor"

    const-string v4, "Supplicant connection established"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x902001

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 145
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 146
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$100(Lcom/lge/wfds/WfdsMonitor;)Lcom/lge/wfds/WfdsNative;

    invoke-static {}, Lcom/lge/wfds/WfdsNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "eventStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 151
    const-string v3, "IFNAME="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 154
    .local v2, "space":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 159
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "iface":Ljava/lang/String;
    const-string v3, "p2p0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "p2p-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "space":I
    :cond_3
    const-string v3, "WfdsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v3, "WFDS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleWfdsEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_4
    const-string v3, "P2P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleP2pEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_5
    const-string v3, "AP-STA-CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AP-STA-DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 182
    :cond_6
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->handleConnectionEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :cond_7
    const-string v3, "CTRL-EVENT-TERMINATING "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->this$0:Lcom/lge/wfds/WfdsMonitor;

    # getter for: Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Lcom/lge/wfds/WfdsMonitor;->access$000(Lcom/lge/wfds/WfdsMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x902002

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 188
    .end local v0    # "eventStr":Ljava/lang/String;
    :cond_8
    const-string v3, "WfdsMonitor"

    const-string v4, "WfdsMonitorThread is received the interrupt - closing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor$WfdsMonitorThread;->disconnectToSupplicant()V

    goto/16 :goto_0
.end method
