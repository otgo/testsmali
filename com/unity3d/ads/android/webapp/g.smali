.class final Lcom/unity3d/ads/android/webapp/g;
.super Ljava/util/TimerTask;
.source "UnityAdsWebData.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-string v0, "Refreshing ad plan to get new data"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    const-string v0, "Refreshing ad plan after current ad"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b()Z

    goto :goto_0
.end method
