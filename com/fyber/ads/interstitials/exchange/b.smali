.class final Lcom/fyber/ads/interstitials/exchange/b;
.super Ljava/lang/Object;
.source "ExchangeInterstitial.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fyber/ads/interstitials/exchange/a;


# direct methods
.method constructor <init>(Lcom/fyber/ads/interstitials/exchange/a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return v6

    .line 74
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 76
    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 78
    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v1, v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v1}, Lcom/fyber/ads/interstitials/exchange/a;->b(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->c(Lcom/fyber/ads/interstitials/exchange/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/ads/interstitials/exchange/b;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v2}, Lcom/fyber/ads/interstitials/exchange/a;->c(Lcom/fyber/ads/interstitials/exchange/a;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
