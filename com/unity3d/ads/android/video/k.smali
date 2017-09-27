.class final Lcom/unity3d/ads/android/video/k;
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
    .line 483
    iput-object p1, p0, Lcom/unity3d/ads/android/video/k;->a:Lcom/unity3d/ads/android/video/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/unity3d/ads/android/video/k;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->w(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 487
    return-void
.end method
