.class public Lcom/supersonic/mediationsdk/SupersonicObject;
.super Ljava/lang/Object;
.source "SupersonicObject.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/Supersonic;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

.field private mAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

.field private mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

.field private mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private final serverResponseLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->serverResponseLocker:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 67
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyGetInstanceEvent(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeManagers()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private baseInit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->prepareForInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 732
    const/4 v0, 0x0

    .line 735
    .local v0, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/supersonic/mediationsdk/server/ServerURL;->getCPVProvidersURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, "serverResponseString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 752
    .end local v2    # "serverResponseString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 740
    .restart local v2    # "serverResponseString":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p2, v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .local v1, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v0, v1

    .line 744
    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_0

    .end local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    :cond_2
    move-object v0, v1

    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .end local v2    # "serverResponseString":Ljava/lang/String;
    .restart local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    :goto_1
    move-object v3, v0

    .line 752
    goto :goto_0

    .line 748
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v2    # "serverResponseString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_1

    .line 746
    .end local v2    # "serverResponseString":Ljava/lang/String;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v2    # "serverResponseString":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_1
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 694
    const/4 v6, 0x0

    .line 697
    .local v6, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, "cachedResponseString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .local v1, "cachedJsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v8, "appKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "cachedAppKey":Ljava/lang/String;
    const-string v8, "userId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    .local v4, "cachedUserId":Ljava/lang/String;
    const-string v8, "settings"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "cachedSettings":Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 717
    new-instance v6, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .end local v6    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-direct {v6, v0, v4, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .restart local v6    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v7

    .line 720
    .local v7, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 723
    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 727
    .end local v7    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-object v6

    .line 701
    .end local v0    # "cachedAppKey":Ljava/lang/String;
    .end local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    .end local v3    # "cachedSettings":Ljava/lang/String;
    .end local v4    # "cachedUserId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 702
    .local v5, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private initializeEventsSettings(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 3
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isEventsEnabled()Z

    move-result v0

    .line 820
    .local v0, "isEventsEnabled":Z
    if-eqz v0, :cond_0

    .line 821
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 822
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setMaxNumberOfEvents(I)V

    .line 823
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setBackupThreshold(I)V

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->setIsEventsEnabled(Z)V

    goto :goto_0
.end method

.method private initializeLoggerManager(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 834
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConsoleLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 835
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-string v1, "server"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getServerLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 836
    return-void
.end method

.method private initializeManagers()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger(I)Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 217
    new-instance v0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;-><init>(Lcom/supersonic/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    .line 218
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->addLogger(Lcom/supersonic/mediationsdk/logger/SupersonicLogger;)V

    .line 220
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    .line 222
    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .line 223
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 225
    new-instance v0, Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    .line 226
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 228
    new-instance v0, Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    .line 229
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/OfferwallManager;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 230
    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeLoggerManager(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeEventsSettings(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 784
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->mergeLocalServerConfigurations(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V

    .line 785
    return-void
.end method

.method private mergeLocalServerConfigurations(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 6
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 790
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurationMap()Ljava/util/Map;

    move-result-object v4

    .line 792
    .local v4, "serverConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 793
    .local v2, "providerName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 794
    .local v3, "remoteConfig":Lorg/json/JSONObject;
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getProviderJsonSettings(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 796
    .local v1, "localConfig":Lorg/json/JSONObject;
    invoke-direct {p0, v1, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->mergeSingleAdapterConfigurations(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 799
    .end local v1    # "localConfig":Lorg/json/JSONObject;
    .end local v2    # "providerName":Ljava/lang/String;
    .end local v3    # "remoteConfig":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private mergeSingleAdapterConfigurations(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "localConfig"    # Lorg/json/JSONObject;
    .param p2, "remoteConfig"    # Lorg/json/JSONObject;

    .prologue
    .line 803
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 805
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 809
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 814
    :cond_1
    return-void
.end method

.method private prepareForInit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/events/EventsHelper;->start(Landroid/content/Context;)Lcom/supersonic/mediationsdk/events/EventsHelper;

    .line 195
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/supersonic/mediationsdk/server/Server;->notifyUniqueUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private declared-synchronized setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 873
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 874
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 877
    iput-object p2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_1
    monitor-exit p0

    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateAge(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "age"    # I
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 372
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/16 v1, 0x78

    if-le p1, v1, :cond_1

    .line 373
    :cond_0
    :try_start_0
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 934
    new-instance v2, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 937
    .local v2, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_2

    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 941
    const-string v1, "^[a-zA-Z0-9]*$"

    .line 942
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 943
    const-string v3, "applicationKey"

    const-string v4, "Supersonic"

    const-string v5, "applicationKey should contains only english characters and numbers"

    invoke-static {v3, v4, v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 944
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 955
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 947
    :cond_1
    const-string v3, "applicationKey"

    const-string v4, "Supersonic"

    const-string v5, "applicationKey length should be between 5-10 characters"

    invoke-static {v3, v4, v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 948
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 951
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_2
    const-string v3, "applicationKey"

    const-string v4, "Supersonic"

    const-string v5, "applicationKey value is missing"

    invoke-static {v3, v4, v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 952
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKey(Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 910
    .local v0, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateUserId(Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 914
    :cond_0
    return-object v0
.end method

.method private validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 356
    const-string v1, "male"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "female"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateUserId(Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 918
    new-instance v1, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 920
    .local v1, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_2

    .line 921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_1

    .line 922
    :cond_0
    const-string v2, "userId"

    const-string v3, "Supersonic"

    const-string v4, "userId length should be between 1-64 characters"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 923
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 930
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_1
    :goto_0
    return-object v1

    .line 926
    :cond_2
    const-string v2, "userId"

    const-string v3, "Supersonic"

    const-string v4, "userId value is missing"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 927
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "adapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    if-nez p1, :cond_1

    .line 590
    :cond_0
    return-void

    .line 586
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 587
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/SupersonicObject;->addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 539
    const-string v1, "getOfferwallCredits()"

    .line 540
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPlacementInfo(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, "result":Lcom/supersonic/mediationsdk/model/Placement;
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v0

    .line 963
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-object v0

    .line 964
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 596
    .local v0, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->serverResponseLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_0

    .line 599
    new-instance v1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {v1, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v2

    .line 689
    :goto_0
    return-object v1

    .line 605
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 617
    :cond_2
    if-eqz v0, :cond_3

    .line 618
    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 619
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v1, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeSettingsFromServerResponse(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 687
    :cond_3
    monitor-exit v2

    move-object v1, v0

    .line 689
    goto :goto_0

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getSupersonicAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupersonicUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v2

    .line 148
    .local v2, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 169
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRewardedVideo(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->baseInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v3

    const-string v4, "Mediation"

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitInterstitialEvent(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/supersonic/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v3, v4, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v2

    .line 118
    .local v2, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initOfferwall(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->baseInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v3

    const-string v4, "Mediation"

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitOfferwallEvent(Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/supersonic/mediationsdk/OfferwallManager;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v3, v4, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v2

    .line 90
    .local v2, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 109
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRewardedVideo(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->baseInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 104
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v3

    const-string v4, "Mediation"

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoEvent(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v3, v4, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isInterstitialAdAvailable()Z
    .locals 5

    .prologue
    .line 472
    const-string v1, "isInterstitialAdAvailable()"

    .line 473
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/InterstitialManager;->isInterstitialAdAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 480
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOfferwallAvailable()Z
    .locals 3

    .prologue
    .line 524
    const/4 v1, 0x0

    .line 527
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 533
    :cond_0
    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, "isAvailable":Z
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v1

    .line 443
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRewardedVideoAvailable():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRewardedVideoAvailable():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 447
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "isRewardedVideoAvailable()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    const-string v3, "onPause()"

    .line 279
    .local v3, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 280
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v4

    const-string v5, "Mediation"

    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyPauseEvent(Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 283
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v3, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    const-string v3, "onResume()"

    .line 260
    .local v3, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 261
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v4

    const-string v5, "Mediation"

    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyResumeEvent(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onResume(Landroid/app/Activity;)V

    .line 266
    :cond_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 267
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v3, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    return-void
.end method

.method public removeInterstitialListener()V
    .locals 4

    .prologue
    .line 851
    const-string v0, "removeInterstitialListener()"

    .line 852
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 854
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 855
    return-void
.end method

.method public removeOfferwallListener()V
    .locals 4

    .prologue
    .line 859
    const-string v0, "removeOfferwallListener()"

    .line 860
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 862
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 863
    return-void
.end method

.method public removeRewardedVideoListener()V
    .locals 4

    .prologue
    .line 842
    const-string v0, "removeRewardedVideoListener()"

    .line 843
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 846
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 847
    return-void
.end method

.method public declared-synchronized setAge(I)V
    .locals 9
    .param p1, "age"    # I

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setAge(age:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 297
    new-instance v4, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 299
    .local v4, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAge(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 301
    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;

    .line 306
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 307
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setAge(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "logMessage":Ljava/lang/String;
    .end local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":setAge(age:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 309
    .restart local v3    # "logMessage":Ljava/lang/String;
    .restart local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 294
    .end local v3    # "logMessage":Ljava/lang/String;
    .end local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setGender(Ljava/lang/String;)V
    .locals 9
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setGender(gender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 326
    new-instance v4, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 328
    .local v4, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 331
    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;

    .line 336
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 337
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "logMessage":Ljava/lang/String;
    .end local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":setGender(gender:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 339
    .restart local v3    # "logMessage":Ljava/lang/String;
    .restart local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 323
    .end local v3    # "logMessage":Ljava/lang/String;
    .end local v4    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 4
    .param p1, "isListener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .prologue
    const/4 v3, 0x1

    .line 498
    if-nez p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 505
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setInterstitialListener(ISListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V
    .locals 5
    .param p1, "logListener"    # Lcom/supersonic/mediationsdk/logger/LogListener;

    .prologue
    const/4 v4, 0x1

    .line 566
    if-nez p1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {v0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 574
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 570
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogListener(LogListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 4
    .param p1, "offerwallListener"    # Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .prologue
    const/4 v3, 0x1

    .line 552
    if-nez p1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 559
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setOfferwallListener(OWListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 4
    .param p1, "rewardedVideoListener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    const/4 v3, 0x1

    .line 456
    if-nez p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 464
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 5

    .prologue
    .line 485
    const-string v1, "showInterstitial()"

    .line 486
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/InterstitialManager;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showOfferwall()V
    .locals 5

    .prologue
    .line 512
    const-string v1, "showOfferwall()"

    .line 513
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/OfferwallManager;->showOfferwall()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 7

    .prologue
    .line 394
    const-string v2, "showRewardedVideo()"

    .line 396
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 397
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v0

    .line 398
    .local v0, "defaultPlacement":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "defaultPlacement":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v3    # "placementName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "ShowRV can\'t be called before the RV ad unit initialization completed successfully"

    invoke-static {v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showRewardedVideo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v4

    .line 415
    .local v4, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    if-nez v4, :cond_0

    .line 416
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 417
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v3, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 420
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v4

    .line 421
    if-nez v4, :cond_0

    .line 422
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 423
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v2, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 435
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    .end local v4    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :goto_0
    return-void

    .line 428
    .restart local v4    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 429
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v5

    const-string v6, "Mediation"

    invoke-virtual {v5, v6, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyShowRewardedVideoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v4    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v5, v6, v1, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    iget-object v5, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "ShowRV can\'t be called before the RV ad unit initialization completed successfully"

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method
