.class final Lcom/unity3d/ads/android/webapp/k;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/unity3d/ads/android/webapp/i;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 851
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/k;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/lang/String;

    .line 845
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->c:Ljava/lang/String;

    .line 846
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/lang/String;

    .line 847
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->e:Lcom/unity3d/ads/android/webapp/i;

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/webapp/k;->f:I

    .line 849
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Ljava/lang/String;

    .line 852
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/lang/String;

    .line 853
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/k;->c:Ljava/lang/String;

    .line 854
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/lang/String;

    .line 855
    iput-object p5, p0, Lcom/unity3d/ads/android/webapp/k;->e:Lcom/unity3d/ads/android/webapp/i;

    .line 856
    iput p6, p0, Lcom/unity3d/ads/android/webapp/k;->f:I

    .line 857
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 864
    new-instance v0, Lcom/unity3d/ads/android/webapp/j;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/android/webapp/k;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/android/webapp/k;->e:Lcom/unity3d/ads/android/webapp/i;

    iget v6, p0, Lcom/unity3d/ads/android/webapp/k;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/android/webapp/j;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/i;I)V

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/j;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/j;->setPostBody(Ljava/lang/String;)V

    .line 871
    :cond_0
    iget v1, p0, Lcom/unity3d/ads/android/webapp/k;->f:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 872
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/k;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;Lcom/unity3d/ads/android/webapp/j;)V

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/k;->a:Lcom/unity3d/ads/android/webapp/UnityAdsWebData;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->b(Lcom/unity3d/ads/android/webapp/UnityAdsWebData;)V

    .line 875
    return-void
.end method

.method public final setPostBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/k;->g:Ljava/lang/String;

    .line 861
    return-void
.end method
