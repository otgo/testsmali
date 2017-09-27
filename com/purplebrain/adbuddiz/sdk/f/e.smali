.class public final Lcom/purplebrain/adbuddiz/sdk/f/e;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/f/c;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/c;)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->b(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/f/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "mraid"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/c;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABWebViewClient.onLoadResource()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/f/g;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ABWebViewClient.onPageFinished"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABWebViewClient.onPageFinished()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/f/g;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "application/octet-stream"

    move-object v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/g;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/purplebrain/adbuddiz/sdk/f/g;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABMRAIDController#ABWebViewClient.shouldInterceptRequest"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/f/g;->a()V

    :cond_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/octet-stream"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

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

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/f/e;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->c(Lcom/purplebrain/adbuddiz/sdk/f/c;)Lcom/purplebrain/adbuddiz/sdk/f/f;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/f;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ABWebViewClient.shouldOverrideUrlLoading"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABWebViewClient.shouldOverrideUrlLoading()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
