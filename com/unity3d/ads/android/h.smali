.class final Lcom/unity3d/ads/android/h;
.super Ljava/util/TimerTask;
.source "UnityAds.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    const-string v0, "Refreshing ad plan to get new data"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1184
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 1189
    :goto_0
    return-void

    .line 1186
    :cond_0
    const-string v0, "Refreshing ad plan after current ad"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->j()Z

    goto :goto_0
.end method
