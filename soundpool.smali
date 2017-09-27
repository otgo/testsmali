.class Lsoundpool;
.super Ljava/lang/Object;
.source "soundpool.java"


# instance fields
.field private sound_pool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sound_pool__init(I)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    .line 33
    return-void
.end method

.method public sound_pool__load(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, p2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public sound_pool__pause(I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 54
    return-void
.end method

.method public sound_pool__play(IFFIIF)I
    .locals 7

    .prologue
    .line 48
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

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
    .line 78
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 79
    return-void
.end method

.method public sound_pool__resume(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 59
    return-void
.end method

.method public sound_pool__set_looping(II)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, p2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 64
    return-void
.end method

.method public sound_pool__stop(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 69
    return-void
.end method

.method public sound_pool__unload(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lsoundpool;->sound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 74
    return-void
.end method
