.class public Lcom/unity3d/ads/android/view/UnityAdsViewUtils;
.super Ljava/lang/Object;
.source "UnityAdsViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeViewFromParent(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 10
    if-eqz p0, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while removing view from it\'s parent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
