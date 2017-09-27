.class final Lcom/unity3d/ads/android/video/p;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/j;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/j;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->j(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->z(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    .line 557
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoPlaybackStarted()V

    .line 558
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)J

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->x(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/unity3d/ads/android/video/p;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->Start:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 566
    :cond_1
    return-void
.end method
