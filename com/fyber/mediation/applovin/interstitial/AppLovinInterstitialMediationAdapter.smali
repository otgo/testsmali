.class public Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AppLovinInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;",
        ">;",
        "Lcom/applovin/sdk/AppLovinAdLoadListener;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
        "Lcom/applovin/sdk/AppLovinAdClickListener;"
    }
.end annotation


# instance fields
.field private mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

.field private mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

.field private mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 32
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 33
    iget-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireClickEvent()V

    .line 92
    iget-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    .line 93
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 80
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireCloseEvent()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 86
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    .line 65
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->setAdAvailable()V

    .line 66
    return-void
.end method

.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 59
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    .line 71
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applovin failedToReceiveAd with errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    if-nez v1, :cond_0

    .line 39
    const-string v1, "Internal adapter error - the Applovin interstitial ad was null"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 53
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v1, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 44
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 45
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 47
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->isAdReadyToDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    const-string v1, "The Applovin interstitial ad is not ready to display yet"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method
