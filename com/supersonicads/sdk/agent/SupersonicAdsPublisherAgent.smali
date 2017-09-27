.class public final Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
.super Ljava/lang/Object;
.source "SupersonicAdsPublisherAgent.java"

# interfaces
.implements Lcom/supersonicads/sdk/SSAPublisher;


# static fields
.field private static final TAG:Ljava/lang/String; = "SupersonicAdsPublisherAgent"

.field private static mutableContextWrapper:Landroid/content/MutableContextWrapper;

.field private static sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;


# instance fields
.field private session:Lcom/supersonicads/sdk/data/SSASession;

.field private wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "debugMode"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    .line 44
    invoke-static {p2}, Lcom/supersonicads/sdk/utils/Logger;->enableLogging(I)V

    .line 46
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    .line 49
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->startSession(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .param p1, "x1"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/MutableContextWrapper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    return-object v0
.end method

.method private endSession()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSASession;->endSession()V

    .line 111
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->addSession(Lcom/supersonicads/sdk/data/SSASession;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 114
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    const-class v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "debugMode"    # I

    .prologue
    .line 74
    const-class v1, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .line 86
    :goto_0
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    :try_start_1
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSession(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->launched:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 102
    return-void
.end method


# virtual methods
.method public forceShowInterstitial()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->forceShowInterstitial()V

    .line 176
    return-void
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 148
    return-void
.end method

.method public getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 160
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initBrandConnect(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 127
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isInterstitialAdAvailable()Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterBackground()V

    .line 203
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 205
    invoke-direct {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterForeground()V

    .line 189
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->resumeSession(Landroid/content/Context;)V

    .line 194
    :cond_0
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 216
    :try_start_0
    const-string v2, "SupersonicAdsPublisherAgent"

    const-string v3, "release()"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/supersonicads/sdk/utils/DeviceProperties;->release()V

    .line 219
    iget-object v2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v2, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->destroy()V

    .line 225
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    sput-object v4, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .line 245
    invoke-direct {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->endSession()V

    .line 246
    return-void

    .line 228
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$2;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)V

    .line 236
    .local v1, "uiRunnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    .end local v0    # "uiHandler":Landroid/os/Handler;
    .end local v1    # "uiRunnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resumeSession(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->backFromBG:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 106
    return-void
.end method

.method public runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "keyValPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnGenericFunctionListener;)V

    .line 255
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showInterstitial()V

    .line 171
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 142
    return-void
.end method

.method public showRewardedVideo()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showBrandConnect()V

    .line 132
    return-void
.end method
