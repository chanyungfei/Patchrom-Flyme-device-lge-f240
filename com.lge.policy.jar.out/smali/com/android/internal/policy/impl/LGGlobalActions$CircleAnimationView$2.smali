.class Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->hideAnimation(Landroid/view/View;)I
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
    .line 2224
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView$2;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2227
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2228
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2229
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    return-void
.end method
