.class final Lcom/sponsorpay/publisher/interstitial/marketplace/b;
.super Lcom/sponsorpay/utils/SPWebClient;
.source "MarketPlaceInterstitial.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sponsorpay/utils/SPWebClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->launchActivityWithUrl(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 204
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Interstitials WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "MarketPlaceInterstitial"

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected final onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected final onTargetActivityStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected final processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 191
    const-string v0, "offerwall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0, p2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/net/Uri;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/sponsorpay/utils/SPWebClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/marketplace/b;->a(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
