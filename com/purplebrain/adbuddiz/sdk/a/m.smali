.class public final Lcom/purplebrain/adbuddiz/sdk/a/m;
.super Lcom/purplebrain/adbuddiz/sdk/a/e;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:Lcom/purplebrain/adbuddiz/sdk/f/c;

.field private p:Lcom/purplebrain/adbuddiz/sdk/f/b;

.field private q:Lcom/purplebrain/adbuddiz/sdk/f/i;

.field private r:Lcom/purplebrain/adbuddiz/sdk/f/g;

.field private s:Lcom/purplebrain/adbuddiz/sdk/f/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/n;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/n;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/m;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->r:Lcom/purplebrain/adbuddiz/sdk/f/g;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/a/o;

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/a/o;-><init>(Lcom/purplebrain/adbuddiz/sdk/a/m;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->s:Lcom/purplebrain/adbuddiz/sdk/f/f;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/m;)Lcom/purplebrain/adbuddiz/sdk/f/i;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    return-object v0
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/a/m;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/m;->g()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDAdDisplayer.openUri()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/a/m;)Lcom/purplebrain/adbuddiz/sdk/f/b;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    return-object v0
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/a/m;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/a/m;->g()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDAdDisplayer.playVideo()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->v:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->w:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    invoke-direct {v0, p3, p4, v1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/i;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/a/l;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    iget-wide v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->j:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/i;->a(ZJ)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/purplebrain/adbuddiz/sdk/a/e;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-virtual {v1, v5}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->t:Ljava/lang/Long;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "canClose"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-virtual {v1, v4}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Z)V

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->h:Lcom/purplebrain/adbuddiz/sdk/c/a;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a(Lcom/purplebrain/adbuddiz/sdk/c/a;)Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iput-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/f/b;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->i:Lcom/purplebrain/adbuddiz/sdk/a/l;

    invoke-interface {v0, p3, p4, v5}, Lcom/purplebrain/adbuddiz/sdk/a/l;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "canClose"

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->q:Lcom/purplebrain/adbuddiz/sdk/f/i;

    const-string v1, "MRAID_shouldSendImpression"

    iget-boolean v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/i;->f:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v7, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->b:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    invoke-direct {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/a/i;)V

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->s:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->h:Lcom/purplebrain/adbuddiz/sdk/f/f;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->r:Lcom/purplebrain/adbuddiz/sdk/f/g;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->i:Lcom/purplebrain/adbuddiz/sdk/f/g;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/l;->a:Lcom/purplebrain/adbuddiz/sdk/f/l;

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->d:Lcom/purplebrain/adbuddiz/sdk/f/l;

    iput-boolean v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    iput-boolean v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->f:Z

    iput-object v7, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/e;

    invoke-direct {v2, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/f/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/c;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-direct {v2, v0, v5}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/c;B)V

    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a()V

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/a;

    invoke-direct {v2, v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    invoke-static {v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Landroid/webkit/WebView;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    const-string v2, "_setSupportFor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "inlineVideo"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "true"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/e/f;

    move-result-object v2

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-static {v3, v4, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;Lcom/purplebrain/adbuddiz/sdk/e/f;)Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/d/k;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a/a;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :try_start_2
    invoke-static {v6}, Lcom/purplebrain/adbuddiz/sdk/h/v;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

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

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->l:Lcom/purplebrain/adbuddiz/sdk/a/j;

    invoke-interface {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/a/j;->a(Ljava/lang/Throwable;)V

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
    .locals 3

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->j()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/f/l;->e:Lcom/purplebrain/adbuddiz/sdk/f/l;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/l;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->p:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;->cancel()V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected final m()Lcom/purplebrain/adbuddiz/sdk/c/a;
    .locals 6

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    invoke-super {p0}, Lcom/purplebrain/adbuddiz/sdk/a/e;->m()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Ljava/lang/Double;)V

    :cond_0
    return-object v1
.end method

.method public final onGlobalLayout()V
    .locals 12

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-virtual {v3}, Lcom/purplebrain/adbuddiz/sdk/f/c;->b()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v6, v6, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v6, v6, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    if-nez v6, :cond_9

    :cond_1
    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

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

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

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

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v4, v6, :cond_2

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget-object v6, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eq v4, v6, :cond_4

    :cond_2
    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

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

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

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

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v6, Lcom/purplebrain/adbuddiz/sdk/f/h;->e:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    :cond_3
    iput-object v5, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->g:Landroid/graphics/Point;

    :cond_4
    iget-object v4, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v3, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    move v3, v2

    :goto_2
    iget-boolean v5, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->f:Z

    if-eq v5, v3, :cond_5

    iput-boolean v3, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->f:Z

    iget-object v5, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    const-string v6, "_setVisible"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    if-eqz v5, :cond_5

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v5, Lcom/purplebrain/adbuddiz/sdk/f/h;->d:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v3, v3, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    if-nez v3, :cond_b

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/l;->b:Lcom/purplebrain/adbuddiz/sdk/f/l;

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/l;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a/m;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    iget-boolean v3, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    if-nez v3, :cond_7

    iput-boolean v2, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->e:Z

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->c:Lcom/purplebrain/adbuddiz/sdk/f/a;

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/h;->a:Lcom/purplebrain/adbuddiz/sdk/f/h;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Lcom/purplebrain/adbuddiz/sdk/f/h;[Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/graphics/Point;->x:I

    iget-object v4, v3, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_a
    move v3, v1

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->b()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v4, v4, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->h:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->a:Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    iget-object v5, v5, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->g:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, v4

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v4

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    iget-object v4, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

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

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/c;->b:Landroid/webkit/WebView;

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
