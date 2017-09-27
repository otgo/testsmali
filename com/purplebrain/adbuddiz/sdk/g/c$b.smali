.class public final Lcom/purplebrain/adbuddiz/sdk/g/c$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/g/c;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/g/c$b;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/c;)V

    return-void
.end method

.method private a(Ljava/net/URL;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;
    .locals 4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/d;->a()Lcom/purplebrain/adbuddiz/sdk/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    move-result-object v1

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Lcom/purplebrain/adbuddiz/sdk/f/a/a/d;ZLcom/purplebrain/adbuddiz/sdk/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;->d()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "mraid"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDController#ABWebViewClient.onLoadResource()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c$d;->b()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDController#ABWebViewClient.onPageFinished"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABMRAIDController#ABWebViewClient.onPageFinished()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/g/c$d;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a(Ljava/net/URL;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->d(Lcom/purplebrain/adbuddiz/sdk/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v3, :cond_1

    if-nez v0, :cond_3

    const-string v0, "application/octet-stream"

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/g/c$d;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDController#ABWebViewClient.shouldInterceptRequest"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->b(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c$d;->a()V

    :cond_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/octet-stream"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v1

    move-object v0, v1

    move-object v3, v1

    goto :goto_1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mraid:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$b;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/g/c;->c(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/g/c$c;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/c$c;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDController#ABWebViewClient.shouldOverrideUrlLoading"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABMRAIDController#ABWebViewClient.shouldOverrideUrlLoading()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
