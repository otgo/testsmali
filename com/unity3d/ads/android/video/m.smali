.class final Lcom/unity3d/ads/android/video/m;
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
    .line 505
    iput-object p1, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 508
    iget-object v0, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/j;->a(Lcom/unity3d/ads/android/video/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v0, v0, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    iget-object v1, v1, Lcom/unity3d/ads/android/video/j;->a:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-float v1, v2

    iget-object v2, p0, Lcom/unity3d/ads/android/video/m;->a:Lcom/unity3d/ads/android/video/j;

    invoke-static {v2}, Lcom/unity3d/ads/android/video/j;->b(Lcom/unity3d/ads/android/video/j;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)V

    .line 512
    :cond_0
    return-void
.end method
