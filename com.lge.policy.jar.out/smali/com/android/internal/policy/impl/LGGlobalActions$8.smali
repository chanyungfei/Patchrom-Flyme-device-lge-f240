.class Lcom/android/internal/policy/impl/LGGlobalActions$8;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1222
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$002(Lcom/android/internal/policy/impl/LGGlobalActions;I)I

    .line 1235
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x3

    .line 1225
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 1227
    .local v0, "inAirplaneMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_2
    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$502(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1228
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$8;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1226
    .end local v0    # "inAirplaneMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1227
    .restart local v0    # "inAirplaneMode":Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_2
.end method
