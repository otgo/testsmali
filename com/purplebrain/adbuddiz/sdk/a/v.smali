.class final Lcom/purplebrain/adbuddiz/sdk/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/a/p;->r:Z

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Error while playing the media. What: %d. Extra: %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    iget-object v5, v3, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    if-nez v5, :cond_4

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/p;->x:Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/a/p;->p:Landroid/media/MediaPlayer;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/i/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/i/a/a;

    invoke-static {v1, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/i/a/a;)V

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/a/p;->c(Lcom/purplebrain/adbuddiz/sdk/a/p;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Position: %d / %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    iget-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/i/j;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    iget-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/i/j;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/v;->a:Lcom/purplebrain/adbuddiz/sdk/a/p;

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/a/p;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/purplebrain/adbuddiz/sdk/a/j;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return v2

    :cond_4
    iget-object v5, v3, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    iget-wide v6, v5, Lcom/purplebrain/adbuddiz/sdk/i/j;->a:J

    long-to-double v6, v6

    iget-wide v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/b;->A:D

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/a/p;->t:Lcom/purplebrain/adbuddiz/sdk/i/j;

    iget-wide v8, v3, Lcom/purplebrain/adbuddiz/sdk/i/j;->b:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v8, v8

    mul-double/2addr v4, v8

    cmpg-double v3, v6, v4

    if-ltz v3, :cond_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer#OnErrorListener.onError()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
