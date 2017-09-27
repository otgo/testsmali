.class public final Lcom/purplebrain/adbuddiz/sdk/a/e;
.super Lcom/purplebrain/adbuddiz/sdk/a/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

.field private b:Lcom/purplebrain/adbuddiz/sdk/j/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-static {v0, p1, v1}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    return-void
.end method

.method protected final a(Landroid/media/MediaPlayer;II)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/a/a;->h:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-static {v0, p1, v1}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    iget-wide v2, v2, Lcom/purplebrain/adbuddiz/sdk/j/d;->a:J

    long-to-double v2, v2

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->D:D

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    iget-wide v6, v1, Lcom/purplebrain/adbuddiz/sdk/j/d;->b:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->r()V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const-string v3, "Click"

    invoke-static {v3, v2, v1, v0}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->s()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected final a_()V
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/d;->cancel()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/j/d;->onTick(J)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->f:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->f:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->n()V

    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b(Z)V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/d;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->v:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Impression"

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->a:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->b:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    :cond_1
    return-void
.end method

.method protected final b_()V
    .locals 5

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b_()V

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/j/d;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->v:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/j/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/i/c/c;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/j/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABVASTAdDisplayer.prepareTimerForTrackingEvent()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/j/a/b;->a:Lcom/purplebrain/adbuddiz/sdk/j/a/a;

    invoke-static {v1, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/a/a;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->l()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    return-object v0
.end method

.method protected final d()Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/j/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final u()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->u()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v5, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    const-string v3, "so"

    invoke-virtual {v5, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/i/c/d;->b(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)J

    move-result-wide v8

    invoke-static {v0, v5}, Lcom/purplebrain/adbuddiz/sdk/j/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/f;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lcom/purplebrain/adbuddiz/sdk/i/c/e;->a(J[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->t:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->t:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->u:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->s:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/j/e;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->B:Lcom/purplebrain/adbuddiz/sdk/i/c/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;->s:Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c/c;->a(Lcom/purplebrain/adbuddiz/sdk/j/b/b/d;)V

    goto :goto_2
.end method

.method public final w()V
    .locals 1

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->w()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/e;->b:Lcom/purplebrain/adbuddiz/sdk/j/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/j/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method
