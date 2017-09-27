.class public Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
.super Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.source "UnityAdsInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;",
        ">;",
        "Lcom/unity3d/ads/android/IUnityAdsListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityAdsInterstitialAdapter"


# instance fields
.field private mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 28
    return-void
.end method

.method private getOptionsMaps()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v7, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "noOfferScreen"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "openAnimated"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "sid"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "muteVideoSounds"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "useDeviceOrientationForVideo"

    aput-object v8, v3, v7

    .line 103
    .local v3, "keys":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    array-length v7, v3

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    .local v5, "optionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 106
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getValueFromConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 107
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 108
    const-string v7, "sid"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 111
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private getValueFromConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v1, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdAvailable()V

    .line 56
    :cond_0
    return-void
.end method

.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 66
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "UnityAdsInterstitialAdapter"

    const-string v1, "Ads available"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdAvailable()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "UnityAdsInterstitialAdapter"

    const-string v1, "Cannot show ads"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFetchFailed()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "UnityAdsInterstitialAdapter"

    const-string v1, "Fetch failed - no ads to display"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "fetch failed"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireCloseEvent()V

    .line 83
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 88
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 91
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneIds"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 35
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 37
    invoke-direct {p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getOptionsMaps()Ljava/util/Map;

    move-result-object v0

    .line 38
    .local v0, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, "UnityAdsInterstitialAdapter"

    const-string v2, "Error while trying to show interstitial"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "No internet connection"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 48
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 45
    :cond_1
    const-string v1, "UnityAdsInterstitialAdapter"

    const-string v2, "UnityAds can\'t show ads"

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "Can\'t show ads"

    invoke-virtual {p0, v1}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
