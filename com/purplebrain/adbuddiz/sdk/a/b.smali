.class public final Lcom/purplebrain/adbuddiz/sdk/a/b;
.super Lcom/purplebrain/adbuddiz/sdk/a/f;


# instance fields
.field private D:Lcom/purplebrain/adbuddiz/sdk/k/a$c;

.field protected a:Landroid/webkit/WebView;

.field protected b:Lcom/purplebrain/adbuddiz/sdk/k/a;

.field protected c:Lcom/purplebrain/adbuddiz/sdk/i/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/k/a;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/i/v;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/b$5;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/b$5;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->D:Lcom/purplebrain/adbuddiz/sdk/k/a$c;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/f;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    return-void
.end method

.method protected final a(Landroid/media/MediaPlayer;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/purplebrain/adbuddiz/sdk/a/f;->a(Landroid/media/MediaPlayer;II)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->C:Lcom/purplebrain/adbuddiz/sdk/i/c/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/i/c/b;->a:Ljava/lang/Integer;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/b/f;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->k()V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->b()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->i()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->a:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method protected final c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->l()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    const-string v3, "isVideo"

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected final d()Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->c()Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot find video resource"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->n:Ljava/lang/String;

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected final g()Ljava/lang/Double;
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->g()Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Landroid/widget/ImageButton;
    .locals 1

    iget-boolean v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/f;->h()Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_0
.end method

.method final i()Landroid/webkit/WebView;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v7, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/k/a;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    invoke-direct {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/k/a;-><init>(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/c;)V

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/k/a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/k/a;

    iput-object v7, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->c:Landroid/webkit/WebView;

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/k/a;->a(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/k/a;->a()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/k/a$b;

    invoke-direct {v2, v0, v4}, Lcom/purplebrain/adbuddiz/sdk/k/a$b;-><init>(Lcom/purplebrain/adbuddiz/sdk/k/a;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/k/a$a;

    invoke-direct {v2, v0, v4}, Lcom/purplebrain/adbuddiz/sdk/k/a$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/k/a;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/k/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->D:Lcom/purplebrain/adbuddiz/sdk/k/a$c;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->d:Lcom/purplebrain/adbuddiz/sdk/k/a$c;

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->b:Lcom/purplebrain/adbuddiz/sdk/k/a;

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/f/a/c;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :try_start_2
    invoke-static {v6}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-object v7

    :cond_0
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read ad content from resource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Cannot load end interstitial into WebView."

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/c$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected final j()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x1000000

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->u:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:I

    if-eq v1, v6, :cond_0

    iput v6, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:I

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->s:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->s:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->s:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->s:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->getHeight()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/graphics/RectF;IILandroid/graphics/Rect;Z)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v2, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->addView(Landroid/view/View;I)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/b$1;

    invoke-direct {v2, p0, v0}, Lcom/purplebrain/adbuddiz/sdk/a/b$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;Landroid/view/View;)V

    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->l()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v3

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/e;->b:Lcom/purplebrain/adbuddiz/sdk/f/e;

    if-ne v3, v4, :cond_1

    const/16 v0, 0x64

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    iget-object v6, v6, Lcom/purplebrain/adbuddiz/sdk/d/a;->f:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    aput v6, v3, v4

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/b$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/b$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected final k()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/b;->r()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/b;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/i/v;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->d:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/i/v;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/i/v;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/i/v;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/b$3;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/b$3;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    iput-object v2, v1, Lcom/purplebrain/adbuddiz/sdk/i/v;->b:Lcom/purplebrain/adbuddiz/sdk/i/v$b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->c:Lcom/purplebrain/adbuddiz/sdk/i/v;

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/v;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/a/b$4;

    invoke-direct {v2, p0}, Lcom/purplebrain/adbuddiz/sdk/a/b$4;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/b;)V

    iget-wide v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->v:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->p:Ljava/lang/Long;

    const-string v1, "ABAdBuddizViewAdDisplayer#onEndInterstitialClickListener.onClick"

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/b;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABAdBuddizViewAdDisplayer#onEndInterstitialClickListener.onClick"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
