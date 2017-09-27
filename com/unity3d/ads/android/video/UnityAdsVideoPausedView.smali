.class public Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsVideoPausedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->a()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->a()V

    .line 25
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPausedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget v1, Lcom/unity3d/ads/android/R$layout;->unityads_view_video_paused:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    return-void
.end method
