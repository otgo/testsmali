.class public Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;
.super Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.source "AppLovinIntersitialMediationAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;",
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
.method public constructor <init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 33
    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 34
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireClickEvent()V

    .line 93
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->dismiss()V

    .line 94
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireImpressionEvent()V

    .line 81
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireCloseEvent()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 87
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    .line 66
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->setAdAvailable()V

    .line 67
    return-void
.end method

.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 60
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    .line 72
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applovin failedToReceiveAd with errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    if-nez v1, :cond_0

    .line 40
    const-string v1, "Internal adapter error - the Applovin interstitial ad was null"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v1, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 45
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 46
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 48
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->isAdReadyToDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    const-string v1, "The Applovin interstitial ad is not ready to display yet"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mInterstitialDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;->mAppLovinAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
