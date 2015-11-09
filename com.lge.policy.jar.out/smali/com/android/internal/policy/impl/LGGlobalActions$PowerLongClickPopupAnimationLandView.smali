.class public Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;
.super Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerLongClickPopupAnimationLandView"
.end annotation


# instance fields
.field private mCircleButton:Landroid/widget/ImageButton;

.field private mLayoutHeight:F

.field private mScrollView:Landroid/widget/ScrollView;

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

    .line 2916
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    .line 2917
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    .line 2919
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    .line 2920
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 2922
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandBGLineLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 2924
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandBGInsideLayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 2926
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandRelativeLayout2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 2928
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandRelativeLayout2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v6

    .line 2931
    new-array v0, v4, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    .line 2932
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandImageButton2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    .line 2934
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2941
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandImageButton2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    .line 2943
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2952
    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    .line 2953
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandTextView1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 2955
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandTextView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 2957
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandTextView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 2959
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandTextView1Description:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 2962
    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    .line 2963
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandImageView2_1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 2965
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandImageView2_2:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 2968
    sget v0, Lcom/lge/internal/R$id;->powerLongClickPopupLandScroll:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mScrollView:Landroid/widget/ScrollView;

    .line 2971
    sget v0, Lcom/lge/internal/R$id;->powerCircleLandImageButton1:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mCircleButton:Landroid/widget/ImageButton;

    .line 2973
    return-void
.end method


# virtual methods
.method public initAnimation()V
    .locals 12

    .prologue
    .line 3042
    const/4 v1, 0x0

    .line 3043
    .local v1, "animCount":I
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupViewNum:I

    new-array v6, v6, [Landroid/animation/AnimatorSet;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    .line 3044
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupViewNum:I

    if-ge v2, v6, :cond_0

    .line 3045
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v7, v6, v2

    .line 3044
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3049
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3051
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3053
    .local v4, "scaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3054
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3055
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3058
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3059
    add-int/lit8 v1, v1, 0x1

    .line 3063
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3065
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3067
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3068
    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3069
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3071
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    sget v7, Lcom/lge/internal/R$anim;->power_popup_interpolator:I

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3074
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    .line 3076
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3077
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const v7, 0x10a0005

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3079
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 3080
    add-int/lit8 v1, v1, 0x1

    .line 3083
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 3084
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3086
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3087
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const v8, 0x10a0005

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3090
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3091
    add-int/lit8 v1, v1, 0x1

    .line 3083
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3094
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 3095
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3097
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3098
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3101
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3102
    add-int/lit8 v1, v1, 0x1

    .line 3094
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3106
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mScrollView:Landroid/widget/ScrollView;

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3108
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3109
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3112
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3113
    add-int/lit8 v1, v1, 0x1

    .line 3115
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 3116
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3118
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 3120
    const-wide/16 v6, 0x1c2

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3121
    const-wide/16 v6, 0x1c2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3123
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    aget-object v6, v6, v2

    const-string v7, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v11, 0x42780000    # 62.0f

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    add-float/2addr v10, v11

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 3127
    .local v5, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x1c2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3129
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const v8, 0x10a0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3132
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupObjectAnimSet:[Landroid/animation/AnimatorSet;

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

    .line 3134
    add-int/lit8 v1, v1, 0x1

    .line 3115
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 3136
    .end local v5    # "translationY":Landroid/animation/ObjectAnimator;
    :cond_3
    return-void
.end method

.method public initStatus()V
    .locals 12

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 2991
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 2992
    .local v6, "display":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 2993
    .local v10, "size":Landroid/graphics/Point;
    invoke-virtual {v6, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2994
    iget v7, v10, Landroid/graphics/Point;->y:I

    .line 2996
    .local v7, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

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

    .line 3000
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 3001
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mCircleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    .line 3003
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    float-to-int v0, v0

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3004
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3006
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 3007
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    .line 3010
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mLayoutHeight:F

    float-to-int v0, v0

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3011
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3013
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 3014
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3013
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2996
    .end local v8    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const v0, 0x104011f

    goto :goto_0

    .line 3016
    .restart local v8    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 3017
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3016
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3019
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setAlpha(F)V

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3022
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3026
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3030
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->initStatus(Landroid/view/View;FFFF)V

    .line 3032
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->initStatus(Landroid/view/View;FFFF)V

    .line 3034
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->initStatus(Landroid/view/View;FFFF)V

    .line 3036
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupImageButton:[Landroid/widget/ImageButton;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    sub-float v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->initStatus(Landroid/view/View;FFFF)V

    .line 3038
    return-void
.end method

.method public setValue()V
    .locals 2

    .prologue
    .line 2977
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupViewNum:I

    .line 2979
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;->mPopupRelativeLayout:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2985
    return-void
.end method
