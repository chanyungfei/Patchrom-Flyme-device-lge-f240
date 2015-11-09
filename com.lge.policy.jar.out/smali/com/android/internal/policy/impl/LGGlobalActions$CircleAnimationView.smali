.class public Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircleAnimationView"
.end annotation


# static fields
.field private static final mAnimationStartTime:J = 0x12cL


# instance fields
.field private mAirplaneMode:Z

.field private mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

.field private mButtonDitance:F

.field private mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

.field private mButtonNum:I

.field private mContext:Landroid/content/Context;

.field private mImageButton:[Landroid/widget/ImageButton;

.field private mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

.field private mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

.field private mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

.field private mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

.field private mTextHideAnimSet:[Landroid/animation/AnimatorSet;

.field private mTextView:[Landroid/widget/TextView;

.field private mTextViewAnimSet:[Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2041
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    iput v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    .line 2027
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z

    .line 2042
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;

    .line 2044
    new-array v1, v2, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    .line 2045
    new-array v1, v2, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    .line 2047
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    if-eq v1, v4, :cond_0

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2048
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandImageButton1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 2049
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandImageButton2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 2050
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandImageButton3:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 2052
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandTextView1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 2053
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandTextView2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 2054
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleLandTextView3:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 2064
    :goto_0
    const-string v0, ""

    .line 2065
    .local v0, "homeprop":Ljava/lang/String;
    const-string v1, "service.plushome.currenthome"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2066
    const-string v1, "kids"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1300(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2067
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    .line 2069
    :cond_2
    return-void

    .line 2056
    .end local v0    # "homeprop":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleImageButton1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 2057
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleImageButton2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 2058
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    sget v1, Lcom/lge/internal/R$id;->powerCircleImageButton3:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 2060
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleTextView1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 2061
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleTextView2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 2062
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    sget v1, Lcom/lge/internal/R$id;->powerCircleTextView3:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    goto :goto_0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)[Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z

    return v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 2192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2194
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextViewAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2195
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2196
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2198
    :cond_0
    return-void
.end method

.method public hideAnimation(Landroid/view/View;)I
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v12, 0x12c

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2201
    const/4 v0, 0x0

    .line 2202
    .local v0, "clickButtonNum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v3, v4, :cond_1

    .line 2203
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v4, v4, v3

    if-ne p1, v4, :cond_0

    .line 2204
    move v0, v3

    .line 2221
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2223
    .local v2, "hideAnim2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2224
    new-instance v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2232
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v3

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2233
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2234
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v4, v4, v3

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2206
    .end local v2    # "hideAnim2":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v4, v4, v3

    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2208
    .local v1, "hideAnim1":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2209
    new-instance v4, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2218
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v3

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2219
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 2236
    .end local v1    # "hideAnim1":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 2237
    return v0
.end method

.method public initAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2115
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

    .line 2116
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextViewAnimSet:[Landroid/animation/AnimatorSet;

    .line 2117
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextHideAnimSet:[Landroid/animation/AnimatorSet;

    .line 2118
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

    .line 2119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_0

    .line 2120
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    .line 2121
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextViewAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    .line 2122
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextHideAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    .line 2123
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonHideAnimSet:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    .line 2125
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->initImageButtonAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;FF)V

    .line 2126
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextViewAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->initTextViewnAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 2119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2128
    :cond_0
    return-void
.end method

.method public initImageButtonAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;FF)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;
    .param p3, "transX"    # F
    .param p4, "transY"    # F

    .prologue
    .line 2140
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2141
    .local v4, "scaleX0":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2142
    .local v10, "scaleY0":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2143
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2145
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3e4ccccd    # 0.2f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2146
    .local v5, "scaleX1":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3e4ccccd    # 0.2f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2147
    .local v11, "scaleY1":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x12c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2148
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x12c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2150
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2151
    .local v6, "scaleX2":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2152
    .local v12, "scaleY2":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2153
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2155
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3e4ccccd    # 0.2f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2156
    .local v7, "scaleX3":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3e4ccccd    # 0.2f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2157
    .local v13, "scaleY3":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x2bc

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2158
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x2bc

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2160
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3d4ccccd    # 0.05f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2161
    .local v8, "scaleX4":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x3d4ccccd    # 0.05f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 2162
    .local v14, "scaleY4":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x384

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2163
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x384

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2165
    const-string v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2166
    .local v9, "scaleX5":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2167
    .local v15, "scaleY5":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x44c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2168
    const-wide/16 v18, 0xc8

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x44c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2170
    const-string v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput p3, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2172
    .local v16, "translationX":Landroid/animation/ObjectAnimator;
    const-string v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput p4, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2174
    .local v17, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x12c

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x44c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2175
    const-wide/16 v18, 0x12c

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v18

    const-wide/16 v20, 0x44c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2177
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    const/16 v19, 0x2

    aput-object v5, v18, v19

    const/16 v19, 0x3

    aput-object v11, v18, v19

    const/16 v19, 0x4

    aput-object v6, v18, v19

    const/16 v19, 0x5

    aput-object v12, v18, v19

    const/16 v19, 0x6

    aput-object v7, v18, v19

    const/16 v19, 0x7

    aput-object v13, v18, v19

    const/16 v19, 0x8

    aput-object v8, v18, v19

    const/16 v19, 0x9

    aput-object v14, v18, v19

    const/16 v19, 0xa

    aput-object v9, v18, v19

    const/16 v19, 0xb

    aput-object v15, v18, v19

    const/16 v19, 0xc

    aput-object v16, v18, v19

    const/16 v19, 0xd

    aput-object v17, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x10a0006

    invoke-static/range {v18 .. v19}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2182
    return-void
.end method

.method public initStatus()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2077
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_0

    .line 2078
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 2079
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 2080
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2081
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2082
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2084
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2085
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonDitance:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2086
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonDitance:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2094
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_2

    .line 2095
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2096
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2094
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2088
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonDitance:F

    neg-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2089
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonDitance:F

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2090
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2091
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 2099
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z

    if-eqz v1, :cond_3

    .line 2100
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2103
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2104
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    sget v2, Lcom/lge/internal/R$string;->global_action_power_restart_ATT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2106
    :cond_4
    return-void
.end method

.method public initTextViewnAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2131
    const-string v1, "alpha"

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2132
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2133
    new-array v1, v5, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2134
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2136
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x2

    .line 2109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplaneMode:Z

    .line 2110
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2111
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/lge/internal/R$string;->sp_turn_off_airplane_mode_NORMAL:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    return-void

    .line 2111
    :cond_0
    sget v0, Lcom/lge/internal/R$string;->sp_turn_on_airplane_mode_NORMAL:I

    goto :goto_0
.end method

.method public setClickListener()V
    .locals 3

    .prologue
    .line 2251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_0

    .line 2252
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2313
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$4;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2337
    return-void
.end method

.method public setPopupView(Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)V
    .locals 0
    .param p1, "powerPopupAnimationView"    # Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;
    .param p2, "powerLongClickPopupAnimationView"    # Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;
    .param p3, "restartPopupAnimationView"    # Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;
    .param p4, "airplanePopupAnimationView"    # Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    .line 2245
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    .line 2246
    iput-object p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    .line 2247
    iput-object p4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    .line 2248
    return-void
.end method

.method public setValue()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2072
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButton:[Landroid/widget/ImageButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonDitance:F

    .line 2073
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$500(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setAirplaneMode(Z)V

    .line 2074
    return-void

    :cond_0
    move v0, v1

    .line 2073
    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 2185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mButtonNum:I

    if-ge v0, v1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mImageButtonAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2187
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->mTextViewAnimSet:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2189
    :cond_0
    return-void
.end method
