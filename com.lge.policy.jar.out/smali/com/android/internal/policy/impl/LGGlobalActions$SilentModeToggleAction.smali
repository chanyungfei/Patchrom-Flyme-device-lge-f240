.class Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 6

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 1032
    const v1, 0x108032d

    const v2, 0x108032c

    const v3, 0x104012d

    const v4, 0x104012e

    const v5, 0x104012f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1037
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x1

    return v0
.end method