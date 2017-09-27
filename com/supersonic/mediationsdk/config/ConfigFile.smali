.class public Lcom/supersonic/mediationsdk/config/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# static fields
.field public static final DEFAULT_AMOUNT_WARNING_MESSAGE:Ljava/lang/String; = "Rewards amount doesn\'t exist in configuration, value was set to 1. Edit configurations file in order to change the value"

.field public static final DEFAULT_REWARD_AMOUNT:I = 0x1

.field private static mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;


# instance fields
.field private final CONFIG_ADAPTERS:Ljava/lang/String;

.field private final CONFIG_FILE_DEFAULT_PATH:Ljava/lang/String;

.field private final CONFIG_PROVIDER_NAME:Ljava/lang/String;

.field private final CONFIG_PROVIDER_SETTINGS:Ljava/lang/String;

.field private final CONFIG_PROVIDER_VERSION:Ljava/lang/String;

.field private final CONFIG_TEST_FILE:Ljava/lang/String;

.field private final CONFIG_TEST_FOLDER:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mPluginVersion:Ljava/lang/String;

.field private mProvidersConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/supersonic/mediationsdk/config/ConfigFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "adapters"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_ADAPTERS:Ljava/lang/String;

    .line 19
    const-string v0, "name"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "version"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_VERSION:Ljava/lang/String;

    .line 21
    const-string v0, "settings"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_SETTINGS:Ljava/lang/String;

    .line 23
    const-string v0, "supersonic.config"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_TEST_FILE:Ljava/lang/String;

    .line 24
    const-string v0, "SupersonicTest"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_TEST_FOLDER:Ljava/lang/String;

    .line 26
    const-string v0, "/supersonic.config"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_FILE_DEFAULT_PATH:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static declared-synchronized getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/supersonic/mediationsdk/config/ConfigFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigFile;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigFile;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    .line 48
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCoreSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v3, ""

    .line 91
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 94
    .local v2, "providerSection":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    const-string v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "providerSection":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProviderCoreSdkVersion(providerName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getProviderJsonSettings(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "result":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .restart local v2    # "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    return-object v2

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProviderJSONSettings(providerName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string v0, "Unity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdobeAir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Xamarin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setPluginType(Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    .line 116
    :cond_1
    if-eqz p2, :cond_2

    .line 117
    iput-object p2, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    .line 119
    :cond_2
    return-void
.end method
