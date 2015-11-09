.class public Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerPopupAnimationView"
.end annotation


# static fields
.field private static final mAnimDuration:J = 0x190L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupImageButton:[Landroid/widget/ImageButton;

.field private mPopupImageView:[Landroid/widget/ImageView;

.field private mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

.field private mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

.field private mPopupTextView:[Landroid/widget/TextView;

.field private mPopupViewNum:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2449
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2450
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    .line 2452
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    .line 2453
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerPopupLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 2455
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerPopupBGLineLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 2457
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerPopupBGInsideLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 2459
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerPopupRelativeLayout2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v6

    .line 2461
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    sget v0, Lcom/lge/internal/R$id;->powerPopupRelativeLayout2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 2464
    new-array v0, v5, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    .line 2465
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerPopupImageButton2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    .line 2467
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2474
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerPopupImageButton2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v4

    .line 2476
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2506
    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    .line 2507
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerPopupTextView1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 2509
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerPopupTextView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 2511
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerPopupTextView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 2514
    new-array v0, v5, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    .line 2515
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerPopupImageView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 2517
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerPopupImageView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 2519
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 2671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 2672
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2674
    :cond_0
    return-void
.end method

.method public initAnimation()V
    .locals 13

    .prologue
    .line 2576
    const/4 v1, 0x0

    .line 2577
    .local v1, "animCount":I
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupViewNum:I

    new-array v6, v6, [Landroid/animation/AnimatorSet;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    .line 2578
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupViewNum:I

    if-ge v2, v6, :cond_0

    .line 2579
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v7, v6, v2

    .line 2578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2583
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2585
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2587
    .local v4, "scaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2588
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2589
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2592
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2593
    add-int/lit8 v1, v1, 0x1

    .line 2597
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2599
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2601
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2602
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2603
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2605
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2608
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2610
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2611
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    const v7, 0x10a0005

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2613
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2614
    add-int/lit8 v1, v1, 0x1

    .line 2617
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 2618
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2620
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2621
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0005

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2624
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2625
    add-int/lit8 v1, v1, 0x1

    .line 2617
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2628
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 2629
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2631
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2632
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2635
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2636
    add-int/lit8 v1, v1, 0x1

    .line 2628
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2639
    :cond_2
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 2640
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2642
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2644
    const-wide/16 v6, 0x1c2

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2645
    const-wide/16 v6, 0x1c2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2647
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v11, 0x42780000    # 62.0f

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2652
    .local v5, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x1c2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2654
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2657
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2659
    add-int/lit8 v1, v1, 0x1

    .line 2639
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 2661
    .end local v5    # "translationY":Landroid/animation/ObjectAnimator;
    :cond_3
    return-void
.end method

.method public initStatus()V
    .locals 11

    .prologue
    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2533
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 2534
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2533
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2536
    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 2537
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2536
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2540
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2541
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v8

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2545
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2549
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v0, v8

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v0, v9

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2551
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v0, v9

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2553
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2555
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v2, v0, v8

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v1, v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v1

    sub-float v5, v0, v1

    move-object v1, p0

    move v4, v3

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2562
    return-void
.end method

.method public initStatus(Landroid/view/View;FFFF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "transX"    # F
    .param p5, "transY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2566
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 2567
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 2568
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2569
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2571
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 2572
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 2573
    return-void
.end method

.method public setValue()V
    .locals 2

    .prologue
    .line 2522
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupViewNum:I

    .line 2524
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2530
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2664
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 2666
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2668
    :cond_0
    return-void
.end method
