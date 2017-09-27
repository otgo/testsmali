.class public Lcom/jirbo/adcolony/AdColonyInterstitialAd;
.super Lcom/jirbo/adcolony/AdColonyAd;
.source "SourceFile"


# instance fields
.field C:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

.field D:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 29
    sput-boolean v1, Lcom/jirbo/adcolony/a;->D:Z

    .line 30
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 31
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Z

    .line 34
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->m:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 39
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 40
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V

    .line 42
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Z

    .line 44
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->m:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 140
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 141
    const-string v1, "fullscreen"

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->w:Z

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 152
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    sget-boolean v1, Lcom/jirbo/adcolony/a;->D:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->B:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 157
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->C:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->canceled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->x:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v3, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->I:Z

    .line 150
    :goto_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->C:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->x:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v1, v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->x:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v0, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->I:Z

    goto :goto_2

    .line 158
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    :cond_4
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->w:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    .line 163
    sput-boolean v3, Lcom/jirbo/adcolony/a;->E:Z

    .line 164
    return-void
.end method

.method a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/16 v1, 0xc

    sput v1, Lcom/jirbo/adcolony/a;->am:I

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 136
    :goto_0
    return-void

    .line 88
    :cond_0
    sput v3, Lcom/jirbo/adcolony/a;->am:I

    .line 89
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->k:Ljava/lang/String;

    .line 90
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->l:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    sget v0, Lcom/jirbo/adcolony/a;->am:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->g:I

    .line 95
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyInterstitialAd;Lcom/jirbo/adcolony/d;)V

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->f:I

    .line 103
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 104
    :cond_1
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Z

    goto :goto_0

    .line 107
    :cond_2
    sget v0, Lcom/jirbo/adcolony/a;->am:I

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->g:I

    .line 108
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->D:Z

    .line 109
    sget-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$2;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyInterstitialAd$2;-><init>(Lcom/jirbo/adcolony/AdColonyInterstitialAd;Lcom/jirbo/adcolony/d;)V

    .line 119
    sput-boolean v3, Lcom/jirbo/adcolony/a;->E:Z

    .line 120
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->c()Z

    .line 121
    sput-object p0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 123
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 126
    :cond_3
    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 135
    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->f:I

    goto :goto_0
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyInterstitialAd;
    .locals 0
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyAdListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->y:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 52
    return-object p0
.end method
