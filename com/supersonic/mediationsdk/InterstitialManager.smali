.class Lcom/supersonic/mediationsdk/InterstitialManager;
.super Ljava/lang/Object;
.source "InterstitialManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/InterstitialManager;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/InterstitialManager;Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/InterstitialManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/InterstitialManager;->startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverResponseWrapper"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "adapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getISProvidersArray()Lorg/json/JSONArray;

    move-result-object v10

    .line 151
    .local v10, "providersList":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 154
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "provider"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "providerName":Ljava/lang/String;
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "requestUrl"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "requestUrl":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.supersonic.adapters."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Adapter"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 162
    .local v7, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "getInstance"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v7, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 163
    .local v5, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-virtual {v5, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 166
    .local v8, "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v8, v12}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 176
    move-object v0, v8

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 177
    move-object v0, v8

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInterstitialAdapter(Lcom/supersonic/mediationsdk/sdk/InterstitialApi;)V

    .line 178
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v12

    check-cast v12, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v12}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "appKey":Ljava/lang/String;
    move-object v0, v8

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v12, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v3, v1}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 187
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v5    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v13, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v12, v13, v14, v15}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v13, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":startAdapter(providerList:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 192
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v9    # "providerName":Ljava/lang/String;
    .end local v11    # "requestUrl":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public addInterstitialAdapter(Lcom/supersonic/mediationsdk/sdk/InterstitialApi;)V
    .locals 0
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    .line 50
    return-void
.end method

.method public hasProviders()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/InterstitialManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/supersonic/mediationsdk/InterstitialManager$1;-><init>(Lcom/supersonic/mediationsdk/InterstitialManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    .local v0, "initInterstitialRunnable":Ljava/lang/Runnable;
    const-string v1, "InterstitialInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v0    # "initInterstitialRunnable":Ljava/lang/Runnable;
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Multiple calls to init are not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->isInterstitialAdAvailable()Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterstitialAdClicked()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClicked()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 275
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 281
    return-void
.end method

.method public onInterstitialAvailability(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialAvailability(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 255
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAvailability(Z)V

    .line 256
    return-void
.end method

.method public onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialInitFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 249
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 250
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialInitSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitSuccess()V

    .line 243
    return-void
.end method

.method public onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 269
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialShowSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 261
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowSuccess()V

    .line 262
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 206
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 224
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0
    .param p1, "isListener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 234
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->showInterstitial()V

    .line 199
    :cond_0
    return-void
.end method
