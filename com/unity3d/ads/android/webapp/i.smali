.class final Lcom/unity3d/ads/android/webapp/i;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/unity3d/ads/android/webapp/k;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/k;)V
    .locals 1

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/i;->a:Lcom/unity3d/ads/android/webapp/k;

    .line 871
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/i;->a:Lcom/unity3d/ads/android/webapp/k;

    .line 872
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/i;->a:Lcom/unity3d/ads/android/webapp/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/k;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling urlLoader got exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
