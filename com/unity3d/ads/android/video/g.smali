.class final Lcom/unity3d/ads/android/video/g;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/unity3d/ads/android/video/g;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/unity3d/ads/android/video/g;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->b(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/unity3d/ads/android/video/g;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->m(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 311
    iget-object v0, p0, Lcom/unity3d/ads/android/video/g;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->n(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 313
    :cond_0
    return-void
.end method
