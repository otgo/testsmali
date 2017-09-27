.class public abstract Lcom/supersonic/mediationsdk/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/BaseApi;
.implements Lcom/supersonic/mediationsdk/logger/LoggingApi;


# instance fields
.field private final ADAPTER_CORE_SDK_VERSION_KEY:Ljava/lang/String;

.field private final ADAPTER_VERSION_KEY:Ljava/lang/String;

.field private mInitFlagsLocker:Ljava/lang/Object;

.field private mIsInterstitialSupported:Z

.field private mIsOfferwallSupported:Z

.field private mIsRewardedVideoSupported:Z

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mNumberOfVideosPlayed:I

.field protected mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

.field private mProviderName:Ljava/lang/String;

.field private mProviderUrl:Ljava/lang/String;

.field private mRVInitFlag:Ljava/lang/Boolean;

.field private mRVPriority:I

.field private mRewardedVideoTimeout:I

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "AdapterVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->ADAPTER_VERSION_KEY:Ljava/lang/String;

    .line 26
    const-string v0, "SdkVersion"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->ADAPTER_CORE_SDK_VERSION_KEY:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsRewardedVideoSupported:Z

    .line 36
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsInterstitialSupported:Z

    .line 37
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsOfferwallSupported:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVPriority:I

    .line 52
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string p1, ""

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 59
    const-string p2, ""

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVInitFlag:Ljava/lang/Boolean;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInitFlagsLocker:Ljava/lang/Object;

    .line 68
    iput v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoSupport(Z)V

    .line 73
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AdapterVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SdkVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setCustomParams()V

    .line 78
    return-void
.end method

.method private setCustomParams()V
    .locals 7

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v3

    check-cast v3, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    .line 122
    .local v0, "age":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v3

    check-cast v3, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "gender":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "age":Ljava/lang/Integer;
    .end local v2    # "gender":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setCustomParams():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelTimer()V
    .locals 2

    .prologue
    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 307
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 308
    .local v0, "otherAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    iget-object v2, v0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 310
    .end local v0    # "otherAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getCoreSDKVersion()Ljava/lang/String;
.end method

.method public abstract getMaxVideosPerIteration()I
.end method

.method public getNumberOfVideosPlayed()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPriority()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVPriority:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public increaseNumberOfVideosPlayed()V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 86
    return-void
.end method

.method protected declared-synchronized isInterstitialSupported()Z
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsInterstitialSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isOfferwallSupported()Z
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsOfferwallSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isRVInitFinished()Z
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInitFlagsLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVInitFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isRVInitSucceed()Z
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInitFlagsLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVInitFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVInitFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected declared-synchronized isRewardedVideoSupported()Z
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsRewardedVideoSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isVersionSupported(Ljava/lang/String;Ljava/util/Map;)Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 5
    .param p1, "coreSDKVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/supersonic/mediationsdk/logger/SupersonicError;"
        }
    .end annotation

    .prologue
    .line 335
    .local p2, "supportedVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "adapterVersion":Ljava/lang/String;
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AdapterVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SdkVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildUnsupportedSdkVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    .line 354
    :goto_0
    return-object v2

    .line 346
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v1, "supportedVersionsForAdapter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    const/4 v2, 0x0

    goto :goto_0

    .line 349
    .end local v1    # "supportedVersionsForAdapter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .restart local v1    # "supportedVersionsForAdapter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildUnsupportedSdkVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    goto :goto_0
.end method

.method protected log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->onLog(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public resetNumberOfVideosPlayed()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 90
    return-void
.end method

.method protected declared-synchronized setInterstitialSupport(Z)V
    .locals 1
    .param p1, "isSupported"    # Z

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsInterstitialSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V
    .locals 0
    .param p1, "logListener"    # Lcom/supersonic/mediationsdk/logger/LogListener;

    .prologue
    .line 146
    return-void
.end method

.method protected declared-synchronized setOfferwallSupport(Z)V
    .locals 1
    .param p1, "isSupported"    # Z

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsOfferwallSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPlacementsHolder(Lcom/supersonic/mediationsdk/model/PlacementsHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    .line 113
    return-void
.end method

.method protected setRVInitStatus(Z)V
    .locals 2
    .param p1, "initValue"    # Z

    .prologue
    .line 241
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInitFlagsLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVInitFlag:Ljava/lang/Boolean;

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRewardedVideoPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVPriority:I

    .line 105
    return-void
.end method

.method protected declared-synchronized setRewardedVideoSupport(Z)V
    .locals 1
    .param p1, "isSupported"    # Z

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mIsRewardedVideoSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRewardedVideoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    .line 101
    return-void
.end method

.method protected startTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 358
    new-instance v1, Lcom/supersonic/mediationsdk/AbstractAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter$1;-><init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->timerTask:Ljava/util/TimerTask;

    .line 364
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 365
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->timerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 367
    return-void
.end method

.method protected validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 289
    .local v1, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 292
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/mediationsdk/AbstractAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 294
    if-eqz p2, :cond_0

    .line 295
    invoke-interface {p2, v0, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 299
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-object v1
.end method
