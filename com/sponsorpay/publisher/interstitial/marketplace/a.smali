.class final Lcom/sponsorpay/publisher/interstitial/marketplace/a;
.super Landroid/os/Handler;
.source "MarketPlaceInterstitial.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 79
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->c(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->c(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
