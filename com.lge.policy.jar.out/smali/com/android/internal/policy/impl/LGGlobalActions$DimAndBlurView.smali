.class public Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;
.super Landroid/widget/ImageView;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimAndBlurView"
.end annotation


# static fields
.field private static final mBlurFactor:F = 0.8f

.field private static final mDimFactor:I = 0x5


# instance fields
.field private mAnimSpeed:F

.field private mBitmapOut:Landroid/graphics/Bitmap;

.field private mOutput:Landroid/renderscript/Allocation;

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;Landroid/view/View;)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 2350
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 2351
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2343
    const v10, 0x3dcccccd    # 0.1f

    iput v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    .line 2352
    sget v10, Lcom/lge/internal/R$id;->dimBlurView:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2354
    .local v5, "mDimLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2356
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2358
    .local v1, "display":Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 2359
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2360
    iget v8, v9, Landroid/graphics/Point;->x:I

    .line 2361
    .local v8, "screenWidth":I
    iget v7, v9, Landroid/graphics/Point;->y:I

    .line 2362
    .local v7, "screenHeight":I
    const/4 v4, 0x0

    .line 2364
    .local v4, "mBitmapIn":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2365
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 2366
    :cond_0
    invoke-static {v7, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2367
    const/high16 v10, 0x3e800000    # 0.25f

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x5a

    int-to-float v11, v11

    invoke-virtual {p0, v4, v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2368
    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v8, 0x4

    div-int/lit8 v13, v7, 0x4

    invoke-static {v4, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2369
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2376
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2377
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    .line 2379
    invoke-static/range {p2 .. p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v6

    .line 2380
    .local v6, "rs":Landroid/renderscript/RenderScript;
    sget-object v10, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v11, 0x1

    invoke-static {v6, v4, v10, v11}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 2382
    .local v2, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    .line 2384
    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 2385
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v10, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 2387
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->setBottom(I)V

    .line 2388
    return-void

    .line 2371
    .end local v2    # "input":Landroid/renderscript/Allocation;
    .end local v6    # "rs":Landroid/renderscript/RenderScript;
    :cond_1
    invoke-static {v8, v7}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2372
    const/high16 v10, 0x3e800000    # 0.25f

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCurrentRotation:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5a

    int-to-float v11, v11

    invoke-virtual {p0, v4, v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2373
    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v8, 0x4

    div-int/lit8 v13, v7, 0x4

    invoke-static {v4, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2374
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2394
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2395
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 2399
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2401
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2402
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    .line 2403
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 2404
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 2405
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 2406
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2407
    .local v0, "newCanvas":Landroid/graphics/Canvas;
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mAnimSpeed:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2409
    const/4 v0, 0x0

    .line 2411
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$DimAndBlurView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2413
    .end local v0    # "newCanvas":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method public resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F
    .param p3, "degrees"    # F

    .prologue
    .line 2416
    move-object v0, p1

    .line 2417
    .local v0, "temp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2418
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 2419
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 2420
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2421
    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2424
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2426
    .local v8, "temp2":Landroid/graphics/Bitmap;
    if-eq v0, v8, :cond_0

    .line 2427
    move-object v0, v8

    .line 2433
    .end local v8    # "temp2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 2429
    :catch_0
    move-exception v7

    .line 2430
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
