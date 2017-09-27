.class final Lcom/unity3d/ads/android/view/e;
.super Ljava/lang/Object;
.source "UnityAdsMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/view/d;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/view/d;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/unity3d/ads/android/view/e;->a:Lcom/unity3d/ads/android/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isAdsReadySent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Unity Ads ready."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/IUnityAdsListener;->onFetchCompleted()V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->setAdsReadySent(Z)V

    .line 143
    :cond_0
    return-void
.end method
