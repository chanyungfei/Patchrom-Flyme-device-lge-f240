.class Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 2313
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2317
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsExpanded:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2602(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2318
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mSkipDismiss:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2702(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2319
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->hideAnimation(Landroid/view/View;)I

    .line 2321
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->cancelAnimation()V

    .line 2322
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus()V

    .line 2324
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->cancelAnimation()V

    .line 2325
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->initStatus()V

    .line 2327
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->cancelAnimation()V

    .line 2328
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus()V

    .line 2330
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3000(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->startAnimation()V

    .line 2331
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2332
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$drawable;->ic_system_action_lock_power_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2334
    return v3
.end method
