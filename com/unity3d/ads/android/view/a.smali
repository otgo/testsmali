.class final Lcom/unity3d/ads/android/view/a;
.super Ljava/lang/Object;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/unity3d/ads/android/view/a;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/unity3d/ads/android/view/a;->a:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 358
    return-void
.end method
