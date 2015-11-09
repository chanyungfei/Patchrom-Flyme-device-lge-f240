.class public Landroid/media/AudioManagerEx;
.super Landroid/media/AudioManager;
.source "AudioManagerEx.java"


# static fields
.field public static final ACTION_AUDIO_STOP_NOTIFICATION:Ljava/lang/String; = "com.lge.media.STOP_NOTIFICATION"

.field public static DEFAULT_STREAM_VOLUME_Ex:[I = null

.field public static final FLAG_DEAD_OBJECT:I = -0x64

.field public static final FLAG_EXPAND_VOLUME_PANEL:I = 0x2000

.field public static final FLAG_IGNORE_QUIET_MODE_WARNING:I = 0x800

.field public static final FLAG_KEEP_RINGER_MODES:I = 0x1000

.field public static final FLAG_TURNOFF_ALL_SOUNDS:I = 0x4000

.field public static final FX_SWITCH_OFF:I = 0xb

.field public static final FX_SWITCH_ON:I = 0xa

.field public static final SPEAKER_PHONE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.media.SPEAKER_PHONE_CHANGED_ACTION"

.field public static final STREAM_INCALL_MUSIC:I = 0xa

.field private static sService:Landroid/media/IAudioServiceEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xc

    sput v0, Landroid/media/AudioManagerEx;->NUM_SOUND_EFFECTS:I

    .line 116
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioManagerEx;->DEFAULT_STREAM_VOLUME_Ex:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x5
        0x7
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 136
    sget-object v0, Landroid/media/AudioManagerEx;->DEFAULT_STREAM_VOLUME_Ex:[I

    sput-object v0, Landroid/media/AudioManagerEx;->DEFAULT_STREAM_VOLUME:[I

    .line 137
    return-void
.end method

.method protected static getServiceEx()Landroid/media/IAudioServiceEx;
    .locals 3

    .prologue
    .line 144
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    .line 153
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_0
    return-object v1

    .line 148
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServiceEx;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    sget-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v2, "AudioServiceEx is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeRecordHooking(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-static {v0, v0, v0}, Lcom/lge/media/LGAudioSystem;->setRecordHookingEnabled(III)Ljava/io/FileDescriptor;

    .line 276
    :cond_0
    return-void
.end method

.method public getActiveStreamType(I)I
    .locals 5
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/16 v2, -0x64

    .line 399
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 400
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 402
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->getActiveStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 409
    :goto_0
    return v2

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "AudioService is null in getActiveStreamType"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 343
    .line 348
    invoke-super {p0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method public getPlayerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 379
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 381
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getPlayerList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 388
    :goto_0
    return-object v2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getPlayerList"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "AudioService is null in getPlayerList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlayerPlayBackState()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 359
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 361
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->getPlayerPlayBackState()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 368
    :goto_0
    return-object v2

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getPlayerPlayBackState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "AudioService is null in getPlayerPlayBackState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBluetoothA2dpInputOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 449
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_A2DP_SINK:Z

    if-eqz v3, :cond_1

    .line 450
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 451
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->isBluetoothA2dpInputOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 464
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :goto_0
    return v2

    .line 454
    .restart local v1    # "service":Landroid/media/IAudioServiceEx;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isBluetoothScoOn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "AudioServiceEx is null in isBluetoothA2dpInputOn"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :cond_1
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Don\'t support this API. Disable A2dp Sink."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 163
    const-string v1, "audiorecording_state"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "isRecording":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSpeakerOnForMedia()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 196
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioServiceEx;->isSpeakerOnForMedia()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 205
    :goto_0
    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isSpeakerOnForMedia"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v4, "AudioService is null in isSpeakerOnForMedia"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openRecordHooking(II)Ljava/io/FileDescriptor;
    .locals 1
    .param p1, "sampleRate"    # I
    .param p2, "flag"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/lge/media/LGAudioSystem;->setRecordHookingEnabled(III)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setBluetoothA2dpInputOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 423
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_A2DP_SINK:Z

    if-eqz v2, :cond_1

    .line 424
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 425
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setBluetoothA2dpInputOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :goto_0
    return-void

    .line 428
    .restart local v1    # "service":Landroid/media/IAudioServiceEx;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothA2dpInputOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "AudioServiceEx is null in setBluetoothA2dpInputOn"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v1    # "service":Landroid/media/IAudioServiceEx;
    :cond_1
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "Don\'t support this API. Disable A2dp Sink."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBluetoothDualMode(Z)Z
    .locals 3
    .param p1, "isDualMode"    # Z

    .prologue
    .line 476
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_A2DP_SINK:Z

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothDualMode() isDualMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2dpSinkDualPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/media/LGAudioSystem;->setParameters(Ljava/lang/String;)I

    .line 482
    .end local p1    # "isDualMode":Z
    :goto_0
    return p1

    .line 481
    .restart local p1    # "isDualMode":Z
    :cond_0
    sget-object v0, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t support this API. A2dp Sink Disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setDSDPDualAudioControl(I)I
    .locals 4
    .param p1, "On"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "ret":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 242
    const-string v1, "DSDP_DUAL_AUDIO=ENABLE"

    invoke-static {v1}, Lcom/lge/media/LGAudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    .line 243
    sget-object v1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v2, "setDSDPDualAudioControl On "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    sget-object v1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDSDPDualAudioControl On "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v0

    .line 246
    :cond_0
    const-string v1, "DSDP_DUAL_AUDIO=DISABLE"

    invoke-static {v1}, Lcom/lge/media/LGAudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    .line 247
    sget-object v1, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v2, "setDSDPDualAudioControl Off "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMABLControl(II)V
    .locals 1
    .param p1, "currentLevel"    # I
    .param p2, "levelMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 228
    const/16 v0, 0x3e

    invoke-static {p1, v0}, Lcom/lge/media/LGAudioSystem;->setMABLControl(II)I

    .line 229
    return-void
.end method

.method public setMABLEnable(I)V
    .locals 0
    .param p1, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/lge/media/LGAudioSystem;->setMABLEnable(I)I

    .line 217
    return-void
.end method

.method public setSpeakerOnForMedia(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 177
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 178
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioServiceEx;->setSpeakerOnForMedia(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerOnForMedia"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "AudioService is null in setSpeakerOnForMedia"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStreamVolumeAll(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 287
    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v1

    .line 288
    .local v1, "service":Landroid/media/IAudioServiceEx;
    if-eqz v1, :cond_1

    .line 290
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManagerEx;->mUseMasterVolume:Z

    if-eqz v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioServiceEx;->setStreamVolumeAll(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolumeAll"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Landroid/media/AudioManagerEx;->TAG:Ljava/lang/String;

    const-string v3, "AudioService is null in getVoiceActivationState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
