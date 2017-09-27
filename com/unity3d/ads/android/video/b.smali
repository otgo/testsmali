.class final Lcom/unity3d/ads/android/video/b;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/unity3d/ads/android/video/b;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/unity3d/ads/android/video/b;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->pause()V

    .line 135
    iget-object v0, p0, Lcom/unity3d/ads/android/video/b;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 136
    iget-object v0, p0, Lcom/unity3d/ads/android/video/b;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->c(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 137
    return-void
.end method
