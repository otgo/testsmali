.class final Lcom/unity3d/ads/android/video/h;
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
    .line 328
    iput-object p1, p0, Lcom/unity3d/ads/android/video/h;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/unity3d/ads/android/video/h;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoSkip()V

    .line 332
    return-void
.end method
