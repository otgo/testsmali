.class public Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
.super Ljava/lang/Object;
.source "UnityAdsCampaign.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:[Ljava/lang/String;

.field private c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->b:[Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 236
    iget-object v5, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    :cond_0
    :goto_1
    return v0

    .line 235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allowCacheVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "allowCache"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key not found for campaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public allowStreamingVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "allowStreaming"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    const-string v0, "Could not get streaming video status"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public forceCacheVideo()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "cacheVideo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key not found for campaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method

.method public getFilterMode()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v2, "filterMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v2, "filterMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "storeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "storeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_STOREID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "iTunesId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "iTunesId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_ITUNESID_KEY but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoFileExpectedSize()J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 155
    .line 156
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v3, "trailerSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 161
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 176
    :cond_0
    :goto_0
    return-wide v0

    .line 163
    :catch_0
    move-exception v2

    .line 164
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v2

    const-string v2, "Not found, returning -1"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v2, "trailerDownloadable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnityAds-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoStreamUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "trailerStreaming"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a:Lorg/json/JSONObject;

    const-string v1, "trailerDownloadable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    const-string v0, "This should not happen!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->a()Z

    move-result v0

    return v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->c:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
