.class final Lcom/fyber/ads/videos/i;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/webkit/WebView;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 529
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->i(Lcom/fyber/ads/videos/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 530
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 532
    invoke-static {v1}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebSettings;)V

    .line 533
    invoke-static {v0}, Lcom/fyber/utils/x;->a(Landroid/webkit/WebView;)V

    .line 535
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 536
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 538
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 540
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 541
    const-string v2, "Mozilla/5.0 (X11; CrOS i686 4319.74.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 (Sponsorpay SDK)"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 550
    iget-object v1, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->j(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 552
    iget-object v1, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->k(Lcom/fyber/ads/videos/c;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 554
    iget-object v1, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->l(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/mediation/d;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v2}, Lcom/fyber/ads/videos/c;->l(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/mediation/d;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SynchJS"

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/fyber/ads/videos/i;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method
