.class final Lcom/unity3d/ads/android/video/i;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;IZZ)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iput p2, p0, Lcom/unity3d/ads/android/video/i;->a:I

    iput-boolean p3, p0, Lcom/unity3d/ads/android/video/i;->b:Z

    iput-boolean p4, p0, Lcom/unity3d/ads/android/video/i;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->o(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/android/video/i;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :cond_0
    iget v0, p0, Lcom/unity3d/ads/android/video/i;->a:I

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->p(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v1, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->q(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->a(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;J)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 423
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/i;->b:Z

    if-eqz v0, :cond_4

    .line 414
    iget-boolean v0, p0, Lcom/unity3d/ads/android/video/i;->c:Z

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->r(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->s(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/video/i;->d:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->t(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    goto :goto_0
.end method
