.class Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 95
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 214
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 100
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v9, v9, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mContext:Landroid/content/Context;

    const-string v10, "cmas_mlock_cb"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock_CB:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 102
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    :goto_1
    iput-boolean v7, v10, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSuccess:Z

    .line 103
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock_CB:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    move v7, v8

    .line 102
    goto :goto_1

    .line 106
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 114
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v9, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 115
    :try_start_1
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 116
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    check-cast v7, [B

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget-object v8, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->updateSmsOnSimReadStatusWrite([BILjava/lang/Boolean;)V
    invoke-static {v10, v7, v11, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;[BILjava/lang/Boolean;)V

    .line 121
    :goto_2
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 118
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSuccess:Z

    .line 119
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 125
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 126
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v9, v9, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 127
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4

    :goto_3
    iput-boolean v7, v10, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSuccess:Z

    .line 128
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v7

    :cond_4
    move v7, v8

    .line 127
    goto :goto_3

    .line 132
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 133
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v8, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 134
    :try_start_4
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    .line 135
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v5, v0

    .line 136
    .local v5, "recordSizeArray":[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const/4 v9, 0x2

    aget v9, v5, v9

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->recordSize:I
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;I)I

    .line 140
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RED] GET_RECORD_SIZE Size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " total "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " #record "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 147
    .end local v5    # "recordSizeArray":[I
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v7

    .line 145
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const/4 v9, -0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->recordSize:I
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 151
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const-string v7, "handleMessage():EVENT_COPY_SMS_DONE"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 152
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 153
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v8, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 154
    :try_start_6
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v7, :cond_6

    .line 156
    :try_start_7
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v6, v0

    .line 157
    .local v6, "result":[I
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const/4 v9, 0x0

    aget v9, v6, v9

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mIndexOnIcc:I
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$302(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;I)I

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage():EVENT_COPY_SMS_DONE, After copy SMS to SIM IndexOnIcc: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mIndexOnIcc:I
    invoke-static {v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 165
    .end local v6    # "result":[I
    :goto_5
    :try_start_8
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v7

    .line 162
    :cond_6
    :try_start_9
    const-string v7, "handleMessage():EVENT_COPY_SMS_DONE, Cannot copy sms to sim"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 163
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const/4 v9, -0x1

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mIndexOnIcc:I
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$302(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    .line 172
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const-string v7, "handleMessage():EVENT_GET_SMSCADDRESS, getSmscAddress"

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 173
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 175
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v8, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 176
    :try_start_a
    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v7, :cond_7

    .line 178
    :try_start_b
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSCAddr:Ljava/lang/String;
    invoke-static {v9, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage():EVENT_GET_SMSCADDRESS, smsc address = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSCAddr:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 190
    :goto_6
    :try_start_c
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v8

    goto/16 :goto_0

    :catchall_5
    move-exception v7

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v7

    .line 187
    :cond_7
    :try_start_d
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const-string v9, "Cannot read template"

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 188
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    const-string v9, ""

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mSCAddr:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_6

    .line 197
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const/4 v9, 0x0

    const-string v10, "cta_security_mo_sms_pop_up"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_0

    .line 198
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 199
    .local v1, "appLabel":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage():EVENT_CTA_SECURITY_ALERTS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 202
    .local v4, "r":Landroid/content/res/Resources;
    const v9, 0x1040720

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {v4, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 203
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage():EVENT_CTA_SECURITY_ALERTS messageText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 205
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v8, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 206
    :try_start_e
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;

    iget-object v7, v7, Lcom/android/internal/telephony/IccSmsInterfaceManagerEx;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v7

    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v7

    .line 183
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "messageText":Landroid/text/Spanned;
    .end local v4    # "r":Landroid/content/res/Resources;
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v7

    goto/16 :goto_6

    .line 159
    :catch_1
    move-exception v7

    goto/16 :goto_5

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0x7d -> :sswitch_3
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
        0x82 -> :sswitch_6
    .end sparse-switch
.end method
