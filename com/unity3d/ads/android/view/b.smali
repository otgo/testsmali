.class final Lcom/unity3d/ads/android/view/b;
.super Ljava/lang/Object;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

.field private b:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V
    .locals 1

    .prologue
    .line 562
    iput-object p1, p0, Lcom/unity3d/ads/android/view/b;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/b;->b:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;B)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/view/b;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 571
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 572
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    .line 573
    const-string v0, "Selected campaign found"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 574
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 577
    :try_start_0
    const-string v1, "textKey"

    const-string v2, "buffering"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoStreamUrl()Ljava/lang/String;

    move-result-object v0

    .line 587
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/unity3d/ads/android/view/b;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 594
    iget-object v1, p0, Lcom/unity3d/ads/android/view/b;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v2, p0, Lcom/unity3d/ads/android/view/b;->b:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start videoplayback with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/unity3d/ads/android/view/b;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->a(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->playVideo(Ljava/lang/String;Z)V

    .line 600
    :goto_1
    return-void

    .line 580
    :catch_0
    move-exception v0

    const-string v0, "Couldn\'t create data JSON"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    goto :goto_0

    .line 599
    :cond_1
    const-string v0, "Campaign is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final setVideoPlayerListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/unity3d/ads/android/view/b;->b:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 567
    return-void
.end method
