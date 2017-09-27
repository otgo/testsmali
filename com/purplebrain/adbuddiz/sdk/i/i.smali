.class public final Lcom/purplebrain/adbuddiz/sdk/i/i;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/c/a;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lcom/purplebrain/adbuddiz/sdk/e/b;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/media/MediaPlayer;)V
    .locals 4

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->a:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->c:Lcom/purplebrain/adbuddiz/sdk/e/b;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->c:Lcom/purplebrain/adbuddiz/sdk/e/b;

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->u:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->e:Ljava/lang/Integer;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->a:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/i;->d:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTStuckMediaPlayerDetector.onTick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
