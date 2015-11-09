.class public Lcom/android/internal/app/ActivityTriggerTE;
.super Ljava/lang/Object;
.source "ActivityTriggerTE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTriggerTE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private native native_atte_deinit()V
.end method

.method private native native_atte_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_atte_startActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public activityResumeTrigger(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 65
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 67
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTriggerTE;->native_atte_resumeActivity(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public activityStartTrigger(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 55
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 57
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTriggerTE;->native_atte_startActivity(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTriggerTE;->native_atte_deinit()V

    .line 50
    return-void
.end method
