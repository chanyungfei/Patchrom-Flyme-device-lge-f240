.class Lcom/android/server/display/ColorFadeEx;
.super Lcom/android/server/display/ColorFade;
.source "ColorFadeEx.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorFadeEx"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected captureScreenshotTextureAndSetViewport()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return v0

    .line 77
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorFadeEx;->mTexNamesGenerated:Z

    if-nez v1, :cond_2

    .line 78
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFadeEx;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 79
    const-string v1, "glGenTextures"

    invoke-virtual {p0, v1}, Lcom/android/server/display/ColorFadeEx;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexNamesGenerated:Z

    .line 85
    :cond_2
    new-instance v8, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v8, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 86
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 94
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 95
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexMatrix:[F

    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 96
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 101
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 102
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 103
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 104
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 105
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 106
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/ColorFadeEx;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 112
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayWidth:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFadeEx;->mDisplayHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/ColorFadeEx;->ortho(FFFFFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    move v0, v9

    .line 116
    goto/16 :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    throw v0
.end method

.method public draw(F)Z
    .locals 11
    .param p1, "level"    # F

    .prologue
    .line 35
    iget-boolean v7, p0, Lcom/android/server/display/ColorFadeEx;->mPrepared:Z

    if-nez v7, :cond_0

    .line 36
    const/4 v7, 0x0

    .line 68
    :goto_0
    return v7

    .line 39
    :cond_0
    iget v7, p0, Lcom/android/server/display/ColorFadeEx;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 40
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    invoke-virtual {p0, v7}, Lcom/android/server/display/ColorFadeEx;->showSurface(F)Z

    move-result v7

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->attachEglContext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 44
    const/4 v7, 0x0

    goto :goto_0

    .line 48
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 49
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 52
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, p1

    .line 53
    .local v2, "one_minus_level":F
    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v7, v2

    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 54
    .local v0, "cos":F
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    const/high16 v6, -0x40800000    # -1.0f

    .line 55
    .local v6, "sign":F
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v3, v7, v8

    .line 56
    .local v3, "opacity":F
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p1, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v4

    .line 57
    .local v4, "saturation":F
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    const v8, 0x3f666666    # 0.9f

    add-float v5, v7, v8

    .line 58
    .local v5, "scale":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const v8, 0x3dcccccd    # 0.1f

    add-float v1, v7, v8

    .line 59
    .local v1, "gamma":F
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v1

    invoke-virtual {p0, v3, v7, v4, v5}, Lcom/android/server/display/ColorFadeEx;->drawFaded(FFFF)V

    .line 60
    const-string v7, "drawFrame"

    invoke-virtual {p0, v7}, Lcom/android/server/display/ColorFadeEx;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 61
    const/4 v7, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    goto/16 :goto_0

    .line 54
    .end local v1    # "gamma":F
    .end local v3    # "opacity":F
    .end local v4    # "saturation":F
    .end local v5    # "scale":F
    .end local v6    # "sign":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    .line 64
    .restart local v1    # "gamma":F
    .restart local v3    # "opacity":F
    .restart local v4    # "saturation":F
    .restart local v5    # "scale":F
    .restart local v6    # "sign":F
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/display/ColorFadeEx;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, p0, Lcom/android/server/display/ColorFadeEx;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v7, v8}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    .line 68
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/android/server/display/ColorFadeEx;->showSurface(F)Z

    move-result v7

    goto/16 :goto_0

    .line 66
    .end local v0    # "cos":F
    .end local v1    # "gamma":F
    .end local v2    # "one_minus_level":F
    .end local v3    # "opacity":F
    .end local v4    # "saturation":F
    .end local v5    # "scale":F
    .end local v6    # "sign":F
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/server/display/ColorFadeEx;->detachEglContext()V

    throw v7
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v0

    .line 26
    .local v0, "result":Z
    return v0
.end method
