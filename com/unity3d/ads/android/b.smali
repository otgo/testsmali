.class final Lcom/unity3d/ads/android/b;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/unity3d/ads/android/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/unity3d/ads/android/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->init(Landroid/app/Activity;)V

    .line 909
    sget-object v0, Lcom/unity3d/ads/android/UnityAds;->webdata:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->b()Z

    .line 912
    :cond_0
    return-void
.end method
