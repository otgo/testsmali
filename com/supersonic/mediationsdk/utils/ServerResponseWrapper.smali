.class public Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# static fields
.field public static final APP_KEY_FIELD:Ljava/lang/String; = "appKey"

.field public static final SETTINGS_FIELD:Ljava/lang/String; = "settings"

.field public static final USER_ID_FIELD:Ljava/lang/String; = "userId"


# instance fields
.field private final ADAPTERS_LOAD_TIMEOUT:Ljava/lang/String;

.field private final ADAPTER_ALGORITHM:Ljava/lang/String;

.field private final CONFIG_KEY:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

.field private final ERROR_KEY:Ljava/lang/String;

.field private final NUM_OF_ADAPTERS_KEY:Ljava/lang/String;

.field private final PROVIDERS_KEY:Ljava/lang/String;

.field private final PROVIDER_NAME_KEY:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mConfigurationMap:Ljava/util/Map;
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

.field private mLoadPosition:I

.field private mMaxRewardedVideoAdapters:I

.field private mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

.field private mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "providers"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDERS_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "provider"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_NAME_KEY:Ljava/lang/String;

    .line 38
    const-string v0, "config"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONFIG_KEY:Ljava/lang/String;

    .line 40
    const-string v0, "error"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 41
    const-string v0, "maxNumOfAdaptersToLoadOnStart"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->NUM_OF_ADAPTERS_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "adapterTimeOutInSeconds"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTERS_LOAD_TIMEOUT:Ljava/lang/String;

    .line 43
    const-string v0, "adapterAlgorithm"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 45
    const-string v0, "KTO"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 47
    const/16 v0, 0x3c

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "srw"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "providers"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDERS_KEY:Ljava/lang/String;

    .line 37
    const-string v1, "provider"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_NAME_KEY:Ljava/lang/String;

    .line 38
    const-string v1, "config"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONFIG_KEY:Ljava/lang/String;

    .line 40
    const-string v1, "error"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 41
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->NUM_OF_ADAPTERS_KEY:Ljava/lang/String;

    .line 42
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTERS_LOAD_TIMEOUT:Ljava/lang/String;

    .line 43
    const-string v1, "adapterAlgorithm"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 45
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 47
    const/16 v1, 0x3c

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    .line 126
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    .line 128
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v1, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 130
    iget-object v1, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRewardedVideoAdapters()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    .line 132
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "providers"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDERS_KEY:Ljava/lang/String;

    .line 37
    const-string v1, "provider"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_NAME_KEY:Ljava/lang/String;

    .line 38
    const-string v1, "config"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONFIG_KEY:Ljava/lang/String;

    .line 40
    const-string v1, "error"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 41
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->NUM_OF_ADAPTERS_KEY:Ljava/lang/String;

    .line 42
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTERS_LOAD_TIMEOUT:Ljava/lang/String;

    .line 43
    const-string v1, "adapterAlgorithm"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 45
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 47
    const/16 v1, 0x3c

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    .line 73
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    .line 78
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurationMap:Ljava/util/Map;

    .line 81
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurationMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->initializeProvidersAndConfigurationsMap(Lorg/json/JSONObject;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 83
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    .end local p1    # "appKey":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, ""

    .end local p2    # "userId":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parsePlacementsSection(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    .line 95
    :goto_1
    return-void

    .line 76
    .restart local p1    # "appKey":Ljava/lang/String;
    .restart local p2    # "userId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local p1    # "appKey":Ljava/lang/String;
    .end local p2    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_1
.end method

.method private defaultInit()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    .line 148
    return-void
.end method

.method private getEventsSettingsSection()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v0

    .line 459
    .local v0, "settings":Lorg/json/JSONObject;
    const-string v1, "events"

    invoke-direct {p0, v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method private getIntFromEventsSectionOrNegative(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v2, -0x1

    .line 465
    .local v2, "result":I
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 466
    .local v1, "eventsSection":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 474
    :cond_0
    :goto_0
    return v2

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getJSONArrayWithSupersonicAdapter()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 309
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 311
    .local v4, "result":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 313
    .local v3, "providers":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 317
    .local v1, "p":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 318
    const-string v5, "provider"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "providerName":Ljava/lang/String;
    const-string v5, "SupersonicAds"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "i":I
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "providerName":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 324
    .restart local v0    # "i":I
    :catch_0
    move-exception v5

    .line 314
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getLoggerLogLevel(Ljava/lang/String;)I
    .locals 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, -0x1

    .line 206
    .local v1, "result":I
    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getLoggersSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    .local v0, "loggersSettings":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    .end local v0    # "loggersSettings":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v1

    .line 213
    .restart local v0    # "loggersSettings":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getLoggersSettings()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 366
    .local v1, "settingsSection":Lorg/json/JSONObject;
    const-string v2, "loggers"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 368
    .local v0, "loggers":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "loggers":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .restart local v0    # "loggers":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method private getProviderSettings(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 415
    .local v2, "providers":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 416
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 418
    .local v1, "providerSettigns":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 419
    const-string v3, "provider"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    .end local v1    # "providerSettigns":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 415
    .restart local v1    # "providerSettigns":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "providerSettigns":Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    :cond_0
    if-nez v0, :cond_1

    .line 341
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "result":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .restart local v0    # "result":Lorg/json/JSONObject;
    :cond_1
    return-object v0
.end method

.method private getSettingsSection()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    const-string v1, "settings"

    invoke-direct {p0, v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getSmartLoadAmountFromResponse()I
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, "result":I
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 387
    .local v1, "settings":Lorg/json/JSONObject;
    const-string v2, "maxNumOfAdaptersToLoadOnStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 389
    return v0
.end method

.method private getSmartLoadTimeoutFromResponse()I
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "result":I
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 406
    .local v1, "settings":Lorg/json/JSONObject;
    const-string v2, "adapterTimeOutInSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 408
    return v0
.end method

.method private initializeProvidersAndConfigurationsMap(Lorg/json/JSONObject;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 6
    .param p1, "settings"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local p3, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    const-string v5, "providers"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 101
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 102
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 103
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    .local v1, "currentAdapter":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v5, "config"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    .local v2, "currentAdapterConfig":Lorg/json/JSONObject;
    const-string v5, "provider"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "currentAdapterName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v2    # "currentAdapterConfig":Lorg/json/JSONObject;
    .end local v3    # "currentAdapterName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "currentAdapter":Lorg/json/JSONObject;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private parsePlacementsSection(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    .locals 8
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 526
    new-instance v0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;-><init>()V

    .line 529
    .local v0, "holder":Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    :try_start_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "placements"

    invoke-direct {p0, v6, v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 530
    .local v4, "placementSection":Lorg/json/JSONObject;
    const-string v6, "rewardedVideo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 532
    .local v5, "rvPlacements":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 534
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 535
    .local v3, "placementJson":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseSinglePlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v2

    .line 537
    .local v2, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {v0, v2}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->addRewardedVideoPlacement(Lcom/supersonic/mediationsdk/model/Placement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "i":I
    .end local v2    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v3    # "placementJson":Lorg/json/JSONObject;
    .end local v4    # "placementSection":Lorg/json/JSONObject;
    .end local v5    # "rvPlacements":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 546
    :cond_1
    return-object v0
.end method

.method private parseSinglePlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 8
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 553
    .local v2, "result":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz p1, :cond_0

    .line 554
    :try_start_0
    const-string v6, "placementId"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 555
    .local v0, "id":I
    const-string v6, "placementName"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "placementName":Ljava/lang/String;
    const-string v6, "virtualItemName"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "rewardName":Ljava/lang/String;
    const-string v6, "virtualItemCount"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 559
    .local v4, "rewardAmount":I
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-lez v4, :cond_0

    .line 561
    new-instance v3, Lcom/supersonic/mediationsdk/model/Placement;

    invoke-direct {v3, v0, v1, v5, v4}, Lcom/supersonic/mediationsdk/model/Placement;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Lcom/supersonic/mediationsdk/model/Placement;
    .local v3, "result":Lcom/supersonic/mediationsdk/model/Placement;
    move-object v2, v3

    .line 567
    .end local v0    # "id":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "result":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v4    # "rewardAmount":I
    .end local v5    # "rewardName":Ljava/lang/String;
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_0
    :goto_0
    return-object v2

    .line 563
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public decreaseMaxRewardedVideoAdapters()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    if-lez v0, :cond_0

    .line 280
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    .line 282
    :cond_0
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    return v0
.end method

.method public getAdapterAlgorithm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 355
    .local v1, "settings":Lorg/json/JSONObject;
    const-string v2, "adapterAlgorithm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const-string v0, "KTO"

    .line 360
    :cond_0
    return-object v0
.end method

.method public getAdaptersLoadPosition()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    return v0
.end method

.method public getAdaptersSmartLoadAmount()I
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSmartLoadAmountFromResponse()I

    move-result v0

    .line 377
    .local v0, "amount":I
    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x2

    .line 380
    :cond_0
    return v0
.end method

.method public getAdaptersSmartLoadTimeout()I
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSmartLoadTimeoutFromResponse()I

    move-result v0

    .line 395
    .local v0, "timeout":I
    if-nez v0, :cond_0

    .line 396
    const/16 v0, 0x3c

    .line 398
    :cond_0
    return v0
.end method

.method public getConfigurationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getConsoleLoggerLevel()I
    .locals 1

    .prologue
    .line 244
    const-string v0, "console"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getLoggerLogLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEventsBackupThreshold()I
    .locals 1

    .prologue
    .line 486
    const-string v0, "backupThreshold"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntFromEventsSectionOrNegative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEventsUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsSettingsSection()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "serverEventsURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISProvidersArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getJSONArrayWithSupersonicAdapter()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumberOfEvents()I
    .locals 1

    .prologue
    .line 482
    const-string v0, "maxNumberOfEvents"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntFromEventsSectionOrNegative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxRewardedVideoAdapters()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRewardedVideoAdapters:I

    return v0
.end method

.method public getNextProvider()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 434
    :try_start_0
    iget v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    .line 435
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    if-le v1, v3, :cond_0

    .line 436
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 437
    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(mLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 441
    goto :goto_0
.end method

.method public getOWProvidersArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getJSONArrayWithSupersonicAdapter()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementHolder()Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    return-object v0
.end method

.method public getPublisherLoggerLevel()I
    .locals 1

    .prologue
    .line 235
    const-string v0, "publisher"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getLoggerLogLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRVProvidersArray()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "rvProviders":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    const-string v2, "providers"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 264
    :cond_0
    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "rvProviders":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .restart local v0    # "rvProviders":Lorg/json/JSONArray;
    :cond_1
    return-object v0
.end method

.method public getReponseError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    .line 192
    :cond_0
    const-string v0, ""

    .line 193
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_1
    if-nez v0, :cond_2

    .line 197
    const-string v0, ""

    .line 199
    :cond_2
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    goto :goto_0
.end method

.method public getServerLoggerLevel()I
    .locals 1

    .prologue
    .line 227
    const-string v0, "server"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getLoggerLogLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasMoreProvidersToLoad()Z
    .locals 2

    .prologue
    .line 446
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mLoadPosition:I

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviders:Ljava/util/ArrayList;

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

.method public isEventsEnabled()Z
    .locals 5

    .prologue
    .line 490
    const-string v2, "sendEventsToggle"

    .line 491
    .local v2, "eventsToggleKey":Ljava/lang/String;
    const/4 v3, 0x1

    .line 494
    .local v3, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsSettingsSection()Lorg/json/JSONObject;

    move-result-object v1

    .line 495
    .local v1, "eventsSettings":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 502
    .end local v1    # "eventsSettings":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isUltraEventsEnabled()Z
    .locals 4

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, "result":Z
    const-string v2, "sendUltraEvents"

    .line 514
    .local v2, "ultraEventsToggleKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getEventsSettingsSection()Lorg/json/JSONObject;

    move-result-object v0

    .line 515
    .local v0, "eventsSettings":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 518
    :cond_0
    return v1
.end method

.method public isValidResponse()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, "valid":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move v0, v1

    .line 176
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 178
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 179
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVProvidersArray()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 181
    :goto_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 183
    :goto_4
    return v0

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v0, v2

    .line 176
    goto :goto_1

    :cond_2
    move v0, v2

    .line 178
    goto :goto_2

    :cond_3
    move v0, v2

    .line 179
    goto :goto_3

    :cond_4
    move v0, v2

    .line 181
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v1, "resultObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "appKey"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "userId"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "settings"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
