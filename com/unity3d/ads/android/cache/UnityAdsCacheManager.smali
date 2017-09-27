.class public Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;
.super Ljava/lang/Object;
.source "UnityAdsCacheManager.java"

# interfaces
.implements Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;


# instance fields
.field private a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 18
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    .line 20
    iput v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->d:I

    .line 21
    iput v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->e:I

    .line 24
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAdsUtils;->chooseCacheDirectory(Landroid/app/Activity;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache directory created with result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->createCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "Could not create cache, no external memory present"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cacheNextVideo(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 139
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->downloadCampaign()V

    .line 140
    return-void
.end method

.method public clearData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    if-eqz v0, :cond_0

    .line 95
    iput-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .line 99
    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->clearData()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iput-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    .line 110
    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 111
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->clearData()V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iput-object v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    .line 118
    :cond_4
    return-void
.end method

.method public hasDownloadingHandlers()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCache(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->updateCache(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method public isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Z)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->getSizeForLocalFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 127
    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v4

    .line 129
    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCampaignHandled(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->d:I

    .line 147
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onCampaignReady(Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;)V

    .line 151
    iget v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->d:I

    iget v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->e:I

    if-ne v0, v1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onAllCampaignsReady()V

    .line 153
    :cond_2
    return-void
.end method

.method public setDownloadListener(Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    .line 37
    return-void
.end method

.method public updateCache(Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->a:Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/cache/IUnityAdsCacheListener;->onCampaignUpdateStarted()V

    .line 51
    :cond_0
    iput v2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->d:I

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Checking file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pendingrequests.dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manifest.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/unity3d/ads/android/UnityAdsUtils;->isFileRequiredByCampaigns(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->removeFile(Ljava/lang/String;)V

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    if-eqz p1, :cond_7

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->e:I

    .line 76
    const/4 v0, 0x1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Updating cache: Going through active campaigns: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 80
    new-instance v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;

    invoke-direct {v4, v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;-><init>(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 81
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v4, p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->setListener(Lcom/unity3d/ads/android/campaign/IUnityAdsCampaignHandlerListener;)V

    .line 83
    invoke-virtual {v4, v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->initCampaign(Z)V

    .line 86
    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaignHandler;->hasDownloads()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v1, v2

    .line 89
    goto :goto_1

    .line 91
    :cond_7
    return-void
.end method
