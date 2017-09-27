.class final Lcom/unity3d/ads/android/cache/c;
.super Landroid/os/Handler;
.source "UnityAdsCacheThreadHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/c;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/cache/c;->b:Z

    return-void
.end method


# virtual methods
.method public final getCurrentDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    iget-boolean v0, p0, Lcom/unity3d/ads/android/cache/c;->b:Z

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: start downloading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/unity3d/ads/android/cache/c;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isActiveNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/ads/android/cache/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unity Ads cache: Exception when downloading "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x1000

    new-array v9, v0, [B

    const-wide/16 v0, 0x0

    :goto_1
    iget-boolean v10, p0, Lcom/unity3d/ads/android/cache/c;->b:Z

    if-nez v10, :cond_3

    invoke-virtual {v8, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    int-to-long v12, v10

    add-long/2addr v0, v12

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/unity3d/ads/android/cache/c;->a:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/unity3d/ads/android/cache/c;->b:Z

    if-nez v7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unity Ads cache: File "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes downloaded in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    div-long/2addr v0, v4

    sput-wide v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: downloading of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final setStoppedStatus(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/unity3d/ads/android/cache/c;->b:Z

    .line 34
    return-void
.end method
