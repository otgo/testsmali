.class final Lcom/fyber/ads/interstitials/exchange/c;
.super Lcom/fyber/utils/v;
.source "ExchangeInterstitial.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/interstitials/exchange/a;


# direct methods
.method constructor <init>(Lcom/fyber/ads/interstitials/exchange/a;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/utils/v;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    .line 1187
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->e(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/app/Activity;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->d(Lcom/fyber/ads/interstitials/exchange/a;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/exchange/c;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/exchange/a;->e(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p2}, Lcom/fyber/ads/interstitials/exchange/c;->c(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 192
    const-string v0, "offerwall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v0, p2}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/net/Uri;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 205
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Interstitials WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 205
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "ExchangeInterstitial"

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/c;->a:Lcom/fyber/ads/interstitials/exchange/a;

    invoke-static {v1, v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(Lcom/fyber/ads/interstitials/exchange/a;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/fyber/utils/v;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0, p2}, Lcom/fyber/ads/interstitials/exchange/c;->c(Ljava/lang/String;)V

    .line 166
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
