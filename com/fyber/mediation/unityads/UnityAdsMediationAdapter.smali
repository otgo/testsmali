.class public Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "UnityAdsMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "Applifier"
    version = "1.5.2-r2"
.end annotation


# static fields
.field public static final DEBUG_MODE:Ljava/lang/String; = "debug.mode"

.field public static final GAME_ID_KEY:Ljava/lang/String; = "game.id.key"

.field public static final TAG:Ljava/lang/String;

.field public static final ZONE_IDS_INTERSTITIAL:Ljava/lang/String; = "zone.id.interstitial"

.field public static final ZONE_IDS_REWARDED_VIDEO:Ljava/lang/String; = "zone.id.rewarded.video"


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

.field private mInterstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "Applifier"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "1.5.2-r2"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    return-object v0
.end method

.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "UnityAds ad fetched"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onFetchFailed()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 116
    .local v0, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchFailed()V

    goto :goto_0

    .line 118
    .end local v0    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 130
    .local v0, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    goto :goto_0

    .line 132
    .end local v0    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 123
    .local v0, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onShow()V

    goto :goto_0

    .line 125
    .end local v0    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 143
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 144
    .local v0, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    goto :goto_0

    .line 146
    .end local v0    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/IUnityAdsListener;

    .line 137
    .local v0, "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    goto :goto_0

    .line 139
    .end local v0    # "listener":Lcom/unity3d/ads/android/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 39
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting UnityAds (former Applifier) adapter - SDK version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 40
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, "game.id.key"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "gameKey":Ljava/lang/String;
    const-string v4, "zone.id.interstitial"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "interstitialZoneIds":Ljava/lang/String;
    const-string v4, "zone.id.rewarded.video"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, "rewardedVideoZoneIds":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Game key is missing. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return v3

    .line 49
    :cond_0
    const-string v4, "[1-9][0-9]*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 50
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Game key value is not valid. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    .line 55
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    new-instance v4, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-direct {v4, p0, p2}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    .line 57
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-virtual {v4, v1}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setZoneId(Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    new-instance v4, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, p2, v5}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;-><init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    .line 63
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-virtual {v4, v2}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->setZoneId(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->mAvailableAdListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "No valid zone id provided. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v4, "debug.mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-class v5, Ljava/lang/Boolean;

    invoke-static {p2, v4, v3, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAds;->setDebugMode(Z)V

    .line 73
    invoke-static {p1, v0, p0}, Lcom/unity3d/ads/android/UnityAds;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/android/IUnityAdsListener;)V

    .line 74
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 76
    const/4 v3, 0x1

    goto :goto_0
.end method
