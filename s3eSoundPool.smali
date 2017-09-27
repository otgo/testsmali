.class Ls3eSoundPool;
.super Ljava/lang/Object;
.source "s3eSoundPool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "soundpool"


# instance fields
.field private sound_pool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNewSoundPool()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    .line 48
    return-void
.end method

.method protected createOldSoundPool()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    .line 53
    return-void
.end method

.method public sound_pool__init(I)V
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Ls3eSoundPool;->createNewSoundPool()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Ls3eSoundPool;->createOldSoundPool()V

    goto :goto_0
.end method

.method public sound_pool__load(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 57
    const-string v0, "soundpool"

    const-string v1, "sound_pool__load"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 60
    iget-object v1, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, p2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "soundpool"

    const-string v2, "sound_pool__load"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public sound_pool__pause(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 75
    return-void
.end method

.method public sound_pool__play(IFFIIF)I
    .locals 7

    .prologue
    .line 69
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public sound_pool__release()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 100
    return-void
.end method

.method public sound_pool__resume(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 80
    return-void
.end method

.method public sound_pool__set_looping(II)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, p2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 85
    return-void
.end method

.method public sound_pool__stop(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 90
    return-void
.end method

.method public sound_pool__unload(I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ls3eSoundPool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 95
    return-void
.end method
