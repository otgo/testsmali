.class public Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "UnityAdsVideoMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
        ">;",
        "Lcom/unity3d/ads/android/IUnityAdsListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:Ljava/lang/String;

.field private mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;
    .param p3, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 34
    iput-object p3, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->mUserId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->configs:Ljava/util/Map;

    .line 36
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
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "noOfferScreen"

    aput-object v6, v2, v5

    const/4 v6, 0x1

    const-string v7, "openAnimated"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "muteVideoSounds"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "useDeviceOrientationForVideo"

    aput-object v7, v2, v6

    .line 117
    .local v2, "keys":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    array-length v6, v2

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    .local v3, "optionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 119
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->configs:Ljava/util/Map;

    const-class v8, Ljava/lang/String;

    invoke-static {v7, v1, v8}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v5, "sid"

    iget-object v6, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v5, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Default UnityAds UserID will be used"

    invoke-static {v5, v6}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onFetchCompleted()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onFetchFailed()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->notifyCloseEngagement()V

    .line 89
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->notifyVideoStarted()V

    .line 94
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "rewardItemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->setVideoPlayed()V

    .line 101
    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneIds"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 56
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 58
    invoke-direct {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->getOptionsMaps()Ljava/util/Map;

    move-result-object v0

    .line 59
    .local v0, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->notifyVideoError()V

    .line 66
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 42
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 48
    :goto_1
    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_1
.end method
