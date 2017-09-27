.class final Lcom/unity3d/ads/android/webapp/l;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/unity3d/ads/android/webapp/j;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/j;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->a:Ljava/lang/String;

    .line 835
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->b:Ljava/lang/String;

    .line 836
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->c:Ljava/lang/String;

    .line 837
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->d:Lcom/unity3d/ads/android/webapp/j;

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/webapp/l;->e:I

    .line 839
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->f:Ljava/lang/String;

    .line 842
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/l;->a:Ljava/lang/String;

    .line 843
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/l;->b:Ljava/lang/String;

    .line 844
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/l;->c:Ljava/lang/String;

    .line 845
    iput-object p4, p0, Lcom/unity3d/ads/android/webapp/l;->d:Lcom/unity3d/ads/android/webapp/j;

    .line 846
    iput p5, p0, Lcom/unity3d/ads/android/webapp/l;->e:I

    .line 847
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 854
    new-instance v0, Lcom/unity3d/ads/android/webapp/k;

    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/android/webapp/l;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/android/webapp/l;->d:Lcom/unity3d/ads/android/webapp/j;

    iget v5, p0, Lcom/unity3d/ads/android/webapp/l;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/j;I)V

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/k;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/unity3d/ads/android/webapp/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/webapp/k;->setPostBody(Ljava/lang/String;)V

    .line 861
    :cond_0
    iget v1, p0, Lcom/unity3d/ads/android/webapp/l;->e:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 862
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->a(Lcom/unity3d/ads/android/webapp/k;)V

    .line 864
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->c()V

    .line 865
    return-void
.end method

.method public final setPostBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/l;->f:Ljava/lang/String;

    .line 851
    return-void
.end method
