.class final Lcom/unity3d/ads/android/webapp/f;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 352
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 353
    return-void
.end method
