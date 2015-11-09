.class public Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AirplanePopupAnimationView"
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

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3372
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3373
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    .line 3374
    iput-object p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mView:Landroid/view/View;

    .line 3376
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    .line 3377
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 3379
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupBGLineLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 3381
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupBGInsideLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 3383
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupRelativeLayout2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 3385
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupRelativeLayout2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v6

    .line 3388
    new-array v0, v4, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    .line 3389
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupImageButton2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    .line 3391
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3398
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupImageButton2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    .line 3400
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3437
    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    .line 3438
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupTextView1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 3440
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupTextView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 3442
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupTextView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 3444
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupTextView1Description:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 3447
    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    .line 3448
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupImageView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 3450
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->airplanePopupImageView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 3452
    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 3615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 3616
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    return-void
.end method

.method public initAnimation()V
    .locals 13

    .prologue
    .line 3525
    const/4 v1, 0x0

    .line 3526
    .local v1, "animCount":I
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupViewNum:I

    new-array v6, v6, [Landroid/animation/AnimatorSet;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    .line 3527
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupViewNum:I

    if-ge v2, v6, :cond_0

    .line 3528
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v7, v6, v2

    .line 3527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3532
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3534
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3536
    .local v4, "scaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3537
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3538
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3539
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3540
    add-int/lit8 v1, v1, 0x1

    .line 3544
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3546
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3548
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3549
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3550
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3552
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3555
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3557
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3558
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    const v7, 0x10a0005

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3560
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 3561
    add-int/lit8 v1, v1, 0x1

    .line 3564
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 3565
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3566
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3567
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0005

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3569
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3570
    add-int/lit8 v1, v1, 0x1

    .line 3564
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3573
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 3574
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3575
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3576
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3578
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3579
    add-int/lit8 v1, v1, 0x1

    .line 3573
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3582
    :cond_2
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 3583
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3585
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 3587
    const-wide/16 v6, 0x1c2

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3588
    const-wide/16 v6, 0x1c2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3590
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v11, 0x42940000    # 74.0f

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 3596
    .local v5, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x1c2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3598
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3601
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 3603
    add-int/lit8 v1, v1, 0x1

    .line 3582
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 3605
    .end local v5    # "translationY":Landroid/animation/ObjectAnimator;
    :cond_3
    return-void
.end method

.method public initStatus()V
    .locals 13

    .prologue
    .line 3466
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 3468
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 3469
    .local v6, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 3470
    .local v11, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3471
    iget v7, v11, Landroid/graphics/Point;->y:I

    .line 3473
    .local v7, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$3700(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/lge/internal/R$string;->global_actions_toggle_airplane_mode_ATT:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3476
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->isVoLTESupported()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$3800(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/lge/internal/R$string;->sp_airplane_mode_enable_vzw_NORMAL:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3480
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v8, v0, :cond_6

    .line 3481
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3480
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3473
    .end local v8    # "i":I
    :cond_1
    const v0, 0x1040130

    goto :goto_0

    .line 3476
    :cond_2
    sget v0, Lcom/lge/internal/R$string;->sp_airplane_mode_enable_vzw_com_NORMAL:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$3700(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget v0, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL_ATT:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL:I

    goto :goto_1

    .line 3483
    .restart local v8    # "i":I
    :cond_6
    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v8, v0, :cond_7

    .line 3484
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3483
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3487
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 3488
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3489
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 3490
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v2, 0x431a0000    # 154.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v1

    add-float v9, v0, v1

    .line 3493
    .local v9, "layoutHeight":F
    float-to-int v0, v9

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3494
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3496
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3500
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3504
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 3506
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 3508
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 3510
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    sub-float v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 3512
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

    .line 3515
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 3516
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 3517
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3518
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 3520
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 3521
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 3522
    return-void
.end method

.method public setValue()V
    .locals 2

    .prologue
    .line 3455
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupViewNum:I

    .line 3457
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3463
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3608
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 3610
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3612
    :cond_0
    return-void
.end method
