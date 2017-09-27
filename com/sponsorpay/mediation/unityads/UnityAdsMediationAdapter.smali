.class public Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "UnityAdsMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "Applifier"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "1.4.7-r1"

.field public static final DEBUG_MODE:Ljava/lang/String; = "debug.mode"

.field public static final GAME_ID_KEY:Ljava/lang/String; = "game.id.key"

.field private static final TAG:Ljava/lang/String; = "UnityAdsAdapter"

.field private static final ZONE_IDS_INTERSTITIAL:Ljava/lang/String; = "zone.id.interstitial"

.field private static final ZONE_IDS_REWARDED_VIDEO:Ljava/lang/String; = "zone.id.rewarded.video"


# instance fields
.field private mAvailableAdListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/ads/android/IUnityAdsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    return-void
.end method

.method private getDebugMode()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 176
    const-string v0, "Applifier"

    const-string v1, "debug.mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private getZoneId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "selectedZoneId"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v1, "Applifier"

    const-class v2, Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "zoneId":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "Applifier"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "1.4.7-r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onFetchCompleted()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 121
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchCompleted()V

    goto :goto_0

    .line 123
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onFetchFailed()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 128
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    goto :goto_0

    .line 130
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 141
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 142
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    goto :goto_0

    .line 144
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 135
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onShow()V

    goto :goto_0

    .line 137
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 155
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 156
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1, p1, p2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 158
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 149
    .local v1, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v1}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    goto :goto_0

    .line 151
    .end local v1    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 46
    const-string v4, "UnityAdsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting UnityAds (former Applifier) adapter - SDK version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "Applifier"

    const-string v5, "game.id.key"

    const-class v6, Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "gameKey":Ljava/lang/String;
    const-string v4, "zone.id.interstitial"

    invoke-direct {p0, v4}, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->getZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "interstitialZoneIds":Ljava/lang/String;
    const-string v4, "zone.id.rewarded.video"

    invoke-direct {p0, v4}, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->getZoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "rewardedVideoZoneIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "UnityAdsAdapter"

    const-string v5, "Game key is missing. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return v3

    .line 59
    :cond_0
    const-string v4, "[1-9][0-9]*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    const-string v4, "UnityAdsAdapter"

    const-string v5, "Game key value is not valid. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    .line 65
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-direct {v4, p0}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;)V

    iput-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    .line 67
    iget-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-virtual {v4, v1}, Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setZoneId(Ljava/lang/String;)V

    .line 68
    iget-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    new-instance v4, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    invoke-direct {v4, p0}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;-><init>(Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;)V

    iput-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    .line 72
    iget-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    invoke-virtual {v4, v2}, Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;->setZoneId(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/unityads/mbe/UnityAdsVideoMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    iget-object v4, p0, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    const-string v4, "UnityAdsAdapter"

    const-string v5, "No valid zone id provided. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_4
    invoke-direct {p0}, Lcom/sponsorpay/mediation/unityads/UnityAdsMediationAdapter;->getDebugMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 84
    invoke-static {p1, v0, p0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 85
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 86
    const/4 v3, 0x1

    goto :goto_0
.end method
