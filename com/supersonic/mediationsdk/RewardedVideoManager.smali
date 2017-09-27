.class Lcom/supersonic/mediationsdk/RewardedVideoManager;
.super Ljava/lang/Object;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final KTO_ALGORITHM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mDidReportInit:Z

.field private mExhaustedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mInitiatedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdAvailable:Z

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mNotAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;",
            ">;"
        }
    .end annotation
.end field

.field private mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 36
    const-string v0, "KTO"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->KTO_ALGORITHM:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addToAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V
    .locals 7
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdapterAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "adapterAlgorithm":Ljava/lang/String;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 596
    .local v3, "priorityLocation":I
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 597
    const-string v5, "KTO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_2

    .line 598
    :cond_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 599
    .local v4, "rwa":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    move-object v0, p1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v6

    move-object v0, v4

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v5

    if-gt v6, v5, :cond_1

    .line 602
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 607
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "rwa":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_2
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :cond_3
    monitor-exit p0

    return-void

    .line 593
    .end local v1    # "adapterAlgorithm":Ljava/lang/String;
    .end local v3    # "priorityLocation":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized addToExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_0
    monitor-exit p0

    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_0
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_0
    monitor-exit p0

    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":completeIteration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 519
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Loading - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved to \'Exhausted\' list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 523
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 525
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->resetNumberOfVideosPlayed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeIteration(provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeIterationRound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 539
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 542
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 543
    .local v2, "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 544
    .local v0, "exhaustedAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    check-cast v3, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "moved to \'Available\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 546
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    check-cast v3, Lcom/supersonic/mediationsdk/AbstractAdapter;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "moved to \'Not Available\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    goto :goto_0

    .line 553
    .end local v0    # "exhaustedAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "End of Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 555
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;>;"
    :cond_2
    return-void
.end method

.method private isIterationRoundComplete()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 5

    .prologue
    .line 437
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersSmartLoadAmount()I

    move-result v1

    .line 438
    .local v1, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .line 439
    .local v0, "initiatedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->hasMoreProvidersToLoad()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 442
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 446
    .local v2, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    invoke-virtual {v2, v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    goto :goto_0

    .line 450
    .end local v2    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :cond_1
    return-object v0
.end method

.method private declared-synchronized notifyIsAdAvailableForStatistics()V
    .locals 8

    .prologue
    .line 707
    monitor-enter p0

    const/4 v4, 0x0

    .line 708
    .local v4, "mediationStatus":Z
    :try_start_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 709
    const/4 v4, 0x1

    .line 712
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v5

    const-string v6, "Mediation"

    invoke-virtual {v5, v6, v4}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V

    .line 715
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 716
    .local v2, "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    move-object v0, v2

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v1, v0

    .line 717
    .local v1, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v5

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 707
    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 721
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 722
    .restart local v2    # "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    move-object v0, v2

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v1, v0

    .line 723
    .restart local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v5

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V

    goto :goto_1

    .line 726
    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_2
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 727
    .restart local v2    # "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    move-object v0, v2

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v1, v0

    .line 728
    .restart local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v5

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyIsRewardedVideoAvailableEvent(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 731
    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "availableAdapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private prepareStateForInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 74
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private declared-synchronized removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_0
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_0
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_0
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .locals 5
    .param p1, "priority"    # I
    .param p2, "placementId"    # I

    .prologue
    .line 113
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 114
    .local v1, "providers":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 115
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "requestUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "requestUrl":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "requestUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "adapterUrl"    # Ljava/lang/String;
    .param p2, "hit"    # Z
    .param p3, "placementId"    # I

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .local v1, "url":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sdkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1, p2, p3}, Lcom/supersonic/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportImpression:(providerURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 199
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 1
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldCallInitFail()Z
    .locals 3

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "shouldCall":Z
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRewardedVideoAdapters()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    if-nez v1, :cond_0

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 585
    const/4 v0, 0x1

    .line 588
    :cond_0
    return v0
.end method

.method private shouldNotifyAvailabilityChanged(Z)Z
    .locals 4
    .param p1, "adapterAvailability"    # Z

    .prologue
    const/4 v3, 0x0

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "shouldNotify":Z
    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 562
    const/4 v0, 0x1

    .line 575
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 566
    iput-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 567
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRewardedVideoAdapters()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 571
    iput-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 572
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 14
    .param p1, "srw"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getNextProvider()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 215
    .local v1, "adapterObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 216
    const/4 v7, 0x0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v7

    .line 218
    :cond_0
    const/4 v7, 0x0

    .line 219
    .local v7, "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :try_start_1
    const-string v10, "provider"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "providerName":Ljava/lang/String;
    const-string v10, "requestUrl"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "requestUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":startAdapter("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 225
    const/4 v7, 0x0

    goto :goto_0

    .line 230
    :cond_1
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.supersonic.adapters."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Adapter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 231
    .local v6, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getInstance"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 232
    .local v5, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {v5, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v7, v0

    .line 234
    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_2

    .line 235
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 238
    :cond_2
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v7, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 239
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersSmartLoadTimeout()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoTimeout(I)V

    .line 240
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getAdaptersLoadPosition()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoPriority(I)V

    .line 241
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setPlacementsHolder(Lcom/supersonic/mediationsdk/model/PlacementsHolder;)V

    .line 254
    move-object v0, v7

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v10, v0

    invoke-interface {v10, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 255
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": startAdapter("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") moved to \'Initiated\' list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 256
    move-object v0, v7

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v10, v0

    invoke-virtual {p0, v10}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 257
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v10

    check-cast v10, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "appKey":Ljava/lang/String;
    move-object v0, v7

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v10, v0

    iget-object v11, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-interface {v10, v11, v2, v12}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 269
    .end local v2    # "appKey":Ljava/lang/String;
    .end local v5    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":startAdapter(JSONObject:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxRewardedVideoAdapters()I

    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    .line 275
    .local v4, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldCallInitFail()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 276
    invoke-direct {p0, v4}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 278
    :cond_3
    iget-object v10, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v10, v11, v12, v13}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 214
    .end local v1    # "adapterObject":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .end local v7    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v8    # "providerName":Ljava/lang/String;
    .end local v9    # "requestUrl":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public declared-synchronized addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    .line 645
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 646
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 652
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToNotAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 661
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 129
    iput-object p3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 134
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;-><init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 183
    .local v0, "initRewardedVideoRunnable":Ljava/lang/Runnable;
    const-string v1, "RewardedVideoInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v0    # "initRewardedVideoRunnable":Ljava/lang/Runnable;
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

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

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 369
    .local v0, "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const/4 v2, 0x1

    .line 375
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_0
    monitor-exit p0

    return v2

    .line 372
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-virtual {p0, v3, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 301
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 296
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdClosed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 469
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdClosedEvent(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 473
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->notifyIsAdAvailableForStatistics()V

    .line 474
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 459
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAdOpenedEvent(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdOpened()V

    .line 462
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 6
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdRewarded("

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

    .line 692
    if-nez p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object p1

    .line 696
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyProviderVideoAdRewardedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 699
    return-void
.end method

.method public declared-synchronized onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 399
    monitor-enter p0

    const/4 v2, 0x0

    .line 402
    .local v2, "shouldCallFail":Z
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onRewardedVideoInitFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 404
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v3

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 406
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Not Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 408
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 411
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldCallInitFail()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    const/4 v2, 0x1

    .line 422
    :goto_0
    if-eqz v2, :cond_0

    .line 423
    :try_start_1
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :cond_0
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoInitFail(error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoInitSuccess()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 387
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoResultEvent(Ljava/lang/String;Z)V

    .line 389
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInit:Z

    .line 391
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoShowFail("

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

    .line 432
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 433
    return-void
.end method

.method public declared-synchronized onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "available"    # Z
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 480
    monitor-enter p0

    const/4 v2, 0x0

    .line 483
    .local v2, "shouldCallPublisher":Z
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 485
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v3

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoAvailabilityChangedEvent(Ljava/lang/String;Z)V

    .line 487
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    if-eqz p1, :cond_2

    .line 490
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 491
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;Z)V

    .line 502
    :goto_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 510
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 511
    :try_start_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v3, v4}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :cond_1
    monitor-exit p0

    return-void

    .line 495
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Not Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 496
    move-object v0, p2

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;)V

    .line 498
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 499
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 480
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onVideoEnd(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onVideoEnd()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 683
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoEndEvent(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoEnd()V

    .line 686
    return-void
.end method

.method public onVideoStart(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onVideoStart()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 675
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyVideoStartEvent(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;->onVideoStart()V

    .line 678
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 306
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 311
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 381
    return-void
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .locals 12
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v7, "unavailableAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;>;"
    const/4 v3, 0x0

    .line 324
    .local v3, "hasError":Z
    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 325
    const-string v8, "No Internet Connection"

    invoke-static {v8}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;

    .line 330
    .local v1, "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-interface {v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->isRewardedVideoAvailable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 332
    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isUltraEventsEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 334
    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v5

    .line 337
    .local v5, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Placement;->getId()I

    move-result v10

    invoke-direct {p0, v8, v9, v10}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 340
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v6

    .line 341
    .local v6, "priority":I
    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Placement;->getId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 344
    .end local v5    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v6    # "priority":I
    :cond_2
    invoke-interface {v1, p1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;->showRewardedVideo(Ljava/lang/String;)V

    .line 346
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->increaseNumberOfVideosPlayed()V

    .line 347
    iget-object v9, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ": "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " videos played"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 350
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v9

    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxVideosPerIteration()I

    move-result v8

    if-ne v9, v8, :cond_3

    .line 351
    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 321
    .end local v3    # "hasError":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "unavailableAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 358
    .restart local v1    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    .restart local v3    # "hasError":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "unavailableAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;>;"
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-object v8, v0

    invoke-virtual {p0, v9, v8}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 359
    new-instance v2, Ljava/lang/Exception;

    const-string v8, "FailedToShowVideoException"

    invoke-direct {v2, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Failed to show video"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
