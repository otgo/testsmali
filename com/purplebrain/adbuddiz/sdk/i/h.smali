.class public final Lcom/purplebrain/adbuddiz/sdk/i/h;
.super Landroid/os/CountDownTimer;


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

.field private b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

.field private c:Lcom/purplebrain/adbuddiz/sdk/c/a;

.field private d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/c/a;Ljava/lang/Integer;)V
    .locals 4

    invoke-static {p1, p2, p4}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iput-object p4, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->d:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->d:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(J)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/c/a;Ljava/lang/Integer;)Lcom/purplebrain/adbuddiz/sdk/i/h;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1, p3}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/i/h;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Lcom/purplebrain/adbuddiz/sdk/c/a;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "so"

    invoke-virtual {p1, v1}, Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    int-to-long v0, v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/i/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABVASTSkippableLinearHelper.getTimeBeforeSkipEnabled()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/i/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/i;Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/h;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTSkippableLinearHelper.onTick()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
