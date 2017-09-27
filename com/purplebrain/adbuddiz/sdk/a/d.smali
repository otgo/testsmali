.class public final Lcom/purplebrain/adbuddiz/sdk/a/d;
.super Lcom/purplebrain/adbuddiz/sdk/a/c;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/g/c;

.field private b:Lcom/purplebrain/adbuddiz/sdk/g/b;

.field private c:Lcom/purplebrain/adbuddiz/sdk/g/e;

.field private r:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

.field private s:Lcom/purplebrain/adbuddiz/sdk/g/c$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/d$1;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/d$1;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/d;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->r:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/d$2;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/d$2;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/d;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->s:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/e;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    return-object v0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/d;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->r()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->s()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDAdDisplayer.openUri()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/a/d;)Lcom/purplebrain/adbuddiz/sdk/g/b;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    return-object v0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/a/d;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->r()V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/d;->s()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDAdDisplayer.playVideo()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->y:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->z:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    invoke-direct {v0, p3, p4, v1, p2}, Lcom/purplebrain/adbuddiz/sdk/g/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/a/c$d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->j:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/e;->a(ZJ)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/a/c;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v1, v5}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->w:Ljava/lang/Long;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "canClose"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-virtual {v1, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Z)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->j:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/b;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/b;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/g/b;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->k:Lcom/purplebrain/adbuddiz/sdk/a/c$d;

    invoke-interface {v0, p3, p4, v5}, Lcom/purplebrain/adbuddiz/sdk/a/c$d;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "canClose"

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->c:Lcom/purplebrain/adbuddiz/sdk/g/e;

    const-string v1, "MRAID_shouldSendImpression"

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/e;->f:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v7, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    invoke-direct {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;-><init>(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/f;)V

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->s:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->i:Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->r:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->j:Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/g/f;->a:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    iput-boolean v5, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    iput-boolean v5, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->g:Z

    iput-object v7, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/c$b;

    invoke-direct {v2, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/g/c$b;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/c;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/c$a;

    invoke-direct {v2, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/g/c$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/c;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/a;

    invoke-direct {v2, v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Landroid/webkit/WebView;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    const-string v2, "_setSupportFor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "inlineVideo"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "true"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v2

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    invoke-static {v3, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;Lcom/purplebrain/adbuddiz/sdk/f/e;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :try_start_2
    invoke-static {v6}, Lcom/purplebrain/adbuddiz/sdk/i/s;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

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

    :cond_1
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

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->n:Lcom/purplebrain/adbuddiz/sdk/a/c$b;

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

.method protected final b(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 12

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v6, v6, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v6, v6, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    if-nez v6, :cond_9

    :cond_1
    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v6, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, v5, Landroid/graphics/Point;->y:I

    :goto_1
    iget v4, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v4, v6, :cond_2

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eq v4, v6, :cond_4

    :cond_2
    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    const-string v6, "_setMaxSize"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    const-string v6, "_setScreenSize"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v6, Lcom/purplebrain/adbuddiz/sdk/g/d;->e:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    :cond_3
    iput-object v5, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->h:Landroid/graphics/Point;

    :cond_4
    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v3, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    move v3, v2

    :goto_2
    iget-boolean v5, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->g:Z

    if-eq v5, v3, :cond_5

    iput-boolean v3, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->g:Z

    iget-object v5, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    const-string v6, "_setVisible"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    if-eqz v5, :cond_5

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/g/d;->d:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    if-nez v3, :cond_b

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/g/f;->b:Lcom/purplebrain/adbuddiz/sdk/g/f;

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/f;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    if-nez v3, :cond_7

    iput-boolean v2, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->f:Z

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->d:Lcom/purplebrain/adbuddiz/sdk/g/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/g/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/d;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Lcom/purplebrain/adbuddiz/sdk/g/d;[Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/graphics/Point;->x:I

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_a
    move v3, v1

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, v4

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v4

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-double v8, v4

    int-to-double v4, v5

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v10

    mul-double/2addr v4, v10

    div-double v4, v8, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_3
.end method

.method protected final v()V
    .locals 3

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->v()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/g/f;->e:Lcom/purplebrain/adbuddiz/sdk/g/f;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/f;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/g/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/g/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/b;->cancel()V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->d:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected final y()Lcom/purplebrain/adbuddiz/sdk/d/a;
    .locals 6

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/d;->e:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/c;->y()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Ljava/lang/Double;)V

    :cond_0
    return-object v1
.end method
