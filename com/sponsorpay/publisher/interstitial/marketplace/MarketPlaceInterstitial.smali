.class public Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;
.super Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.source "MarketPlaceInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sponsorpay/mediation/SPMediationUserActivityListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/marketplace/a;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/sponsorpay/mediation/SPMediationUserActivityListener;"
    }
.end annotation


# static fields
.field protected static final CREATE_WEBVIEW:I = 0x0

.field protected static final LOAD_HTML:I = 0x1


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/sponsorpay/view/close/a;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/marketplace/a;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 69
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/a;-><init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b:Landroid/webkit/WebView;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->h:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 42
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sponsorpay/view/close/a;

    invoke-direct {v0, p1}, Lcom/sponsorpay/view/close/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->i:Lcom/sponsorpay/view/close/a;

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->i:Lcom/sponsorpay/view/close/a;

    invoke-virtual {v0}, Lcom/sponsorpay/view/close/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->i:Lcom/sponsorpay/view/close/a;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/sponsorpay/view/close/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->i:Lcom/sponsorpay/view/close/a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->i:Lcom/sponsorpay/view/close/a;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/view/close/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "placementId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v0, "MarketPlaceInterstitial"

    const-string v1, "App and user ID, must no be empty. Offerwall cannot open."

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v3, ""

    iget-object v4, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    invoke-static {v0, v2, v3, v4}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    invoke-static {v2, v3, v1, v4}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireShowErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->c:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/b;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/b;-><init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->c:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->c:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireCloseEvent()V

    .line 301
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a()V

    .line 302
    return-void
.end method

.method static synthetic c(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireClickEvent()V

    return-void
.end method

.method static synthetic e(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public isAdAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/a;)Z
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a()V

    .line 106
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "html"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->h:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 109
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "orientation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->f:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "rotation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->g:Ljava/lang/String;

    .line 112
    if-eqz v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 115
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->setAdAvailable()V

    .line 121
    :cond_1
    return v1
.end method

.method public notifyOnBackPressed()Z
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b()V

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public notifyOnHomePressed()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b()V

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->b()V

    .line 297
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 126
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    .line 128
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/HostInfo;->hasDeviceRevserseOrientation()Z

    move-result v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->f:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_3

    if-ne v0, v4, :cond_2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->e:Landroid/app/Activity;

    check-cast v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->setMarketPlaceInterstitialListener(Lcom/sponsorpay/mediation/SPMediationUserActivityListener;)V

    .line 134
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireImpressionEvent()V

    .line 140
    return v4

    .line 128
    :cond_2
    invoke-direct {p0, v4}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->f:Ljava/lang/String;

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_7

    if-ne v0, v7, :cond_6

    invoke-direct {p0, v8}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v6}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-direct {p0, v8}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v6}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->a(I)V

    goto :goto_0
.end method
