.class final Lcom/unity3d/ads/android/video/d;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/unity3d/ads/android/video/d;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/unity3d/ads/android/video/d;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->d(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 238
    return-void
.end method
