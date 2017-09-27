.class public Lcom/unity3d/ads/android/cache/UnityAdsCache;
.super Ljava/lang/Object;
.source "UnityAdsCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 86
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/io/File;

    const-string v2, "UnityAdsVideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sput-object v1, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Successfully created cache"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const-string v0, "Unity Ads cache: Creating cache dir failed"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void

    .line 109
    :cond_2
    const-string v0, "UnityAds-pendingrequests.dat"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityAdsVideoCache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: checking cache directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .line 130
    :goto_0
    array-length v3, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unity Ads cache: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " not found in ad plan, deleting from cache"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 136
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unity Ads cache: Couldn\'t delete file: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 130
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 117
    :cond_4
    const-string v0, "Unity Ads cache: checking app directory for Unity Ads cached files"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/unity3d/ads/android/cache/a;

    invoke-direct {v0}, Lcom/unity3d/ads/android/cache/a;-><init>()V

    .line 127
    sget-object v1, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 140
    cmp-long v0, v6, v10

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 143
    cmp-long v0, v8, v6

    if-eqz v0, :cond_6

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unity Ads cache: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " file size mismatch, deleting from cache"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 146
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unity Ads cache: Couldn\'t delete file: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unity Ads cache: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found, keeping"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;J)Z
    .locals 5

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v2

    .line 64
    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/cache/b;->getCurrentDownload()Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/b;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: initializing cache with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " campaigns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->stopAllDownloads()V

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 36
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->forceCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_4

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unity Ads cache: queuing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for download"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    move v1, v0

    .line 50
    goto :goto_0

    .line 43
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unity Ads cache: not downloading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", already in cache"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_5
    invoke-static {v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/util/HashMap;)V

    .line 54
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/ads/android/cache/b;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v2

    .line 78
    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static stopAllDownloads()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/unity3d/ads/android/cache/b;->stopAllDownloads()V

    .line 83
    return-void
.end method
