.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGGlobalActionsDialog"
.end annotation


# instance fields
.field private mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

.field private mCancelOnUp:Z

.field private mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

.field private final mContext:Landroid/content/Context;

.field private mDimAndBlurView:Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;

.field private mDisIntercepted:Z

.field private mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

.field private mDismissOnTouch:Z

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

.field private mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

.field private mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

.field private final mWindowTouchSlop:I

.field private mWm:Landroid/view/IWindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    const/4 v5, 0x0

    .line 1769
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 1770
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1772
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1774
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2502(Lcom/android/internal/policy/impl/LGGlobalActions;I)I

    .line 1775
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    .line 1777
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    :goto_0
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1784
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$layout;->power_layout_land:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1785
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationLandView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    .line 1791
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 1793
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurView:Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;

    .line 1795
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    .line 1797
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    .line 1799
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    .line 1801
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    .line 1803
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    .line 1804
    return-void

    .line 1778
    .end local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception freezeRotation, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$layout;->power_layout_portrait:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1789
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 1956
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$902(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1957
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsExpanded:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2602(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 1959
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :goto_0
    const-string v1, "LGGlobalActions"

    const-string v2, "dismiss LGGlobalActionDialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1965
    return-void

    .line 1960
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LGGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thawRotation, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsExpanded:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1951
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    :cond_1
    :goto_1
    return v14

    .line 1848
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v4, :cond_f

    .line 1849
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 1850
    .local v10, "action":I
    if-nez v10, :cond_7

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v11, v4

    .line 1852
    .local v11, "eventX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v12, v4

    .line 1857
    .local v12, "eventY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 1858
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleLandImageButton1:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1859
    .local v15, "view1":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleLandImageButton2:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1860
    .local v16, "view2":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleLandImageButton3:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1867
    .local v17, "view3":Landroid/view/View;
    :goto_2
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-lt v11, v4, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-lt v12, v4, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-ge v11, v4, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-lt v12, v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-lt v12, v4, :cond_6

    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-lt v12, v4, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-lt v12, v4, :cond_6

    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-lt v12, v4, :cond_7

    .line 1873
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1877
    .end local v11    # "eventX":I
    .end local v12    # "eventY":I
    .end local v15    # "view1":Landroid/view/View;
    .end local v16    # "view2":Landroid/view/View;
    .end local v17    # "view3":Landroid/view/View;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    if-nez v4, :cond_b

    .line 1878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    .line 1879
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    if-eqz v4, :cond_8

    .line 1880
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1881
    .local v2, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1883
    const/16 v4, 0x1002

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1884
    const-string v4, "Qtalkback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnableAccessibilityController. mCancelOnUp= true, ACTION_CANCEL now : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    .end local v2    # "now":J
    :cond_8
    const/4 v4, 0x1

    if-ne v10, v4, :cond_0

    .line 1892
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_9

    .line 1893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1897
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    goto/16 :goto_0

    .line 1862
    .restart local v11    # "eventX":I
    .restart local v12    # "eventY":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleImageButton1:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1863
    .restart local v15    # "view1":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleImageButton2:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1864
    .restart local v16    # "view2":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/lge/internal/R$id;->powerCircleImageButton3:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "view3":Landroid/view/View;
    goto/16 :goto_2

    .line 1888
    .end local v11    # "eventX":I
    .end local v12    # "eventY":I
    .end local v15    # "view1":Landroid/view/View;
    .end local v16    # "view2":Landroid/view/View;
    .end local v17    # "view3":Landroid/view/View;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 1891
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 1892
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_c

    .line 1893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1897
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    goto/16 :goto_1

    .line 1891
    :catchall_0
    move-exception v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_e

    .line 1892
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v5, :cond_d

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1897
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1898
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    :cond_e
    throw v4

    .line 1901
    .end local v10    # "action":I
    :cond_f
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v4, :cond_0

    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 1904
    .restart local v10    # "action":I
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    if-nez v4, :cond_16

    .line 1905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    if-nez v4, :cond_10

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1907
    new-instance v4, Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/DisableAccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .line 1908
    const-string v4, "Qtalkback"

    const-string v5, "new DisableAccessibilityController"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_11

    .line 1913
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1919
    :cond_11
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    if-eqz v4, :cond_12

    .line 1920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1921
    .restart local v2    # "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1923
    const/16 v4, 0x1002

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1924
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1925
    const-string v4, "Qtalkback"

    const-string v5, "DisableAccessibilityController mCancelOnUp = true, ACTION_CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1940
    .end local v2    # "now":J
    :cond_12
    const/4 v4, 0x1

    if-ne v10, v4, :cond_0

    .line 1941
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_13

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1945
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1946
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_0

    .line 1914
    :catch_0
    move-exception v13

    .line 1915
    .local v13, "ex":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v4, "Qtalkback"

    const-string v5, "IllegalStateException ex : mDisableAccessibilityController.onInterceptTouchEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1940
    .end local v13    # "ex":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_15

    .line 1941
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v5, :cond_14

    .line 1942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1945
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1946
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    :cond_15
    throw v4

    .line 1928
    :cond_16
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_12

    .line 1930
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v14

    .line 1940
    .local v14, "mReturnValue":Z
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 1941
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_17

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1945
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1946
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1

    .line 1932
    .end local v14    # "mReturnValue":Z
    :catch_1
    move-exception v13

    .line 1933
    .restart local v13    # "ex":Ljava/lang/IllegalStateException;
    :try_start_8
    const-string v4, "Qtalkback"

    const-string v5, "IllegalStateException : mDisableAccessibilityController.onTouchEvent(event)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1935
    const/4 v14, 0x0

    .line 1940
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 1941
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_18

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1945
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 1946
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1812
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1820
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    .line 1834
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1835
    return-void

    .line 1823
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    const-string v0, "Qtalkback"

    const-string v1, "canDisableAccessibilityViaGesture result = true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1826
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    goto :goto_0

    .line 1830
    :cond_1
    const-string v0, "Qtalkback"

    const-string v1, "setCanceledOnTouchOutside(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1842
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1843
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2008
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2009
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mSkipDismiss:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2010
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mSkipDismiss:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2702(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2017
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 2011
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsExpanded:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2012
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setValue()V

    .line 1972
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->initStatus()V

    .line 1973
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->initAnimation()V

    .line 1974
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setPopupView(Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;)V

    .line 1978
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setClickListener()V

    .line 1981
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->setValue()V

    .line 1982
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initStatus()V

    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerPopupAnimationView;->initAnimation()V

    .line 1985
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->setValue()V

    .line 1986
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initStatus()V

    .line 1987
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mPowerLongClickPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$PowerLongClickPopupAnimationView;->initAnimation()V

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->setValue()V

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->initStatus()V

    .line 1991
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mRestartPopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$RestartPopupAnimationView;->initAnimation()V

    .line 1993
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->setValue()V

    .line 1994
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initStatus()V

    .line 1995
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAirplanePopupAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AirplanePopupAnimationView;->initAnimation()V

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->startAnimation()V

    .line 1998
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 1999
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCircleAnimationView:Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$CircleAnimationView;->setAirplaneMode(Z)V

    .line 2003
    return-void
.end method
