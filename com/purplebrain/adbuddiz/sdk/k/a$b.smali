.class public final Lcom/purplebrain/adbuddiz/sdk/k/a$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/k/a;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/k/a$b;->a:Lcom/purplebrain/adbuddiz/sdk/k/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/k/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/k/a$b;-><init>(Lcom/purplebrain/adbuddiz/sdk/k/a;)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v1, "adbuddiz"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/k/a$b;->a:Lcom/purplebrain/adbuddiz/sdk/k/a;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/k/a;->b(Lcom/purplebrain/adbuddiz/sdk/k/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Resource \'%s\' is not in the list of additional resources."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "ABHTMLEndInterstitialController#ABWebViewClient.shouldInterceptRequest"

    invoke-static {v2, v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v0, "ABHTMLEndInterstitialController#ABWebViewClient.shouldInterceptRequest"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/octet-stream"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v5, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/k/a$b;->a:Lcom/purplebrain/adbuddiz/sdk/k/a;

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/k/a;->c(Lcom/purplebrain/adbuddiz/sdk/k/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/i/m;->c(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "application/octet-stream"

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "adbuddiz:///click"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/k/a$b;->a:Lcom/purplebrain/adbuddiz/sdk/k/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/k/a;->a(Lcom/purplebrain/adbuddiz/sdk/k/a;)Lcom/purplebrain/adbuddiz/sdk/k/a$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/k/a$c;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "ABHTMLEndInterstitialController#ABWebViewClient.shouldOverrideUrlLoading"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    const-string v1, "ABHTMLEndInterstitialController#ABWebViewClient.shouldOverrideUrlLoading()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
