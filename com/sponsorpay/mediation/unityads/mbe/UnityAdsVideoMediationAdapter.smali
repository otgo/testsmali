.class public Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.source "UnityAdsVideoMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;",
        ">;",
        "Lcom/unity3d/ads/android/IUnityAdsListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityAdsVideoAdapter"


# instance fields
.field private campaignAvailable:Z

.field private mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 33
    return-void
.end method

.method private getOptionsMaps()Ljava/util/Map;
    .locals 10
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
    .line 108
    const/4 v8, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "noOfferScreen"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "openAnimated"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "muteVideoSounds"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "useDeviceOrientationForVideo"

    aput-object v9, v4, v8

    .line 112
    .local v4, "keys":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    array-length v8, v4

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    .local v6, "optionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 114
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->getValueFromConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 115
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 116
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v8, "sid"

    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-object v6

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v8, "UnityAdsVideoAdapter"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v8, "UnityAdsVideoAdapter"

    const-string v9, "Default UnityAds UserID will be used"

    invoke-static {v8, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private getValueFromConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v1, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 134
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
.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 68
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "UnityAdsVideoAdapter"

    const-string v1, "RV is available"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->campaignAvailable:Z

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "UnityAdsVideoAdapter"

    const-string v1, "Cannot show ads"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFetchFailed()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->campaignAvailable:Z

    .line 79
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->notifyCloseEngagement()V

    .line 84
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->notifyVideoStarted()V

    .line 89
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->setVideoPlayed()V

    .line 96
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneIds"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 47
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 49
    invoke-direct {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->getOptionsMaps()Ljava/util/Map;

    move-result-object v0

    .line 50
    .local v0, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->notifyVideoError()V

    .line 58
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->campaignAvailable:Z

    .line 56
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->campaignAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    .line 39
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    goto :goto_0
.end method
