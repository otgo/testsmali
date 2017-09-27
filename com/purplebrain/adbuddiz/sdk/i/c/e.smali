.class public final Lcom/purplebrain/adbuddiz/sdk/i/c/e;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;
    }
.end annotation


# instance fields
.field public a:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

.field private b:Lcom/purplebrain/adbuddiz/sdk/d/a;

.field private c:Landroid/media/MediaPlayer;

.field private d:J

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/media/MediaPlayer;J)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0xfa

    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-boolean v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->e:Z

    iput-wide p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->d:J

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->c:Landroid/media/MediaPlayer;

    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->d:J

    invoke-direct {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(J)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/d/a;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    return-object v0
.end method

.method public static varargs a(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/media/MediaPlayer;JI[Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/i/c/e;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p2, p3, p5}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(J[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, p4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/media/MediaPlayer;J)V

    goto :goto_0
.end method

.method public static varargs a(J[Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    const/4 v2, 0x0

    array-length v4, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p2, v3

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a(Ljava/lang/String;J)Lcom/purplebrain/adbuddiz/sdk/i/c/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->b:Lcom/purplebrain/adbuddiz/sdk/d/a;

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a:Lcom/purplebrain/adbuddiz/sdk/i/c/e$a;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->e:Z

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->cancel()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;

    invoke-direct {v1, p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/i/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a()V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->d:J

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABVASTSkippableLinearHelper.onTick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
