.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTrackerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 125
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "eriText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->getEriTextForOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->updateSpnDisplay()V

    goto :goto_0

    .line 139
    .end local v1    # "eriText":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 140
    const/4 v1, 0x0

    .restart local v1    # "eriText":Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v1    # "eriText":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10400f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "eriText":Ljava/lang/String;
    goto :goto_1

    .line 149
    .end local v1    # "eriText":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 150
    const-string v4, "CdmaSST"

    const-string v5, "Receive ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()J

    move-result-wide v2

    .line 152
    .local v2, "subId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mNeedToUpdateSpnForSubId:Z
    invoke-static {v4, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;Z)Z

    .line 154
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 156
    :cond_5
    const-string v4, "CdmaSST"

    const-string v5, "Subinfo has been updated but subId is invaild."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    .end local v2    # "subId":J
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 162
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mAlarmSwitch:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$102(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;Z)Z

    .line 163
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 164
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 169
    const-string v4, "CdmaSST"

    const-string v5, "get ACTION SHUTDOWN!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    iput-boolean v6, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->isInShutDown:Z

    goto/16 :goto_0

    .line 174
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.vzwnetworktest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->setFakeNetworkValues(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;Landroid/content/Intent;)V

    .line 176
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->mFakeRI:I
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;)I

    move-result v4

    if-lez v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTrackerEx;->pollState()V

    goto/16 :goto_0
.end method