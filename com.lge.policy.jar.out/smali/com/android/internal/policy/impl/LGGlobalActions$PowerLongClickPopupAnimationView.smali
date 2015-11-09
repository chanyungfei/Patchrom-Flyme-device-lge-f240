.class public Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerLongClickPopupAnimationView"
.end annotation


# static fields
.field protected static final mAnimDuration:J = 0x190L


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPopupImageButton:[Landroid/widget/ImageButton;

.field protected mPopupImageView:[Landroid/widget/ImageView;

.field protected mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

.field protected mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

.field protected mPopupTextView:[Landroid/widget/TextView;

.field protected mPopupViewNum:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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

    .line 2693
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2694
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    .line 2695
    iput-object p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mView:Landroid/view/View;

    .line 2697
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    .line 2698
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 2700
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupBGLineLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 2702
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupBGInsideLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 2704
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupRelativeLayout2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 2706
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupRelativeLayout2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v6

    .line 2709
    new-array v0, v4, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    .line 2710
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupImageButton2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    .line 2712
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2719
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupImageButton2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    .line 2721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2730
    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    .line 2731
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupTextView1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 2733
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupTextView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 2735
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupTextView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 2737
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupTextView1Description:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 2740
    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    .line 2741
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupImageView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 2743
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupImageView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 2745
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 2905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 2906
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2908
    :cond_0
    return-void
.end method

.method public initAnimation()V
    .locals 13

    .prologue
    .line 2815
    const/4 v1, 0x0

    .line 2816
    .local v1, "animCount":I
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupViewNum:I

    new-array v6, v6, [Landroid/animation/AnimatorSet;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    .line 2817
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupViewNum:I

    if-ge v2, v6, :cond_0

    .line 2818
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v7, v6, v2

    .line 2817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2822
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 2824
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 2826
    .local v4, "scaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2827
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2828
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2829
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2830
    add-int/lit8 v1, v1, 0x1

    .line 2834
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 2836
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 2838
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2839
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2840
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2842
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2845
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 2847
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2848
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    const v7, 0x10a0005

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2850
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 2851
    add-int/lit8 v1, v1, 0x1

    .line 2854
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 2855
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2856
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2857
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0005

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2859
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2860
    add-int/lit8 v1, v1, 0x1

    .line 2854
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2863
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 2864
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2865
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2866
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2868
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2869
    add-int/lit8 v1, v1, 0x1

    .line 2863
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2872
    :cond_2
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 2873
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2875
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2877
    const-wide/16 v6, 0x1c2

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2878
    const-wide/16 v6, 0x1c2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2880
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v11, 0x42940000    # 74.0f

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2886
    .local v5, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x1c2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2888
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2891
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 2893
    add-int/lit8 v1, v1, 0x1

    .line 2872
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 2895
    .end local v5    # "translationY":Landroid/animation/ObjectAnimator;
    :cond_3
    return-void
.end method

.method public initStatus()V
    .locals 13

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 2761
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 2762
    .local v6, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 2763
    .local v11, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2764
    iget v7, v11, Landroid/graphics/Point;->y:I

    .line 2766
    .local v7, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/lge/internal/R$string;->sp_restart_in_safe_mode_title:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2770
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 2771
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2770
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2766
    .end local v8    # "i":I
    :cond_0
    const v0, 0x104011f

    goto :goto_0

    .line 2773
    .restart local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 2774
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2773
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2777
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2778
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2779
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2780
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupTextView:[Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v2, 0x431a0000    # 154.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v1

    add-float v9, v0, v1

    .line 2783
    .local v9, "layoutHeight":F
    float-to-int v0, v9

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2784
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2786
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2790
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2794
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2796
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2798
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2800
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    sub-float v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus(Landroid/view/View;FFFF)V

    .line 2802
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

    .line 2805
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 2806
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 2807
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2808
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2810
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 2811
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 2812
    return-void
.end method

.method public setValue()V
    .locals 2

    .prologue
    .line 2748
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupViewNum:I

    .line 2750
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2756
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2898
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupViewNum:I

    if-ge v0, v1, :cond_0

    .line 2900
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2902
    :cond_0
    return-void
.end method
