.class Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 3400
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->val$this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3404
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3406
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->sp_not_available_during_a_call_NORMAL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3408
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$502(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 3409
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3434
    :goto_0
    return-void

    .line 3412
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v0, v2

    .line 3416
    .local v0, "airplaneModeOn":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsKDDI:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2300(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 3417
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3420
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3424
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3425
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3426
    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3427
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3429
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3431
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$502(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 3433
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
