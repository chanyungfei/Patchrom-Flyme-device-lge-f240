.class Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)V
    .locals 0

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2255
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsExpanded:Z
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2602(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2256
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->hideAnimation(Landroid/view/View;)I

    move-result v0

    .line 2258
    .local v0, "clickButtonNum":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->cancelAnimation()V

    .line 2259
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus()V

    .line 2261
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3000(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->cancelAnimation()V

    .line 2262
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3000(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus()V

    .line 2264
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->cancelAnimation()V

    .line 2265
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->initStatus()V

    .line 2267
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->cancelAnimation()V

    .line 2268
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus()V

    .line 2270
    if-nez v0, :cond_0

    .line 2271
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->startAnimation()V

    .line 2272
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2273
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$drawable;->ic_system_action_lock_power_pressed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2310
    :goto_0
    return-void

    .line 2274
    :cond_0
    if-ne v0, v2, :cond_1

    .line 2275
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->startAnimation()V

    .line 2276
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2277
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v3

    aget-object v2, v3, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$drawable;->ic_system_action_lock_restart_pressed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2279
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3500(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    if-eq v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2281
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$string;->sp_not_available_during_a_call_NORMAL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2285
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2287
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$302(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2289
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2291
    .local v1, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2292
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2293
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 2295
    .end local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    if-eq v4, v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 2296
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3500(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_1
    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$400(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V

    .line 2297
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 2296
    goto :goto_1

    .line 2299
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3500(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2300
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$400(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V

    .line 2301
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 2303
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->startAnimation()V

    .line 2304
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$drawable;->ic_system_lock_airplane_mode_on_pressed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
