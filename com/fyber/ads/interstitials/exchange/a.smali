.class public final Lcom/fyber/ads/interstitials/exchange/a;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "ExchangeInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fyber/mediation/MediationUserActivityListener;
.implements Lcom/fyber/requesters/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/exchange/a;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/fyber/mediation/MediationUserActivityListener;",
        "Lcom/fyber/requesters/RequestCallback;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/fyber/views/close/a;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/exchange/a;)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/interstitials/exchange/b;

    invoke-direct {v2, p0}, Lcom/fyber/ads/interstitials/exchange/b;-><init>(Lcom/fyber/ads/interstitials/exchange/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->a:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fyber/ads/interstitials/exchange/a;->b:Landroid/webkit/WebView;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 255
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->h:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 355
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 43
    .line 2221
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    .line 2225
    new-instance v0, Lcom/fyber/views/close/a;

    invoke-direct {v0, p1}, Lcom/fyber/views/close/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->i:Lcom/fyber/views/close/a;

    .line 2226
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->i:Lcom/fyber/views/close/a;

    invoke-virtual {v0}, Lcom/fyber/views/close/a;->a()I

    move-result v0

    .line 2227
    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/a;->i:Lcom/fyber/views/close/a;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/views/close/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2231
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2235
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2237
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/a;->i:Lcom/fyber/views/close/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2240
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->i:Lcom/fyber/views/close/a;

    invoke-virtual {v0, p0}, Lcom/fyber/views/close/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/exchange/a;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 3259
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3261
    const-string v1, "ExchangeInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Placement ID - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-static {p0}, Lcom/fyber/requesters/OfferWallRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/OfferWallRequester;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fyber/requesters/OfferWallRequester;->closeOnRedirect(Z)Lcom/fyber/requesters/OfferWallRequester;

    move-result-object v1

    .line 3264
    invoke-virtual {v1, v0}, Lcom/fyber/requesters/OfferWallRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/OfferWallRequester;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/OfferWallRequester;->request(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/exchange/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/exchange/a;->fireShowErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 43
    .line 3156
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->c:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 3158
    new-instance v0, Lcom/fyber/ads/interstitials/exchange/c;

    invoke-direct {v0, p0}, Lcom/fyber/ads/interstitials/exchange/c;-><init>(Lcom/fyber/ads/interstitials/exchange/a;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->c:Landroid/webkit/WebViewClient;

    .line 3216
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->c:Landroid/webkit/WebViewClient;

    .line 43
    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/exchange/a;->fireCloseEvent()V

    .line 290
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/exchange/a;->a()V

    .line 291
    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/interstitials/exchange/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/fyber/ads/interstitials/exchange/a;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/exchange/a;->fireClickEvent()V

    return-void
.end method

.method static synthetic e(Lcom/fyber/ads/interstitials/exchange/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/exchange/a;->a()V

    .line 107
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "html"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->h:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 110
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "orientation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->f:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "rotation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->g:Ljava/lang/String;

    .line 113
    if-eqz v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 116
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 117
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/exchange/a;->setAdAvailable()V

    .line 122
    :cond_1
    return v1
.end method

.method protected final checkForAds(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final notifyOnBackPressed()Z
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/exchange/a;->b()V

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyOnHomePressed()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/exchange/a;->b()V

    .line 278
    return-void
.end method

.method public final onAdAvailable(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/exchange/a;->b()V

    .line 286
    return-void
.end method

.method public final onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected final show(Landroid/app/Activity;)Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 127
    .line 1145
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1146
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1147
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    iput-object p1, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    .line 1301
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1302
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/utils/h;->c()Z

    move-result v1

    .line 1304
    iget-object v2, p0, Lcom/fyber/ads/interstitials/exchange/a;->f:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1306
    if-eqz v1, :cond_3

    .line 1308
    if-ne v0, v4, :cond_2

    .line 1309
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/fyber/ads/interstitials/InterstitialActivity;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/fyber/ads/interstitials/exchange/a;->e:Landroid/app/Activity;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->setMarketPlaceInterstitialListener(Lcom/fyber/mediation/MediationUserActivityListener;)V

    .line 135
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    iget-object v1, p0, Lcom/fyber/ads/interstitials/exchange/a;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/exchange/a;->fireImpressionEvent()V

    .line 141
    return v4

    .line 1311
    :cond_2
    invoke-direct {p0, v4}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1318
    :cond_3
    if-ne v0, v7, :cond_4

    .line 1319
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1321
    :cond_4
    invoke-direct {p0, v4}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1325
    :cond_5
    iget-object v2, p0, Lcom/fyber/ads/interstitials/exchange/a;->f:Ljava/lang/String;

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    if-eqz v1, :cond_7

    .line 1329
    if-ne v0, v7, :cond_6

    .line 1330
    invoke-direct {p0, v8}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1332
    :cond_6
    invoke-direct {p0, v6}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1339
    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1340
    invoke-direct {p0, v8}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0

    .line 1342
    :cond_8
    invoke-direct {p0, v6}, Lcom/fyber/ads/interstitials/exchange/a;->a(I)V

    goto :goto_0
.end method
